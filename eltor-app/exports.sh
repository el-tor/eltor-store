export APP_ELTOR_PORT="5173"
export APP_HOST="eltor-app_web_1"
export PHOENIXD_PASSWORD="test"

##################################
### Client Environment Variables
##################################
export TOR_ADDITIONAL_DIR_AUTHORITY=""
# TODO user should be able to set this
export TOR_NICKNAME="elfdbe78324"
export TOR_DATA_DIRECTORY="/home/user/data/tor"
export TOR_SOCKS_PORT="0.0.0.0:18058"
export TOR_CONTROL_PORT="9992"
# password1234_
export TOR_HASHED_CONTROL_PASSWORD="16:281EC5644A4F548A60D50A0DD4DF835FFD50EDED062FD270D7269943DA"
export TOR_ADDRESS="127.0.0.1"
export TOR_PAYMENT_CIRCUIT_MAX_FEE="11000"
# this is injected in via the start.sh script
export TOR_CLIENT_PAYMENT_LIGHTNING_NODE_CONFIG="type=cln url=$LN_SERVER_URL password=$LIGHTNING_RUNE default=true"

#################################
### Relay Environment Variables
#################################
export TOR_RELAY_ADDITIONAL_DIR_AUTHORITY="" 
export TOR_RELAY_DATA_DIRECTORY="/home/user/data/tor-relay"
# export TOR_RELAY_ADDRESS="X.X.X.X" # public IP or domain of the relay
export TOR_RELAY_CONTACT="eltorcontact"
# TODO user should be able to set this
export TOR_RELAY_NICKNAME="elr123r5"
export TOR_RELAY_OR_PORT="9996"
export TOR_RELAY_CONTROL_PORT="7781"
export TOR_RELAY_SOCKS_PORT="18057"
# password1234_
export TOR_RELAY_HASHED_CONTROL_PASSWORD="16:281EC5644A4F548A60D50A0DD4DF835FFD50EDED062FD270D7269943DA"
export TOR_RELAY_SANDBOX="0"
export TOR_EXIT_RELAY="1"
export TOR_RELAY_PAYMENT_BOLT12_OFFER="lno1234"
export TOR_RELAY_PAYMENT_RATE_MSATS="1000"
export TOR_RELAY_PAYMENT_INTERVAL="60"
export TOR_RELAY_PAYMENT_INTERVAL_ROUNDS="10"
export TOR_RELAY_PAYMENT_CIRCUIT_MAX_FEE="11000"
export TOR_RELAY_PAYMENT_LIGHTNING_NODE_CONFIG="type=cln url=$LN_SERVER_URL password=$LIGHTNING_RUNE default=true"
