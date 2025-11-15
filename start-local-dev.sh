#!/bin/bash

# Shopify Theme Local Development Starter
# This script helps you set up and run your theme locally

echo "🎨 Hyper Ceramide Theme - Local Development Setup"
echo "=================================================="
echo ""

# Check if Shopify CLI is installed
if ! command -v shopify &> /dev/null
then
    echo "❌ Shopify CLI not found."
    echo ""
    echo "📦 Installing Shopify CLI via Homebrew..."
    echo ""
    
    # Check if Homebrew is installed
    if ! command -v brew &> /dev/null
    then
        echo "❌ Homebrew not found. Installing Homebrew first..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    
    # Install Shopify CLI
    brew tap shopify/shopify
    brew install shopify-cli
    
    echo ""
    echo "✅ Shopify CLI installed successfully!"
else
    echo "✅ Shopify CLI is already installed"
    shopify version
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📝 Before we start, you need a Shopify store:"
echo ""
echo "   Option 1: Use your existing store"
echo "   Option 2: Create a FREE development store"
echo ""
echo "   To create a development store:"
echo "   1. Go to: https://partners.shopify.com"
echo "   2. Sign up (free)"
echo "   3. Stores → Add store → Development store"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Ask for store name
read -p "🏪 Enter your store name (e.g., my-store.myshopify.com): " STORE_NAME

if [ -z "$STORE_NAME" ]; then
    echo "❌ Store name is required. Exiting."
    exit 1
fi

echo ""
echo "🔐 Logging in to Shopify..."
echo "   (Your browser will open for authentication)"
echo ""

shopify auth login

echo ""
echo "🚀 Starting development server..."
echo ""
echo "   📍 Your theme will be available at: http://127.0.0.1:9292"
echo "   🔄 File changes will auto-reload"
echo "   🛑 Press Ctrl+C to stop the server"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Start the development server
shopify theme dev --store "$STORE_NAME"

