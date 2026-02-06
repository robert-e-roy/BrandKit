# 🎨 BrandKit

BrandKit is a comprehensive brand identity and design system for SwiftUI. It centralizes your colors, gradients, typography, spacing, reusable components, and styling, making it easy to maintain consistent branding across all your apps and packages.

## ✨ Features
- 🎨 **Centralized color and gradient palette** - Primary, success, status, and metadata colors
- 📝 **Typography system** - Consistent font sizes and weights
- 📏 **Spacing and layout constants** - 8pt grid system
- 🔘 **Ready-to-use button and card modifiers** - Primary, secondary, success, and circular buttons
- 🧩 **Pre-built reusable components** - Loading spinners, badges, chips, icons, and headers
- 📱 **Multi-platform support** - iOS 17+, macOS 14+, watchOS 10+, visionOS 1+
- 👀 **Interactive showcase app** - Visual preview of all styles and components
- 🏢 **Perfect for app suites** - Maintain consistency across multiple apps effortlessly

## 📱 Live Preview

BrandKit includes a comprehensive showcase app that lets you see all styles in action:

```swift
import SwiftUI
import BrandKit

@main
struct ShowcaseApp: App {
    var body: some Scene {
        WindowGroup {
            BrandKitShowcase()
        }
    }
}
```

The showcase includes tabs for:
- **Colors** - All color swatches with names
- **Gradients** - Visual examples of all gradients
- **Buttons** - All button styles with descriptions
- **Components** - Interactive component demos
- **Typography** - Font sizes and weights
- **Spacing** - Spacing scale and corner radius

## 🚀 Quick Start

### Installation via Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/BrandKit", from: "1.0.0")
]
```

### Or Just Copy the File

Download `BrandKit.swift` from this repo and drag it into your Xcode project!

### Basic Usage

```swift
import SwiftUI
import BrandKit

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: BrandKit.Spacing.large) {
            Text("Welcome!")
                .brandTitle()
                .brandGradientText()
            
            Button("Get Started") {
                // action
            }
            .brandPrimaryButton()
        }
        .brandBackground()
    }
}
```

**That's it! Beautiful, consistent branding in seconds.** ✨

## 📖 Documentation

- 🚀 **[Quick Start Guide](QUICKSTART.md)** - Get up and running in 5 minutes
- 🏢 **[Multi-App Guide](MULTI_APP_GUIDE.md)** - ⭐ Use BrandKit across multiple apps for perfect consistency
- ✅ **[Getting Started](GETTING_STARTED.md)** - Complete onboarding with real-world case study
- 📱 **[Showcase Preview](SHOWCASE_PREVIEW.md)** - See what the showcase looks like
- 📚 **[Full Guide](BRANDKIT_GUIDE.md)** - Complete documentation
- 🎨 **[Color Palette](BRAND_COLORS.md)** - All colors with hex codes
- 📝 **[Quick Reference](BRANDKIT_QUICKREF.md)** - Cheat sheet
- 🔄 **[Migration Examples](BRANDKIT_MIGRATION_EXAMPLES.md)** - Before/after code

## 💡 Why BrandKit?

### Before BrandKit
```swift
Button("Action") {
    // ...
}
.foregroundColor(.white)
.frame(maxWidth: .infinity)
.padding(.vertical, 16)
.background(
    LinearGradient(
        gradient: Gradient(colors: [Color.blue, Color.purple]),
        startPoint: .leading,
        endPoint: .trailing
    )
)
.clipShape(RoundedRectangle(cornerRadius: 16))
.shadow(color: Color.blue.opacity(0.4), radius: 12, x: 0, y: 6)
```

### With BrandKit
```swift
Button("Action") {
    // ...
}
.brandPrimaryButton()
```

**80% less code, 100% consistent!** 🎯

## 🎨 What's Included

### Design Tokens
- **Colors** - 15+ semantic colors (primary, success, status, metadata)
- **Gradients** - 6 pre-configured gradients
- **Typography** - 7 font sizes, 9 weights, 3 presets
- **Spacing** - 7-point scale (4pt → 48pt)
- **Corner Radius** - 4 standard sizes
- **Shadows** - Pre-configured for cards, buttons, chips
- **Icon Sizes** - 4 sizes + 4 circle backgrounds
- **Animations** - 4 pre-tuned spring/ease animations

### View Modifiers
```swift
.brandCardStyle()           // Card with shadow
.brandPrimaryButton()       // Blue-purple gradient button
.brandSuccessButton()       // Green-teal gradient button
.brandSecondaryButton()     // Outlined button
.brandCompactButton()       // Smaller button
.brandCircleButton()        // Circular icon button
.brandBackground()          // Light gradient background
.brandDarkBackground()      // Dark gradient background
.brandTitle()               // Large title styling
.brandSubtitle()            // Subtitle styling
.brandGradientText()        // Gradient text fill
```

### Pre-Built Components
```swift
BrandComponents.LoadingSpinner(size: 60)
BrandComponents.StatusBadge(icon: "checkmark", text: "Success", color: .green)
BrandComponents.MetadataChip(icon: "clock", value: "2:45", color: .blue)
BrandComponents.IconCircle(icon: "star.fill", size: 100)
BrandComponents.SectionHeader(icon: "star", title: "Featured")
```

## 🖼️ Example App

Check out `Examples/ShowcaseApp.swift` for a complete multi-tab app built with BrandKit, featuring:
- Dashboard with stats cards
- Library with grid layout
- Settings with profile and preferences
- All using BrandKit components!

## 🎯 Use Cases

### Perfect For:
- ✅ Indie developers building multiple apps
- ✅ **App suites needing consistent branding** (Pro + Lite versions, app families)
- ✅ Teams needing consistent design systems
- ✅ Agencies building white-label apps
- ✅ Rapid prototyping with professional polish
- ✅ Learning SwiftUI best practices
- ✅ Portfolio projects that need to look great

### Great For:
- 📱 iOS apps
- 💻 macOS apps
- ⌚ watchOS complications
- 🥽 visionOS experiences
- 📦 Swift packages

### 🏢 Building Multiple Apps?

BrandKit shines when you need **consistency across app families**:

```
BrandKit.swift → VideoApp Pro   → Same design ✅
              ↘ VideoApp Lite   → Same colors ✅
              ↘ VideoApp Widget → Same style ✅
```

**Result:** Professional suite with perfect brand consistency

👉 **[Read the Multi-App Guide](MULTI_APP_GUIDE.md)** for strategies, workflows, and real-world examples!

## 🌟 Examples

### Button Styles
```swift
Button("Continue") { }.brandPrimaryButton()
Button("Complete") { }.brandSuccessButton()
Button("Cancel") { }.brandSecondaryButton()
```

### Cards
```swift
VStack {
    Text("Card Content")
}
.padding()
.brandCardStyle()
```

### Loading States
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
        value: "2:45",
        color: BrandKit.Colors.metadataBlue
    )
    BrandComponents.MetadataChip(
        icon: "video.fill",
        value: "60 FPS",
        color: BrandKit.Colors.metadataOrange
    )
}
```

## 🛠️ Requirements

- iOS 17.0+ / macOS 14.0+ / watchOS 10.0+ / visionOS 1.0+
- Swift 6.2+
- Xcode 16.0+

## 📦 Installation

### Swift Package Manager

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/BrandKit.git", from: "1.0.0")
]
```

### Manual Installation
Simply copy `BrandKit.swift` to your project. No dependencies needed!

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new components
- Submit pull requests
- Share your apps built with BrandKit

## 📄 License

BrandKit is available under the MIT license. See LICENSE for details.

## 🎉 Showcase

**See BrandKit in action!** Run the showcase app to explore all styles visually:

```swift
#Preview {
    BrandKitShowcase()
}
```

Or check out [SHOWCASE_PREVIEW.md](SHOWCASE_PREVIEW.md) for a complete visual tour!

---

**Built with ❤️ for the SwiftUI community**

Ready to build beautiful, consistent apps? Get started with the [Quick Start Guide](QUICKSTART.md)! 🚀


