# 🚀 BrandKit Quick Start Guide

Get up and running with BrandKit in 5 minutes!

## Step 1: Add to Your Project

### Via Swift Package Manager
```swift
dependencies: [
    .package(url: "https://github.com/yourusername/BrandKit", from: "1.0.0")
]
```

### Or Just Copy the File
Download `BrandKit.swift` and drag it into your Xcode project. That's it!

## Step 2: Import BrandKit

```swift
import SwiftUI
import BrandKit // if using SPM
```

## Step 3: Start Using It!

### Basic Example - A Branded Screen

```swift
struct WelcomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: BrandKit.Spacing.large) {
                // Gradient Title
                Text("Welcome!")
                    .brandTitle()
                    .brandGradientText()
                
                // Icon
                BrandComponents.IconCircle(
                    icon: "star.fill",
                    size: 100,
                    iconSize: 50
                )
                
                // Card
                VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
                    BrandComponents.SectionHeader(
                        icon: "sparkles",
                        title: "Features"
                    )
                    
                    Text("Everything you need in one place")
                        .foregroundColor(BrandKit.Colors.textSecondary)
                }
                .padding(BrandKit.Spacing.large)
                .brandCardStyle()
                
                // Button
                Button("Get Started") {
                    print("Tapped!")
                }
                .brandPrimaryButton()
            }
            .padding()
        }
        .brandBackground()
    }
}
```

**Result**: A beautiful, branded screen in ~30 lines of code! 🎉

## Common Use Cases

### 1. Buttons

```swift
// Primary action
Button("Continue") { }
    .brandPrimaryButton()

// Success action
Button("Complete") { }
    .brandSuccessButton()

// Secondary action
Button("Cancel") { }
    .brandSecondaryButton()

// Icon button
Button { } label: {
    Image(systemName: "heart.fill")
}
.brandCircleButton()
```

### 2. Cards

```swift
VStack {
    Text("Card Content")
    Text("More content here")
}
.padding()
.brandCardStyle()
```

### 3. Backgrounds

```swift
// Light gradient background
YourView()
    .brandBackground()

// Dark gradient (for launch screens)
YourView()
    .brandDarkBackground()
```

### 4. Loading States

```swift
if isLoading {
    BrandComponents.LoadingSpinner(size: 60)
}
```

### 5. Metadata Display

```swift
HStack {
    BrandComponents.MetadataChip(
        icon: "clock.fill",
        value: "2.5s",
        color: BrandKit.Colors.metadataBlue
    )
    
    BrandComponents.MetadataChip(
        icon: "video.fill",
        value: "60 FPS",
        color: BrandKit.Colors.metadataOrange
    )
}
```

### 6. Status Badges

```swift
BrandComponents.StatusBadge(
    icon: "checkmark.circle.fill",
    text: "Completed",
    color: BrandKit.Colors.successGreen
)
```

## Using Design Tokens

### Colors
```swift
Text("Hello")
    .foregroundColor(BrandKit.Colors.primaryBlue)

Rectangle()
    .fill(BrandKit.Colors.successGreen)
```

### Gradients
```swift
Rectangle()
    .fill(BrandKit.Gradients.primaryHorizontal)

Text("Gradient Text")
    .font(.largeTitle)
    .foregroundStyle(BrandKit.Gradients.primaryDiagonal)
```

### Spacing
```swift
VStack(spacing: BrandKit.Spacing.large) {
    // content
}
.padding(BrandKit.Spacing.medium)
```

### Typography
```swift
Text("Title")
    .font(BrandKit.Typography.largeTitle())

Text("Body")
    .font(BrandKit.Typography.body())

Text("Code: 12345")
    .font(BrandKit.Typography.monospaced())
```

### Corner Radius
```swift
RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large)
    .fill(Color.blue)
```

### Animations
```swift
Circle()
    .scaleEffect(isAnimating ? 1.2 : 1.0)
    .animation(BrandKit.Animations.bouncySpring, value: isAnimating)
```

## Complete Example - Video List Item

```swift
struct VideoListItem: View {
    let title: String
    let duration: String
    let fps: Int
    let resolution: String
    
    var body: some View {
        HStack(spacing: BrandKit.Spacing.medium) {
            // Thumbnail
            BrandComponents.IconCircle(
                icon: "play.fill",
                size: 60,
                iconSize: 24
            )
            
            // Content
            VStack(alignment: .leading, spacing: BrandKit.Spacing.small) {
                Text(title)
                    .font(.headline)
                
                // Metadata
                HStack {
                    BrandComponents.MetadataChip(
                        icon: "clock.fill",
                        value: duration,
                        color: BrandKit.Colors.metadataBlue
                    )
                    
                    BrandComponents.MetadataChip(
                        icon: "video.fill",
                        value: "\(fps) FPS",
                        color: BrandKit.Colors.metadataOrange
                    )
                    
                    BrandComponents.MetadataChip(
                        icon: "arrow.up.arrow.down",
                        value: resolution,
                        color: BrandKit.Colors.metadataPurple
                    )
                }
            }
        }
        .padding(BrandKit.Spacing.medium)
        .brandCompactCardStyle()
    }
}

// Usage
VideoListItem(
    title: "My Video",
    duration: "2:45",
    fps: 60,
    resolution: "1080p"
)
```

## Exploring the Showcase App

To see all components in action:

1. Add BrandKit to your project
2. Create a new SwiftUI view
3. Use `BrandKitShowcase()` as the root view
4. Run your app
5. Explore all tabs to see colors, gradients, buttons, components, etc.

```swift
import SwiftUI
import BrandKit

struct ContentView: View {
    var body: some View {
        BrandKitShowcase()
    }
}
```

## Customization

Want to extend BrandKit? Create extensions:

```swift
extension BrandKit.Colors {
    static let myCustomColor = Color(red: 0.2, green: 0.4, blue: 0.8)
}

extension View {
    func myCustomStyle() -> some View {
        self
            .padding(BrandKit.Spacing.large)
            .background(BrandKit.Colors.myCustomColor)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large))
    }
}
```

## Tips & Best Practices

1. **Always use spacing constants** - Never hardcode values like `16` or `24`
   ```swift
   // ❌ Don't
   .padding(16)
   
   // ✅ Do
   .padding(BrandKit.Spacing.medium)
   ```

2. **Use semantic color names** - Don't use raw colors
   ```swift
   // ❌ Don't
   .foregroundColor(.blue)
   
   // ✅ Do
   .foregroundColor(BrandKit.Colors.primaryBlue)
   ```

3. **Apply brand modifiers** - Use the pre-built modifiers
   ```swift
   // ❌ Don't
   Button("Action") { }
       .foregroundColor(.white)
       .frame(maxWidth: .infinity)
       .padding()
       .background(Color.blue)
       .cornerRadius(16)
   
   // ✅ Do
   Button("Action") { }
       .brandPrimaryButton()
   ```

4. **Use components for common patterns** - Don't rebuild what exists
   ```swift
   // ❌ Don't
   HStack {
       Image(systemName: "clock.fill")
       Text("2:45")
   }
   .padding()
   .background(Color.blue.opacity(0.1))
   .cornerRadius(8)
   
   // ✅ Do
   BrandComponents.MetadataChip(
       icon: "clock.fill",
       value: "2:45",
       color: BrandKit.Colors.metadataBlue
   )
   ```

## Next Steps

- ✅ Browse the [Full Documentation](BRANDKIT_GUIDE.md)
- ✅ Check out [Migration Examples](BRANDKIT_MIGRATION_EXAMPLES.md)
- ✅ See [Color Palette](BRAND_COLORS.md) for all colors with hex codes
- ✅ Review [Quick Reference](BRANDKIT_QUICKREF.md) for cheat sheet

## Need Help?

Open an issue on GitHub or check the documentation files included with BrandKit.

---

**Ready to build beautiful, consistent apps!** 🎨✨
