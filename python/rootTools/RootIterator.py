import ROOT as rt

class RootIterator(object):
    """A wrapper around the ROOT iterator so that it can be used in python"""
    def __init__(self, o):
        if hasattr(o,'Class') and o.Class().InheritsFrom('TIterator'):
            self.iter = o
        if hasattr(o, "__iter__"):
            self.iter = iter(o)
        elif hasattr(o, "begin") and hasattr(o, "end"):
            # Fallback for collections that expose begin/end but not __iter__
            self.iter = iter(o)
        elif hasattr(o,'MakeIterator'):
                self.iter = o.MakeIterator()
        elif hasattr(o,'componentIterator'):
            self.iter = o.componentIterator()
        # elif hasattr(o,'createIterator'):
        #     self.iter = o.createIterator()
        else:
            self.iter = None
    def __iter__(self):
        return self
    def __next__(self):
        if self.iter is None:
            raise StopIteration()
        try:
            n = next(self.iter)   # Python iterator protocol
        except TypeError:
            # If it's a TIterator from old API
            n = self.iter.Next()
        if not n:
            raise StopIteration()
        return n
        # n = self.iter.Next()
        # if n is None or not n:
        #     raise StopIteration()

        # return n
