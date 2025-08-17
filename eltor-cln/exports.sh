######################################
### Umbrel setting
######################################
export APP_ELTOR_DATA_DIR="${EXPORTS_APP_DIR}"
export APP_ELTOR_HOST="eltor-cln_web_1"

######################################
### App env vars
######################################
export BACKEND_PORT="${BACKEND_PORT:-5171}"
export BIND_ADDRESS="${BIND_ADDRESS:-0.0.0.0}"
export BACKEND_URL="${BACKEND_URL:-http://localhost:$BACKEND_PORT}"
export APP_ELTOR_USER_DIR="/home/user"
export APP_ELTOR_ELTORRC_PATH="/home/user/code/eltor-app/backend/bin/data"

######################################
### LN env vars
######################################
export APP_ELTOR_USE_PHOENIXD_EMBEDDED=false
export APP_ELTOR_LN_IMPLEMENTATION=cln
export APP_ELTOR_LN_BOLT12="lno1234"

######################################
### Client Eltor Environment Variables
######################################
export APP_ELTOR_TOR_ADDITIONAL_DIR_AUTHORITY=""
# TODO user should be able to set this
export APP_ELTOR_TOR_NICKNAME="elfdbe78324"
export APP_ELTOR_TOR_DATA_DIRECTORY="/home/user/data/tor"
export APP_ELTOR_TOR_SOCKS_PORT="0.0.0.0:18068"
export APP_ELTOR_TOR_CONTROL_PORT="9992"
# password1234_
export APP_ELTOR_TOR_HASHED_CONTROL_PASSWORD="16:281EC5644A4F548A60D50A0DD4DF835FFD50EDED062FD270D7269943DA"
export APP_ELTOR_TOR_ADDRESS="127.0.0.1"
export APP_ELTOR_TOR_PAYMENT_CIRCUIT_MAX_FEE="11000"

######################################
### Relay Eltor Environment Variables
######################################
export APP_ELTOR_TOR_RELAY_ADDITIONAL_DIR_AUTHORITY="" 
export APP_ELTOR_TOR_RELAY_DATA_DIRECTORY="/home/user/data/tor-relay"
# export APP_ELTOR_TOR_RELAY_ADDRESS="X.X.X.X" # public IP or domain of the relay
export APP_ELTOR_TOR_RELAY_CONTACT="eltorcontact"
# TODO user should be able to set this
export APP_ELTOR_TOR_RELAY_NICKNAME="elr123r5"
export APP_ELTOR_TOR_RELAY_OR_PORT="9997"
export APP_ELTOR_TOR_RELAY_CONTROL_PORT="7781"
export APP_ELTOR_TOR_RELAY_SOCKS_PORT="0.0.0.0:18067"
# password1234_
export APP_ELTOR_TOR_RELAY_HASHED_CONTROL_PASSWORD="16:281EC5644A4F548A60D50A0DD4DF835FFD50EDED062FD270D7269943DA"
export APP_ELTOR_TOR_RELAY_SANDBOX="0"
export APP_ELTOR_TOR_EXIT_RELAY="1"
export APP_ELTOR_TOR_RELAY_PAYMENT_BOLT12_OFFER="lno1234"
export APP_ELTOR_TOR_RELAY_PAYMENT_RATE_MSATS="1000"
export APP_ELTOR_TOR_RELAY_PAYMENT_INTERVAL="60"
export APP_ELTOR_TOR_RELAY_PAYMENT_INTERVAL_ROUNDS="10"
export APP_ELTOR_TOR_RELAY_PAYMENT_CIRCUIT_MAX_FEE="11000"
