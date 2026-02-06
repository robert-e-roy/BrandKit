# BrandKit Quick Reference

## 🎨 Colors

```swift
BrandKit.Colors.primaryBlue
BrandKit.Colors.primaryPurple
BrandKit.Colors.successGreen
BrandKit.Colors.successTeal
BrandKit.Colors.cardBackground
```

## 🌈 Gradients

```swift
BrandKit.Gradients.primaryHorizontal    // Blue → Purple (→)
BrandKit.Gradients.primaryDiagonal      // Blue → Purple (↘)
BrandKit.Gradients.backgroundLight      // Light background
BrandKit.Gradients.success              // Green → Teal
```

## 📏 Spacing

```swift
BrandKit.Spacing.small          // 8pt
BrandKit.Spacing.medium         // 16pt
BrandKit.Spacing.large          // 24pt
BrandKit.Spacing.extraLarge     // 32pt
```

## 🔘 Button Styles

```swift
.brandPrimaryButton()       // Blue-purple gradient
.brandSuccessButton()       // Green gradient
.brandSecondaryButton()     // Outlined
.brandCircleButton()        // Circular icon
.brandCompactButton()       // Small button
```

## 📦 Card Styles

```swift
.brandCardStyle()           // Standard card
.brandCompactCardStyle()    // Smaller card
```

## 🎭 Background Styles

```swift
.brandBackground()          // Light gradient
.brandDarkBackground()      // Dark gradient
```

## 📝 Text Styles

```swift
.brandTitle()               // Large bold title
.brandSubtitle()           // Secondary text
.brandGradientText()       // Gradient text
```

## 🧩 Components

```swift
BrandComponents.LoadingSpinner()
BrandComponents.LoadingSpinner(size: 80)

BrandComponents.StatusBadge(
    icon: "checkmark.circle.fill",
    text: "Success",
    color: BrandKit.Colors.successGreen
)

BrandComponents.MetadataChip(
    icon: "clock.fill",
    value: "2.5s",
    color: BrandKit.Colors.metadataBlue
)

BrandComponents.IconCircle(
    icon: "video.badge.plus"
)

BrandComponents.SectionHeader(
    icon: "info.circle.fill",
    title: "Information"
)
```

## 🎬 Animations

```swift
.animation(BrandKit.Animations.standardSpring, value: ...)
.animation(BrandKit.Animations.bouncySpring, value: ...)
.animation(BrandKit.Animations.fast, value: ...)
.animation(BrandKit.Animations.smooth, value: ...)
```

## 📐 Corner Radius

```swift
BrandKit.CornerRadius.small         // 8pt
BrandKit.CornerRadius.medium        // 12pt
BrandKit.CornerRadius.large         // 16pt
BrandKit.CornerRadius.extraLarge    // 24pt
```

## 🔍 Most Common Patterns

### Card with Content
```swift
VStack {
    // content
}
.padding(BrandKit.Spacing.large)
.brandCardStyle()
```

### Primary Action Button
```swift
Button("Action") {
    // do something
}
.brandPrimaryButton()
```

### Screen with Background
```swift
VStack {
    // content
}
.brandBackground()
```

### Loading State
```swift
if isLoading {
    BrandComponents.LoadingSpinner()
}
```

### Metadata Display
```swift
HStack {
    BrandComponents.MetadataChip(
        icon: "clock.fill",
        value: "2.5s",
        color: BrandKit.Colors.metadataBlue
    )
    BrandComponents.MetadataChip(
        icon: "speedometer",
        value: "30fps",
        color: BrandKit.Colors.metadataOrange
    )
}
```

---

**💡 Tip:** Import `BrandKit.swift` into any project for instant brand consistency!
