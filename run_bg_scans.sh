#!/usr/bin/env bash
set -euo pipefail

# Run from DijetRootTreeAnalyzer after cmsenv.

BASE="output/run3/fitdiag_datacards"
OUT="$(pwd)/tmp_output"
PLOTTER="${CMSSW_BASE:?Run cmsenv first}/src/HiggsAnalysis/CombinedLimit/scripts/plot1DScan.py"

mkdir -p "$OUT"

run_scan()
{
    local MASS="$1"
    local FUNCTION="$2"
    local RSTART="$3"
    local RMIN="$4"
    local RMAX="$5"
    local PREFIX LABEL CARD NAME SCAN

    case "$FUNCTION" in
        dijet)
            PREFIX="dijet"
            LABEL="Dijet_3p"
            ;;
        atlas)
            PREFIX="dijet"
            LABEL="Atlas_4p"
            ;;
        mod)
            PREFIX="dijet"
            LABEL="ModDijet_3p"
            ;;
        *)
            echo "Unknown function: $FUNCTION" >&2
            return 1
            ;;
    esac

    CARD="${BASE}/${FUNCTION}/workspace/${PREFIX}_combine_bg_${MASS}_lumi-220.795_PFDijetrun3.root"
    NAME="${LABEL}_bg_${MASS}"
    SCAN="higgsCombine_${NAME}_scan.MultiDimFit.mH120.root"

    if [[ ! -f "$CARD" ]]; then
        echo "Missing workspace: $CARD" >&2
        return 1
    fi

    # Absolute path allows Combine to run inside tmp_output.
    CARD="$(realpath "$CARD")"

    echo "Running ${NAME}: r=${RSTART}, range=[${RMIN}, ${RMAX}]"

    (
        cd "$OUT"

        combine -M MultiDimFit "$CARD" \
            --algo grid --points 201 \
            --setParameters "r=${RSTART}" \
            --rMin "$RMIN" \
            --rMax "$RMAX" \
            --cminDefaultMinimizerStrategy 2 \
            --saveNLL \
            -n "_${NAME}_scan" \
            2>&1 | tee "scan_${NAME}.log"

        if [[ ! -s "$SCAN" ]]; then
            echo "Missing scan output: $SCAN" >&2
            exit 1
        fi

        # Continue to the next scan if interval plotting fails.
        if ! python3 "$PLOTTER" "$SCAN" \
            --POI r \
            -o "scan_${NAME}" \
            2>&1 | tee "plot_${NAME}.log"
        then
            echo "Plot failed for ${NAME}; inspect its scan and log." >&2
        fi
    )
}

# #         MASS FUNCTION START       MIN       MAX
# run_scan  2000 dijet   0.00406372  -0.19765   0.20578
# run_scan  2000 atlas   0           -0.14396   0.14396
# run_scan  2000 mod     0           -0.05585   0.05585

# run_scan  3000 dijet   0           -0.98701   0.98701
# run_scan  3000 atlas   0.192129    -1.08253   1.46679
# run_scan  3000 mod     0.415154    -0.65949   1.48979

# run_scan  4000 dijet   0           -2.57610   2.57610
# run_scan  4000 atlas   0           -3.66462   3.66462
# run_scan  4000 mod     0           -2.41163   2.41163

# Exploratory bounds: supplied fits hit boundaries or had invalid errors.
# run_scan  5000 dijet   0.5          0         10
# run_scan  5000 atlas   0            0         10
# run_scan  5000 mod     0            0         10

run_scan  6000 dijet   20           0         100
# run_scan  6000 atlas   20           0         100
# run_scan  6000 mod     10.1668      0         100

# run_scan  7000 dijet   20           0         100
# run_scan  7000 atlas   20           0         100
run_scan  7000 mod     20           0         100
