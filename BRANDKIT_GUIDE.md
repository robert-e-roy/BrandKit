# BrandKit Migration & Usage Guide

## Overview

`BrandKit.swift` is a comprehensive design system that centralizes all your app's branding:
- Colors and gradients
- Typography and font styles
- Spacing and sizing
- Shadows and effects
- Animations
- Reusable UI components

## How to Use in New Projects

### 1. Import the File
1. Copy `BrandKit.swift` to your new project
2. Add it to your Xcode project
3. That's it! All styles are immediately available

### 2. Basic Usage Examples

```swift
import SwiftUI

struct MyView: View {
    var body: some View {
        VStack(spacing: BrandKit.Spacing.large) {
            // Use brand colors
            Text("Hello World")
                .foregroundColor(BrandKit.Colors.primaryBlue)
            
            // Apply brand button styles
            Button("Get Started") {
                // action
            }
            .brandPrimaryButton()
            
            // Use brand components
            BrandComponents.LoadingSpinner()
        }
        .brandBackground() // Apply branded background
    }
}
```

## Available Styles

### Colors

```swift
// Primary Colors
BrandKit.Colors.primaryBlue
BrandKit.Colors.primaryPurple

// Success Colors
BrandKit.Colors.successGreen
BrandKit.Colors.successTeal

// Background Colors
BrandKit.Colors.cardBackground
BrandKit.Colors.backgroundLightBlue
BrandKit.Colors.backgroundSoftBlue

// Status Colors
BrandKit.Colors.error
BrandKit.Colors.warning
BrandKit.Colors.info

// Metadata Colors (for different data types)
BrandKit.Colors.metadataGreen
BrandKit.Colors.metadataRed
BrandKit.Colors.metadataBlue
BrandKit.Colors.metadataOrange
BrandKit.Colors.metadataPurple
```

### Gradients

```swift
// Primary Gradients (Blue → Purple)
BrandKit.Gradients.primaryHorizontal
BrandKit.Gradients.primaryDiagonal
BrandKit.Gradients.primaryVertical

// Background Gradients
BrandKit.Gradients.backgroundLight  // For main screens
BrandKit.Gradients.backgroundDark   // For launch/splash screens

// Success Gradient (Green → Teal)
BrandKit.Gradients.success

// Special Effects
BrandKit.Gradients.glow
BrandKit.Gradients.emptyStateIcon
```

### View Modifiers

#### Card Styles
```swift
VStack {
    // content
}
.brandCardStyle()  // Standard card with shadow

// OR

.brandCompactCardStyle()  // Smaller, more subtle
```

#### Button Styles
```swift
Button("Action") { }
    .brandPrimaryButton()     // Blue-purple gradient

Button("Success") { }
    .brandSuccessButton()     // Green gradient

Button("Cancel") { }
    .brandSecondaryButton()   // Outlined style

Button("Settings") { }
    .brandCircleButton()      // Circular with gradient

Button("Small") { }
    .brandCompactButton()     // Compact style
```

#### Background Styles
```swift
VStack {
    // content
}
.brandBackground()      // Light gradient background

// OR

.brandDarkBackground()  // Dark gradient (for splash screens)
```

#### Text Styles
```swift
Text("Title")
    .brandTitle()

Text("Subtitle")
    .brandSubtitle()

Text("Gradient Text")
    .brandGradientText()
```

### Spacing

```swift
VStack(spacing: BrandKit.Spacing.large) {
    // Available sizes:
    // .extraSmall (4pt)
    // .small (8pt)
    // .medium (16pt)
    // .large (24pt)
    // .extraLarge (32pt)
    // .huge (40pt)
    // .massive (48pt)
}

// Padding
.padding(BrandKit.Spacing.medium)
.padding(.horizontal, BrandKit.Spacing.large)
```

### Corner Radius

```swift
RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large)

// Available sizes:
// .small (8pt)
// .medium (12pt)
// .large (16pt)
// .extraLarge (24pt)
// .circle (40pt)
```

### Shadows

```swift
// Manual shadow application
.shadow(
    color: BrandKit.Shadows.cardColor,
    radius: BrandKit.Shadows.cardRadius,
    x: BrandKit.Shadows.cardOffset.width,
    y: BrandKit.Shadows.cardOffset.height
)

// Accent shadows
BrandKit.Shadows.accentBlue
BrandKit.Shadows.accentPurple
BrandKit.Shadows.accentGreen
```

### Typography

```swift
// Font sizes
Text("Title")
    .font(.system(size: BrandKit.Typography.titleLarge))

// Pre-configured fonts
Text("Title")
    .font(BrandKit.Typography.largeTitle())

Text("Body")
    .font(BrandKit.Typography.body(weight: .semibold))

Text("Code")
    .font(BrandKit.Typography.monospaced())
```

### Animations

```swift
// Pre-configured animations
.animation(BrandKit.Animations.standardSpring, value: someValue)
.animation(BrandKit.Animations.bouncySpring, value: someValue)
.animation(BrandKit.Animations.fast, value: someValue)
.animation(BrandKit.Animations.smooth, value: someValue)

// Or access raw values
.animation(
    .spring(
        response: BrandKit.Animations.standardDuration,
        dampingFraction: BrandKit.Animations.standardDamping
    ),
    value: someValue
)
```

## Reusable Components

### Loading Spinner

```swift
BrandComponents.LoadingSpinner()
BrandComponents.LoadingSpinner(size: 80)  // Custom size
```

### Status Badge

```swift
BrandComponents.StatusBadge(
    icon: "checkmark.circle.fill",
    text: "Success",
    color: BrandKit.Colors.successGreen
)
```

### Metadata Chip

```swift
BrandComponents.MetadataChip(
    icon: "clock.fill",
    value: "2.5s",
    color: BrandKit.Colors.metadataBlue
)
```

### Icon Circle

```swift
BrandComponents.IconCircle(icon: "video.badge.plus")

// Customized
BrandComponents.IconCircle(
    icon: "star.fill",
    size: 150,
    iconSize: 70,
    gradient: BrandKit.Gradients.success
)
```

### Section Header

```swift
BrandComponents.SectionHeader(
    icon: "info.circle.fill",
    title: "Video Information"
)
```

## Migration from AppTheme

If you're currently using `AppTheme.swift` in this project, here's how to migrate:

### Old Code → New Code

```swift
// Colors
AppTheme.cardBackground          → BrandKit.Colors.cardBackground
AppTheme.overlay(opacity: 0.2)   → BrandKit.Colors.overlay(opacity: 0.2)

// Gradients
AppTheme.primaryGradient         → BrandKit.Gradients.primaryHorizontal
AppTheme.primaryGradientVertical → BrandKit.Gradients.primaryDiagonal
AppTheme.backgroundGradient      → BrandKit.Gradients.backgroundLight
AppTheme.successGradient         → BrandKit.Gradients.success

// Spacing
AppTheme.Spacing.small           → BrandKit.Spacing.small
AppTheme.Spacing.medium          → BrandKit.Spacing.medium
AppTheme.Spacing.large           → BrandKit.Spacing.large
AppTheme.Spacing.extraLarge      → BrandKit.Spacing.extraLarge

// Corner Radius
AppTheme.CornerRadius.small      → BrandKit.CornerRadius.small
AppTheme.CornerRadius.medium     → BrandKit.CornerRadius.medium
AppTheme.CornerRadius.large      → BrandKit.CornerRadius.large
AppTheme.CornerRadius.extraLarge → BrandKit.CornerRadius.extraLarge

// Shadows
AppTheme.cardShadow              → BrandKit.Shadows.cardColor
AppTheme.accentShadow            → BrandKit.Shadows.accentBlue
AppTheme.successShadow           → BrandKit.Shadows.accentGreen

// View Modifiers
.cardStyle()                     → .brandCardStyle()
.primaryButtonStyle()            → .brandPrimaryButton()
.successButtonStyle()            → .brandSuccessButton()
.secondaryButtonStyle()          → .brandSecondaryButton()
```

## Complete Example

Here's a complete example showing how to build a screen with BrandKit:

```swift
import SwiftUI

struct ExampleScreen: View {
    @State private var isLoading = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: BrandKit.Spacing.large) {
                // Header with gradient text
                Text("Welcome")
                    .brandTitle()
                    .brandGradientText()
                
                Text("Get started with your project")
                    .brandSubtitle()
                
                // Card with content
                VStack(spacing: BrandKit.Spacing.medium) {
                    BrandComponents.SectionHeader(
                        icon: "info.circle.fill",
                        title: "Information"
                    )
                    
                    HStack {
                        BrandComponents.MetadataChip(
                            icon: "clock.fill",
                            value: "5 min",
                            color: BrandKit.Colors.metadataBlue
                        )
                        
                        BrandComponents.MetadataChip(
                            icon: "star.fill",
                            value: "4.8",
                            color: BrandKit.Colors.metadataOrange
                        )
                    }
                    
                    Text("Your content here")
                        .font(BrandKit.Typography.body())
                }
                .padding(BrandKit.Spacing.large)
                .brandCardStyle()
                
                // Action buttons
                VStack(spacing: BrandKit.Spacing.medium) {
                    Button("Get Started") {
                        // action
                    }
                    .brandPrimaryButton()
                    
                    Button("Learn More") {
                        // action
                    }
                    .brandSecondaryButton()
                }
                
                // Loading state
                if isLoading {
                    BrandComponents.LoadingSpinner()
                }
            }
            .padding()
        }
        .brandBackground()
    }
}
```

## Tips for Consistent Branding

1. **Always use BrandKit values** instead of hardcoded numbers
2. **Extend BrandKit** when you need new styles rather than creating one-offs
3. **Use the preview** in Xcode to see all available styles
4. **Create custom components** using BrandKit primitives for reusability
5. **Document custom extensions** if you add project-specific styles

## Extending BrandKit

If you need project-specific styles, extend BrandKit rather than creating new files:

```swift
// In a separate file: BrandKit+ProjectName.swift
extension BrandKit.Colors {
    static let projectSpecific = Color(red: 0.5, green: 0.2, blue: 0.8)
}

extension View {
    func projectSpecificButtonStyle() -> some View {
        self
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, BrandKit.Spacing.medium)
            .background(BrandKit.Colors.projectSpecific)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large))
    }
}
```

## Preview Your Brand

To see all styles in action, just run the built-in preview:

1. Open `BrandKit.swift` in Xcode
2. Click the "Preview" button (or press Option+Cmd+Return)
3. See all colors, buttons, and components rendered

---

**Questions?** The BrandKit is self-documenting with clear names and organized sections. Browse through the file to discover all available options!
