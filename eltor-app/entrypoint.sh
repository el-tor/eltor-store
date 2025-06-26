#!/bin/bash
set -e

echo "Starting entrypoint script..."

###################################
# Core Lightning Node Configuration
###################################
# Read the rune from RUNE_PATH and update ELTORRC_PATH
if [ -n "$RUNE_PATH" ] && [ -f "$RUNE_PATH" ]; then
    echo "Reading rune from: $RUNE_PATH"
    
    # Parse LIGHTNING_RUNE from the file
    LIGHTNING_RUNE=$(grep "^LIGHTNING_RUNE=" "$RUNE_PATH" | cut -d'"' -f2)
    
    if [ -n "$LIGHTNING_RUNE" ]; then
        echo "Found LIGHTNING_RUNE: ${LIGHTNING_RUNE:0:20}..."
        
        # Ensure the directory exists for ELTORRC_PATH
        mkdir -p "$(dirname "$ELTORRC_PATH")"
        
        # Create the PaymentLightningNodeConfig line
        PAYMENT_CONFIG="PaymentLightningNodeConfig type=cln url=$LN_SERVER_URL password=$LIGHTNING_RUNE default=true"
        
        echo "Updating torrc file at: $ELTORRC_PATH"
        
        # Check if torrc file exists, if not create it
        if [ ! -f "$ELTORRC_PATH" ]; then
            echo "Creating new torrc file"
            echo "# Generated torrc file" > "$ELTORRC_PATH"
        fi
        
        # Check if PaymentLightningNodeConfig already exists in the file
        if grep -q "^PaymentLightningNodeConfig" "$ELTORRC_PATH"; then
            echo "Updating existing PaymentLightningNodeConfig"
            # Replace existing PaymentLightningNodeConfig line
            sed -i "s|^PaymentLightningNodeConfig.*|$PAYMENT_CONFIG|" "$ELTORRC_PATH"
        else
            echo "Adding new PaymentLightningNodeConfig"
            # Add new PaymentLightningNodeConfig line
            echo "$PAYMENT_CONFIG" >> "$ELTORRC_PATH"
        fi
        
        echo "Successfully updated torrc file with Lightning rune"
    else
        echo "Warning: LIGHTNING_RUNE not found in $RUNE_PATH"
    fi
else
    echo "Warning: RUNE_PATH not set or file not found: $RUNE_PATH"
fi

# Execute the original command
exec "$@"