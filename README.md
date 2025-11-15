# Hyper Ceramide - Shopify Theme

A custom Shopify theme recreated from scratch based on the Hyper Ceramide storefront.

## Theme Structure

This theme follows the standard Shopify 2.0 architecture:

### Directory Structure

```
.
├── assets/          # CSS, JS, images, fonts, and media files
├── blocks/          # App blocks
├── config/          # Theme settings and configuration
├── layout/          # Base theme layout (theme.liquid)
├── locales/         # Translation files
├── sections/        # Reusable sections with blocks
├── snippets/        # Reusable code snippets
└── templates/       # Page templates (JSON)
    ├── customers/   # Customer account pages
    └── metaobject/  # Metaobject templates
```

## Features

### Core Features
- **Responsive Design**: Mobile-first approach with full responsive support
- **Modern CSS**: Using CSS custom properties for theming
- **Ajax Cart**: Dynamic cart updates without page reloads
- **Product Variants**: Full variant selection support
- **Theme Editor**: Extensive customization through Shopify's theme editor
- **Section Groups**: Header and footer section groups for flexibility

### Downloaded Assets
All original assets from the Hyper Ceramide theme have been imported:
- ✅ JavaScript files (25+ files including cart.js, header.js, theme.js)
- ✅ CSS files (24+ component and section stylesheets)
- ✅ Images (900+ product images and assets)
- ✅ Fonts (Figtree and Fraunces font families)
- ✅ Media files (7 product videos)

## Sections Available

### Core Sections
- **Header**: Main navigation with logo, menu, search, account, and cart
- **Footer**: Footer with blocks for menus, text, and newsletter signup
- **Image Banner**: Hero section with image and call-to-action
- **Featured Collection**: Display product collections in a grid
- **Main Product**: Product detail page with variants and add to cart

### Section Features
- All sections support the theme editor
- Blocks can be added, removed, and reordered
- Settings for colors, typography, and layout
- Mobile and desktop responsive

## Installation

### Method 1: Upload via Shopify Admin
1. Zip the entire theme directory
2. Go to Shopify Admin > Online Store > Themes
3. Click "Upload theme" and select your zip file

### Method 2: Use Shopify CLI
```bash
cd "/Users/antoine/Desktop/Company/Active/TPF/Shopify theme V2/ShopifyV2"
shopify theme push
```

### Method 3: GitHub Integration
1. Initialize git repository: `git init`
2. Push to your GitHub repository
3. Connect via Shopify Admin > Online Store > Themes

## Customization

### Theme Settings
Access through: **Shopify Admin > Online Store > Themes > Customize**

Available settings:
- **Colors**: Text, background, and accent colors
- **Typography**: Header and body fonts
- **Layout**: Page width and spacing
- **Cart**: Drawer or page cart type
- **Social Media**: Links to social profiles

### Adding Custom Sections
1. Create a new `.liquid` file in `/sections`
2. Add schema for settings
3. Include presets for theme editor support

### Modifying Styles
- Main styles: `assets/theme.css`
- Custom styles: `assets/base.css`
- Component styles: Individual CSS files in assets

## JavaScript Functionality

### Core Scripts
- **global.js**: Utility functions, cart updates, variant selection
- **theme.js**: Main theme JavaScript from downloaded assets
- **vendor.js**: Third-party libraries
- **cart.js**: Cart functionality
- **header.js**: Header interactions
- **search.js**: Search functionality

### Custom Elements
- `<quantity-input>`: Product quantity selector
- `<variant-selects>`: Variant picker with availability

## Development

### Prerequisites
- Shopify CLI (optional)
- Node.js (for potential build tools)
- Git for version control

### Best Practices
1. Test all changes in a development theme
2. Use the theme editor preview
3. Check mobile responsiveness
4. Test cart functionality thoroughly
5. Verify variant selection works correctly

## Assets

### CSS Files (24 files)
- theme.css, vendor.css, base.css
- Component styles for cards, testimonials, timers, etc.
- Section styles for collections, products, banners, etc.

### JavaScript Files (25 files)
- Core: theme.js, vendor.js, global.js
- Features: cart.js, search.js, header.js, footer.js
- Components: Quick view, product bundles, countdown timer
- Third-party: Shopify performance kit

### Images
- 900+ product images
- Brand assets and icons
- Country flags
- Author/testimonial images

### Fonts
- Figtree (weights: 500, 600, 700 + italics)
- Fraunces (weight: 400 + italic)

## Support

For questions or issues:
- Check Shopify documentation: https://shopify.dev/docs/storefronts/themes
- Review Liquid reference: https://shopify.dev/docs/api/liquid
- GitHub repository: https://github.com/bixfile/ShopifyV2

## License

Custom theme based on Hyper Ceramide storefront.

## Version History

- **v1.0.0** (Current): Initial theme structure with all downloaded assets
  - Complete directory structure
  - Core sections (header, footer, product, collection)
  - All original CSS, JS, images, fonts copied
  - Theme settings schema
  - Responsive design
  - Ajax cart support

## Next Steps

To fully recreate the Hyper Ceramide theme, you may want to:

1. **Analyze the original sections**: Review how sections are structured on the live site
2. **Create missing sections**: Build out sections for:
   - Multicolumn cards
   - Testimonials
   - Brand logos
   - Featured blog
   - Product bundles
   - Countdown timer
   - And more based on CSS/JS files present

3. **Configure section groups**: Set up proper header and footer groups
4. **Add more templates**: Create templates for:
   - Blog posts
   - Search
   - 404 page
   - Account pages

5. **Implement advanced features**:
   - Product comparison
   - Wishlist/favorites
   - Quick view
   - Subscription popup
   - Shop the feed

6. **Test thoroughly**: Ensure all functionality works as expected

---

**Built with ❤️ for Shopify**

