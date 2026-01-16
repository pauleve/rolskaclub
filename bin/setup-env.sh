BIN="$(dirname "$0")"
BASE="$(dirname "$BIN")"
export PATH="${BIN}:${PATH}"

source "${BASE}/params.ini"
export SAISON
export NAME
export LOGO_LARGE
export EQUIPE_TERM
export CLUB_CODE
export LIEU_ID

BASEURL="https://rolskanet.fr/sportif/synthese/ajax"

DB="${BASE}/db/${SAISON}"
CUR="${BASE}/club/${SAISON}"
OUT="${BASE}/pub/${SAISON}"

rolscurl() {
    curl -s --show-error -H "X-Requested-With: XMLHttpRequest" "${@}"
}
