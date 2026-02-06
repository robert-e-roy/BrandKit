# Example: Migrating ContentView to BrandKit

This file shows a side-by-side comparison of how to migrate from direct styling and AppTheme to BrandKit.

## Button Example

### Before (Mixed Styling)
```swift
Button {
    showPreferences.toggle()
} label: {
    Image(systemName: "gearshape.fill")
        .font(.title2)
        .foregroundColor(.white)
        .frame(width: 50, height: 50)
        .background(AppTheme.primaryGradientVertical)
        .clipShape(Circle())
        .shadow(color: Color.blue.opacity(0.3), radius: 8, x: 0, y: 4)
}
```

### After (BrandKit)
```swift
Button {
    showPreferences.toggle()
} label: {
    Image(systemName: "gearshape.fill")
        .font(.title2)
}
.brandCircleButton(size: 50)
```

---

## Card Example

### Before
```swift
VStack(spacing: 24) {
    // content
}
.frame(maxWidth: .infinity)
.background(Color.white)
.clipShape(RoundedRectangle(cornerRadius: 24))
.shadow(color: Color.black.opacity(0.08), radius: 16, x: 0, y: 8)
```

### After (BrandKit)
```swift
VStack(spacing: BrandKit.Spacing.large) {
    // content
}
.frame(maxWidth: .infinity)
.brandCardStyle()
```

---

## Primary Button Example

### Before
```swift
Button {
    onCreateVideo()
} label: {
    HStack {
        Image(systemName: "wand.and.stars")
            .font(.headline)
        Text("Create Timestamped Video")
            .fontWeight(.semibold)
    }
    .foregroundColor(.white)
    .frame(maxWidth: .infinity)
    .padding(.vertical, 16)
    .background(
        LinearGradient(
            gradient: Gradient(colors: [
                Color.green,
                Color(red: 0.2, green: 0.8, blue: 0.5)
            ]),
            startPoint: .leading,
            endPoint: .trailing
        )
    )
    .clipShape(RoundedRectangle(cornerRadius: 16))
    .shadow(color: Color.green.opacity(0.4), radius: 12, x: 0, y: 6)
}
```

### After (BrandKit)
```swift
Button {
    onCreateVideo()
} label: {
    HStack {
        Image(systemName: "wand.and.stars")
            .font(.headline)
        Text("Create Timestamped Video")
            .fontWeight(.semibold)
    }
}
.brandSuccessButton()
```

---

## Background Example

### Before
```swift
ZStack {
    AppTheme.backgroundGradient
        .ignoresSafeArea()
    
    ScrollView {
        // content
    }
}
```

### After (BrandKit)
```swift
ScrollView {
    // content
}
.brandBackground()
```

---

## Loading Spinner Example

### Before
```swift
struct ProcessingView: View {
    let message: String
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Circle()
                    .stroke(Color.blue.opacity(0.2), lineWidth: 4)
                    .frame(width: 60, height: 60)
                
                Circle()
                    .trim(from: 0, to: 0.7)
                    .stroke(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.purple]),
                            startPoint: .leading,
                            endPoint: .trailing
                        ),
                        style: StrokeStyle(lineWidth: 4, lineCap: .round)
                    )
                    .frame(width: 60, height: 60)
                    .rotationEffect(.degrees(rotation))
                    .onAppear {
                        withAnimation(.linear(duration: 1.0).repeatForever(autoreverses: false)) {
                            rotation = 360
                        }
                    }
            }
            
            Text(message)
                .font(.headline)
                .foregroundColor(.primary)
        }
        // ... more styling
    }
}
```

### After (BrandKit)
```swift
struct ProcessingView: View {
    let message: String
    
    var body: some View {
        VStack(spacing: BrandKit.Spacing.large) {
            BrandComponents.LoadingSpinner()
            
            Text(message)
                .font(.headline)
                .foregroundColor(BrandKit.Colors.textPrimary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, BrandKit.Spacing.huge)
        .brandCardStyle()
    }
}
```

---

## Metadata Display Example

### Before
```swift
struct MetadataChip: View {
    let icon: String
    let value: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: icon)
                .font(.caption)
                .foregroundColor(color)
            
            Text(value)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(color.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

// Usage
MetadataChip(
    icon: "clock.fill",
    value: String(format: "%.1fs", metadata.duration),
    color: .blue
)
```

### After (BrandKit)
```swift
// Just use the built-in component!
BrandComponents.MetadataChip(
    icon: "clock.fill",
    value: String(format: "%.1fs", metadata.duration),
    color: BrandKit.Colors.metadataBlue
)

// No need to define your own struct!
```

---

## Icon Circle Example

### Before
```swift
ZStack {
    Circle()
        .fill(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.blue.opacity(0.1),
                    Color.purple.opacity(0.1)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .frame(width: 120, height: 120)
    
    Image(systemName: "video.badge.plus")
        .font(.system(size: 50))
        .foregroundStyle(
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
}
```

### After (BrandKit)
```swift
BrandComponents.IconCircle(
    icon: "video.badge.plus",
    size: 120,
    iconSize: 50
)
```

---

## Section Header Example

### Before
```swift
HStack {
    Image(systemName: "eye.fill")
        .font(.title3)
        .foregroundStyle(
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
    
    Text("Timestamp Preview")
        .font(.headline)
        .fontWeight(.bold)
    
    Spacer()
}
```

### After (BrandKit)
```swift
BrandComponents.SectionHeader(
    icon: "eye.fill",
    title: "Timestamp Preview"
)
```

---

## Complete View Transformation

### Before (Original ContentView snippet)
```swift
var body: some View {
    ZStack {
        AppTheme.backgroundGradient
            .ignoresSafeArea()
        
        ScrollView {
            VStack(spacing: AppTheme.Spacing.large) {
                VStack(spacing: AppTheme.Spacing.medium) {
                    Text("Time Stamp Adder")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                    
                    Button {
                        showPreferences.toggle()
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(AppTheme.primaryGradientVertical)
                            .clipShape(Circle())
                            .shadow(color: Color.blue.opacity(0.3), radius: 8, x: 0, y: 4)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
```

### After (With BrandKit)
```swift
var body: some View {
    ScrollView {
        VStack(spacing: BrandKit.Spacing.large) {
            VStack(spacing: BrandKit.Spacing.medium) {
                Text("Time Stamp Adder")
                    .font(BrandKit.Typography.largeTitle())
                    .brandGradientText()
                
                Button {
                    showPreferences.toggle()
                } label: {
                    Image(systemName: "gearshape.fill")
                        .font(.title2)
                }
                .brandCircleButton(size: 50)
            }
            .padding(.horizontal)
        }
    }
    .brandBackground()
}
```

---

## Benefits of Migration

1. **Less Code**: Reusable components mean you write less
2. **Consistency**: All styling uses the same values
3. **Portability**: Copy BrandKit.swift to any project
4. **Maintainability**: Change colors once, update everywhere
5. **Readability**: `.brandPrimaryButton()` is clearer than manual styling

## Migration Strategy

1. **Keep both files initially**: Don't delete AppTheme.swift right away
2. **Migrate view by view**: Update one screen at a time
3. **Test as you go**: Make sure everything looks correct
4. **Remove AppTheme.swift**: Once fully migrated, delete the old file

## Pro Tips

- Use **Find & Replace** to change `AppTheme` → `BrandKit` quickly
- Update spacing values systematically (`.small`, `.medium`, `.large`)
- Replace custom gradients with `BrandKit.Gradients.*`
- Replace custom components with `BrandComponents.*`
- Add `.brandCardStyle()` instead of manual card styling

---

**Ready to migrate?** Start with simple views (like Settings) and work your way up to complex ones (like ContentView).
