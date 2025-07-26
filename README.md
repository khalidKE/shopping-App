# Flutter Shopping App

A comprehensive Flutter shopping application with authentication, product display, cart functionality, and Arabic localization support.

## Features

### 🎨 Aesthetic Welcome Screen
- Custom AppBar with app title
- Two images displayed in a row (local and online)
- Custom Suwannaphum font with bold, colored styling
- Centered layout with adequate spacing
- Sign-up and Sign-in navigation buttons

### 🔐 Authentication System
- **Sign-Up Form** with validation:
  - Full Name (first letter must be uppercase)
  - Email (must contain @)
  - Password (minimum 6 characters)
  - Confirm Password (must match)
- **Sign-In Form** with validation:
  - Email validation
  - Password validation
- Success dialogs with smooth navigation

### 🛒 Shopping Experience
- **Interactive Shopping Home Screen**:
  - AppBar titled "Our Products"
  - Horizontal PageView for featured products
  - Responsive GridView with product cards (2 per row)
  - Add to Cart functionality with SnackBar feedback
  - "Hot Offers" section with ListView.builder

### 🎭 Smooth Animations
- Fade transition between authentication and shopping screens
- Animated page transitions using PageRouteBuilder
- Smooth UI interactions throughout the app

### 🌍 Internationalization
- **Arabic Language Support**:
  - Complete Arabic translations
  - RTL layout support
  - Localized strings using .arb files
  - No hardcoded strings in UI code

## Project Structure

\`\`\`
lib/
├── l10n/                     # Localization files
│   ├── app_en.arb           # English translations
│   └── app_ar.arb           # Arabic translations
├── models/                   # Data models
│   └── product.dart         # Product model
├── screens/                  # App screens
│   ├── welcome_screen.dart  # Welcome/landing screen
│   ├── sign_up_screen.dart  # User registration
│   ├── sign_in_screen.dart  # User login
│   └── shopping_home_screen.dart # Main shopping interface
├── widgets/                  # Reusable widgets
│   ├── product_card.dart    # Product display card
│   └── hot_offer_item.dart  # Hot offer list item
└── main.dart                # App entry point
\`\`\`


## Key Technologies

- **Flutter**: Cross-platform mobile development
- **Dart**: Programming language
- **Material Design**: UI components and theming
- **Flutter Intl**: Internationalization and localization
- **Custom Fonts**: Suwannaphum typography
- **Network Images**: Online image loading
- **Form Validation**: Input validation and error handling

## Features Breakdown

### Authentication Flow
1. Welcome screen with navigation options
2. Form validation with real-time feedback
3. Success dialogs with confirmation
4. Smooth animated transitions to main app

### Shopping Interface
1. Featured products carousel
2. Product grid with add-to-cart functionality
3. Hot offers section with horizontal scrolling
4. Responsive design for different screen sizes

### Localization
- English and Arabic language support
- Proper RTL layout handling
- Culturally appropriate translations
- Dynamic language switching capability

## Code Quality Standards

- ✅ Each widget/class in separate files
- ✅ No unused or duplicated code
- ✅ Clear naming conventions
- ✅ Proper error handling
- ✅ Responsive design implementation
- ✅ Clean and formatted codebase

## Screens
<img width="1917" height="901" alt="image" src="https://github.com/user-attachments/assets/c7140755-01bd-495d-9712-f7bbe71017f1" />
<img width="1916" height="904" alt="image" src="https://github.com/user-attachments/assets/903c3de2-ec92-4a89-805f-95e03f2ab1d7" />
<img width="1913" height="905" alt="image" src="https://github.com/user-attachments/assets/5ac2da33-d333-48f5-b0ff-b094a4419d8d" />


## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request



