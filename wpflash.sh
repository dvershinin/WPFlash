#!/bin/bash

# Function for setup
setup_wp() {
    echo "Setting up WordPress..."
    # Disable automatic updates in wp-config.php
    wp config set AUTOMATIC_UPDATER_DISABLED true --raw
    # Install and activate the hide-updates plugin
    wp plugin install hide-updates --activate
    # Add code to hide updates from the dashboard (optional)
    echo "function site_hide_updates_allowed_users() { return []; }
add_filter( 'hide_updates_allowed_users', 'site_hide_updates_allowed_users' );" >> wp-content/themes/$(wp theme list --status=active --field=name)/functions.php
    echo "Setup complete."
}

# Function for upgrade
upgrade_wp() {
    echo "Starting upgrade..."
    # Update plugins, themes, and core
    wp plugin update --all --quiet
    wp theme update --all --quiet
    wp core update --quiet
    # Optional: Add commands for WooCommerce database update, cache warmup, etc.
    echo "Upgrade complete."
}

# Main script logic
case "$1" in
    setup)
        setup_wp
        ;;
    upgrade)
        upgrade_wp
        ;;
    *)
        echo "Usage: $0 {setup|upgrade}"
        exit 1
        ;;
esac
