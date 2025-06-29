#!/bin/bash
set -e

echo "Starting El Tor with Lightning auto-detection..."

# Runtime Lightning detection (this runs INSIDE container)
if [ -f "/home/user/.lightning/.commando-env" ]; then
    echo "✅ Core Lightning detected"
    set -a
    source "/home/user/.lightning/.commando-env"
    set +a
    export LN_IMPLEMENTATION="cln"
    export APP_ELTOR_LN_CONFIG="type=cln url=https://$APP_CORE_LIGHTNING_DAEMON_IP:$CORE_LIGHTNING_REST_PORT rune=$LIGHTNING_RUNE default=true"
    
    
elif [ -f "/home/user/.lnd/tls.cert" ]; then
    echo "✅ LND detected"  
    export LN_IMPLEMENTATION="lnd"
    # Handle LND configuration
    
else
    echo "✅ Using embedded Phoenix"
    #export LN_IMPLEMENTATION="phoenix"
    #export LN_CONFIG="type=phoenix url=http://localhost:9740 default=true"
fi

echo "Lightning implementation: $LN_IMPLEMENTATION"
echo "Lightning config: $LN_CONFIG"

# Start your application with the dynamically configured environment
exec "$@"