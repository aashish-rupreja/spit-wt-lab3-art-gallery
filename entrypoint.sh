#!/bin/bash
set -e

su appuser <<'EOF'

REPO_URL="https://github.com/aashish-rupreja/spit-wt-lab3-art-gallery.git"
TARGET_DIR="/var/www/html"
BRANCH="scrap-user-handling"
DB_FILE="$TARGET_DIR/db/kalakriti_data.db"

# Pull or clone the repo
if [ -d "$TARGET_DIR/.git" ]; then
    echo "Updating existing repo..."
    git -C "$TARGET_DIR" pull origin "$BRANCH"
else
    echo "Cloning repository..."
    rm -rf "$TARGET_DIR"/*
    git clone -b "$BRANCH" "$REPO_URL" "$TARGET_DIR"
fi

# Create SQLite database if it doesn't exist
if [ ! -f "$DB_FILE" ]; then
    echo "Creating SQLite database..."
    mkdir -p "$(dirname "$DB_FILE")"
    sqlite3 "$DB_FILE" < "$TARGET_DIR/Table_Creation.sql" 2>/dev/null || echo "Database created with initial schema."
    sqlite3 "$DB_FILE" < "$TARGET_DIR/Add_Data_DDL.sql" 2>/dev/null || echo "Database populated."
fi

EOF

php-fpm &

nginx -g "daemon off;"
