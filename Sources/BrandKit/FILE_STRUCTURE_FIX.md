# 🔧 BrandKit File Structure - What You Need

Your BrandKit package should have **exactly 3 Swift files** in `Sources/BrandKit/`:

## ✅ Correct Structure

```
BrandKit/
├── Package.swift
├── Sources/
│   └── BrandKit/
│       ├── BrandKit.swift              ← Design system (colors, spacing, components)
│       ├── BrandKitShowcase.swift      ← 6-tab showcase (Colors, Gradients, Buttons, etc.)
│       └── BrandKitExamples.swift      ← Example app (Home, Library, Settings)
└── Tests/
    └── BrandKitTests/
```

## ❌ Current Problem

You have duplicate/conflicting files:
- `BrandkitShowcase.swift` (lowercase 'k') - **DELETE THIS**
- `BrandKitExamples.swift` - Has the example app ✅
- `ExamplesShowcaseApp.swift` - **DELETE THIS** (duplicate in wrong location)
- `SourcesBrandKitBrandKitShowcase.swift` - **WRONG PATH** (should be Sources/BrandKit/BrandKitShowcase.swift)

## 🔨 How to Fix

### In your file system / Finder:

1. **Navigate to your BrandKit folder**
2. **Create proper folder structure:**
   ```
   mkdir -p Sources/BrandKit
   ```

3. **Move/create these 3 files in `Sources/BrandKit/`:**
   - `BrandKit.swift` - Keep the one you have (design system)
   - `BrandKitShowcase.swift` - Need to create with 6-tab showcase
   - `BrandKitExamples.swift` - Keep the one with Home/Library/Settings

4. **Delete these files:**
   - `BrandkitShowcase.swift` (lowercase k)
   - `ExamplesShowcaseApp.swift`
   - `SourcesBrandKitBrandKitShowcase.swift` (wrong path format)
   - Any other duplicates

## 📝 What Each File Contains

### 1. BrandKit.swift
```swift
import SwiftUI

public enum BrandKit {
    public enum Colors { ... }
    public enum Gradients { ... }
    public enum Typography { ... }
    public enum Spacing { ... }
    // ... all design tokens
}

public enum BrandComponents {
    public struct LoadingSpinner: View { ... }
    public struct StatusBadge: View { ... }
    // ... all components
}

extension View {
    public func brandPrimaryButton() -> some View { ... }
    public func brandCardStyle() -> some View { ... }
    // ... all view modifiers
}
```

### 2. BrandKitShowcase.swift
```swift
import SwiftUI

public struct BrandKitShowcase: View {
    @State private var selectedTab = 0
    
    public init() {}
    
    public var body: some View {
        TabView(selection: $selectedTab) {
            ColorsShowcase()
                .tabItem { Label("Colors", systemImage: "paintpalette.fill") }
                .tag(0)
            
            GradientsShowcase()
                .tabItem { Label("Gradients", systemImage: "circle.lefthalf.filled") }
                .tag(1)
            
            // ... 4 more tabs
        }
    }
}

struct ColorsShowcase: View { ... }
struct GradientsShowcase: View { ... }
struct ButtonsShowcase: View { ... }
struct ComponentsShowcase: View { ... }
struct TypographyShowcase: View { ... }
struct SpacingShowcase: View { ... }
```

### 3. BrandKitExamples.swift
```swift
import SwiftUI

public struct ExampleAppView: View { ... }
public struct HomeView: View { ... }
public struct LibraryView: View { ... }
public struct SettingsView: View { ... }

// Supporting components (no conflicts with BrandKit.swift)
public struct StatCard: View { ... }
public struct RecentItem: View { ... }
public struct FilterChip: View { ... }
// ... etc
```

## 🎯 After Fixing

Once you have the correct structure, previews will work:

```swift
// In BrandKitShowcase.swift
#Preview {
    BrandKitShowcase()  // 6-tab showcase
}

// In BrandKitExamples.swift
#Preview {
    ExampleAppView()  // Example app with 3 tabs
}
```

## 🚀 Using in Other Projects

In your other iOS/macOS app projects:

```swift
import SwiftUI
import BrandKit  // Imports from your local BrandKit package

struct ContentView: View {
    var body: some View {
        // Use the showcase
        BrandKitShowcase()
        
        // Or use the example app
        ExampleAppView()
        
        // Or use individual views
        HomeView()
        
        // Or build your own with BrandKit components
        VStack {
            Text("My App")
                .brandTitle()
            Button("Action") { }
                .brandPrimaryButton()
        }
        .brandBackground()
    }
}
```

## 📋 Quick Check

Run this in Terminal from your BrandKit folder:

```bash
# Should show exactly these 3 files:
ls Sources/BrandKit/

# Expected output:
# BrandKit.swift
# BrandKitShowcase.swift
# BrandKitExamples.swift
```

If you see different files or wrong names, fix the structure!

---

**Once the structure is correct, all errors will go away and previews will work!** ✨
