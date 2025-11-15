# 🧪 Testing Your Shopify Theme Locally

## Three Ways to Test Your Theme

### Method 1: Shopify CLI - Local Development (RECOMMENDED) ⭐

This lets you develop locally with hot-reload and see changes instantly!

#### Step 1: Install Shopify CLI

```bash
# Install via Homebrew (macOS)
brew tap shopify/shopify
brew install shopify-cli

# Or via npm
npm install -g @shopify/cli @shopify/theme
```

#### Step 2: Navigate to Your Theme

```bash
cd "/Users/antoine/Desktop/Company/Active/TPF/Shopify theme V2/ShopifyV2"
```

#### Step 3: Login to Shopify

```bash
shopify auth login
```

This will open your browser to authenticate.

#### Step 4: Connect to a Store

You have two options:

**Option A: Use Your Existing Store** (if you have one)
```bash
shopify theme dev --store your-store-name.myshopify.com
```

**Option B: Create a FREE Development Store** (recommended for testing)
1. Go to: https://partners.shopify.com
2. Create a free Partner account
3. Click "Stores" → "Add store" → "Development store"
4. Fill in details and create

Then connect:
```bash
shopify theme dev --store your-dev-store.myshopify.com
```

#### Step 5: Start Local Development Server

```bash
shopify theme dev
```

This will:
- ✅ Upload your theme to Shopify (as development theme)
- ✅ Start a local server (usually http://127.0.0.1:9292)
- ✅ Watch for file changes and auto-reload
- ✅ Use real Shopify data (products, cart, checkout)

**You can now:**
- Edit files locally
- See changes instantly in your browser
- Test with real Shopify functionality
- Debug with browser dev tools

---

### Method 2: Upload as Development Theme (SAFE) 🛡️

This uploads to your store without affecting your live theme.

#### Step 1: Create a ZIP file

```bash
cd "/Users/antoine/Desktop/Company/Active/TPF/Shopify theme V2"
zip -r ShopifyV2.zip ShopifyV2/ -x "*.git*" -x "*.DS_Store" -x "*node_modules*"
```

#### Step 2: Upload to Shopify

1. Go to: **Shopify Admin → Online Store → Themes**
2. Scroll down to "Theme library"
3. Click **"Add theme"** → **"Upload ZIP file"**
4. Select your `ShopifyV2.zip`
5. Wait for upload to complete

#### Step 3: Preview Your Theme

1. Once uploaded, you'll see your theme in the Theme library
2. Click the **"Customize"** button
3. This opens the theme editor in preview mode
4. You can:
   - ✅ See how it looks
   - ✅ Test all functionality
   - ✅ Add sample products
   - ✅ Configure settings
   - ✅ Test on different devices (use the preview device icons)

**NOT published yet** - only you can see it!

#### Step 4: Publish When Ready

When you're happy with it:
- Click **"Publish"** to make it live

---

### Method 3: GitHub Integration (PRO) 🔗

Connect your GitHub repo directly to Shopify.

#### Step 1: Connect GitHub

1. Go to: **Shopify Admin → Online Store → Themes**
2. Click **"Add theme"** → **"Connect from GitHub"**
3. Authorize GitHub access
4. Select repository: `bixfile/ShopifyV2`
5. Select branch: `main`

#### Step 2: Auto-Deploy

Now every time you push to GitHub, Shopify can auto-update your theme!

```bash
# Make changes locally
git add .
git commit -m "Updated header section"
git push

# Shopify automatically pulls the changes
```

---

## 🎯 Recommended Workflow

### For First-Time Setup:

1. **Use Shopify CLI** for initial development
   ```bash
   shopify theme dev
   ```

2. **Add Sample Data** to your development store:
   - Add some products
   - Create collections
   - Set up navigation menus
   - Add pages

3. **Test Everything**:
   - Homepage
   - Product pages
   - Collections
   - Cart functionality
   - Search
   - Mobile view

4. **When Ready**: Upload to production store

### For Ongoing Development:

1. Work locally with `shopify theme dev`
2. Make changes → see them instantly
3. Commit to Git when satisfied
4. Push to production when ready

---

## 🔧 Quick Setup Script

Save this as `setup-local.sh` in your theme folder:

```bash
#!/bin/bash

echo "🚀 Setting up Shopify Theme Local Development"
echo ""

# Check if Shopify CLI is installed
if ! command -v shopify &> /dev/null
then
    echo "❌ Shopify CLI not found. Installing..."
    brew tap shopify/shopify
    brew install shopify-cli
else
    echo "✅ Shopify CLI already installed"
fi

echo ""
echo "📁 Navigating to theme directory..."
cd "/Users/antoine/Desktop/Company/Active/TPF/Shopify theme V2/ShopifyV2"

echo ""
echo "🔐 Logging in to Shopify..."
shopify auth login

echo ""
echo "🎨 Starting development server..."
echo "   Your browser will open automatically"
echo "   Press Ctrl+C to stop the server"
echo ""

shopify theme dev
```

Make it executable:
```bash
chmod +x setup-local.sh
./setup-local.sh
```

---

## 📱 Testing Checklist

Once your theme is running (locally or on Shopify), test:

### Functionality Tests
- [ ] Homepage loads correctly
- [ ] Navigation menus work
- [ ] Product pages display properly
- [ ] Product variants can be selected
- [ ] Add to cart works
- [ ] Cart updates correctly
- [ ] Search functionality works
- [ ] Footer links work
- [ ] Social media icons link correctly

### Visual Tests
- [ ] Images load (check browser console for 404s)
- [ ] CSS styles apply correctly
- [ ] Fonts load properly
- [ ] Colors match your brand
- [ ] Spacing looks good
- [ ] Hover effects work

### Responsive Tests
- [ ] Desktop view (1920px)
- [ ] Laptop view (1366px)
- [ ] Tablet view (768px)
- [ ] Mobile view (375px)
- [ ] Test on actual devices if possible

### JavaScript Tests
- [ ] No console errors (press F12 → Console tab)
- [ ] Cart drawer opens/closes
- [ ] Product image gallery works
- [ ] Quantity selectors work
- [ ] Mobile menu toggles
- [ ] All interactive elements respond

### Performance Tests
- [ ] Page loads in < 3 seconds
- [ ] Images are optimized
- [ ] No broken links
- [ ] All assets load from CDN

---

## 🐛 Common Issues & Solutions

### Issue 1: "Shopify CLI not found"
**Solution:**
```bash
# Install via Homebrew
brew tap shopify/shopify
brew install shopify-cli

# Or via npm
npm install -g @shopify/cli @shopify/theme
```

### Issue 2: "Assets not loading / 404 errors"
**Check:**
1. Are files in `/assets` folder?
2. Are filenames correct in theme.liquid?
3. Check browser console for specific file errors

**Fix:**
```liquid
<!-- In theme.liquid, ensure correct references -->
{{ 'theme.css' | asset_url | stylesheet_tag }}
{{ 'theme.js' | asset_url | script_tag }}
```

### Issue 3: "Liquid errors in console"
**Common causes:**
- Missing translations in `locales/en.default.json`
- Referencing undefined variables
- Syntax errors in Liquid tags

**Check:**
- Theme editor will show Liquid errors
- Add missing translation keys
- Validate Liquid syntax

### Issue 4: "Styles not applying"
**Check:**
1. CSS files loaded in correct order:
   - vendor.css (first)
   - theme.css (second)
   - base.css (third)

2. CSS specificity issues
3. Browser cache (hard refresh: Cmd+Shift+R)

### Issue 5: "JavaScript not working"
**Check:**
1. Console errors (F12 → Console)
2. JS files loaded in correct order
3. `defer` attribute on script tags
4. jQuery if required by vendor.js

### Issue 6: "Fonts not loading"
**Check:**
1. Font files in `/assets`
2. WOFF/WOFF2 files present
3. Font-face declarations in CSS
4. Network tab shows font requests

---

## 💡 Pro Tips

### 1. Use Browser DevTools
- **F12** or **Cmd+Option+I** to open
- **Console**: See errors and warnings
- **Network**: See what files are loading
- **Elements**: Inspect HTML and CSS
- **Application**: Check storage and cache

### 2. Test with Real Content
Your development store should have:
- At least 10-15 products
- Multiple collections
- Various product types (simple, variants)
- Different image sizes
- Long and short descriptions

### 3. Use Shopify's Preview Bar
When using theme editor:
- Toggle between Desktop/Mobile/Tablet
- Use "Preview" to see without editor UI
- Share preview link with others

### 4. Check Performance
Use Shopify's built-in theme check:
```bash
shopify theme check
```

Or use Lighthouse in Chrome DevTools:
- F12 → Lighthouse tab → Generate report

### 5. Enable Developer Mode
In your store settings:
- **Settings → Plan** → Enable development store features
- This gives you more options for testing

---

## 🎓 Learning Resources

### Shopify CLI Documentation
- https://shopify.dev/docs/themes/tools/cli

### Theme Development
- https://shopify.dev/docs/themes

### Liquid Reference
- https://shopify.dev/docs/api/liquid

### Theme Check (Linting)
- https://shopify.dev/docs/themes/tools/theme-check

---

## 🚀 Quick Start Command

**The fastest way to get started:**

```bash
# Navigate to theme
cd "/Users/antoine/Desktop/Company/Active/TPF/Shopify theme V2/ShopifyV2"

# Start development server
shopify theme dev
```

That's it! Your theme will be live at a local URL (usually http://127.0.0.1:9292) connected to a real Shopify store.

---

## ✅ What Happens During `shopify theme dev`

1. **Uploads your theme** to Shopify (doesn't publish)
2. **Starts local proxy server** at http://127.0.0.1:9292
3. **Watches for file changes** and syncs automatically
4. **Hot reloads** your browser when you save files
5. **Uses real Shopify data** (products, cart, checkout)
6. **Allows theme editor** access while running

### The Perfect Development Experience:
- Edit files in your code editor
- Save file → Browser auto-refreshes
- See changes instantly
- Test with real Shopify functionality
- No upload/download cycle needed

---

## 🎯 Your Next Steps

### 1. Install Shopify CLI (2 minutes)
```bash
brew tap shopify/shopify
brew install shopify-cli
```

### 2. Create Development Store (5 minutes)
- Go to https://partners.shopify.com
- Sign up (free)
- Create development store

### 3. Start Local Server (1 minute)
```bash
cd "/Users/antoine/Desktop/Company/Active/TPF/Shopify theme V2/ShopifyV2"
shopify theme dev --store your-dev-store.myshopify.com
```

### 4. Add Sample Products (10 minutes)
- Add 5-10 products to test with
- Create a collection
- Set up navigation

### 5. Test Everything (30 minutes)
- Go through the checklist above
- Test on mobile
- Check all functionality

### 6. Deploy When Ready!
```bash
shopify theme push
```

---

**You're all set! Your theme is ready to test locally.** 🎉

Any issues? Check the troubleshooting section above or the Shopify documentation.

