//  BrandKitShowcase.swift
//  
//  Visual showcase of all BrandKit styles, components, and design tokens
//  Use this file to preview and test all brand elements
//
//  Created: February 6, 2026
//

import SwiftUI

/// Main showcase view with tabs for different categories
public struct BrandKitShowcase: View {
    @State private var selectedTab = 0
    
    public init() {}
    
    public var body: some View {
        TabView(selection: $selectedTab) {
            ColorsShowcase()
                .tabItem {
                    Label("Colors", systemImage: "paintpalette.fill")
                }
                .tag(0)
            
            GradientsShowcase()
                .tabItem {
                    Label("Gradients", systemImage: "circle.lefthalf.filled")
                }
                .tag(1)
            
            ButtonsShowcase()
                .tabItem {
                    Label("Buttons", systemImage: "button.horizontal.fill")
                }
                .tag(2)
            
            ComponentsShowcase()
                .tabItem {
                    Label("Components", systemImage: "cube.box.fill")
                }
                .tag(3)
            
            TypographyShowcase()
                .tabItem {
                    Label("Typography", systemImage: "textformat")
                }
                .tag(4)
            
            SpacingShowcase()
                .tabItem {
                    Label("Spacing", systemImage: "ruler.fill")
                }
                .tag(5)
        }
    }
}

// MARK: - Colors Showcase

struct ColorsShowcase: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: BrandKit.Spacing.large) {
                Text("Color Palette")
                    .brandTitle()
                    .padding(.horizontal)
                
                // Primary Colors
                ColorSection(title: "Primary Colors") {
                    ColorSwatch(name: "Primary Blue", color: BrandKit.Colors.primaryBlue)
                    ColorSwatch(name: "Primary Purple", color: BrandKit.Colors.primaryPurple)
                }
                
                // Success Colors
                ColorSection(title: "Success Colors") {
                    ColorSwatch(name: "Success Green", color: BrandKit.Colors.successGreen)
                    ColorSwatch(name: "Success Teal", color: BrandKit.Colors.successTeal)
                }
                
                // Background Colors
                ColorSection(title: "Background Colors") {
                    ColorSwatch(name: "Light Blue", color: BrandKit.Colors.backgroundLightBlue)
                    ColorSwatch(name: "Soft Blue", color: BrandKit.Colors.backgroundSoftBlue)
                }
                
                // Dark Theme Colors
                ColorSection(title: "Dark Theme Colors") {
                    ColorSwatch(name: "Dark Navy", color: BrandKit.Colors.darkNavy)
                    ColorSwatch(name: "Dark Purple", color: BrandKit.Colors.darkPurple)
                }
                
                // Status Colors
                ColorSection(title: "Status Colors") {
                    ColorSwatch(name: "Error", color: BrandKit.Colors.error)
                    ColorSwatch(name: "Warning", color: BrandKit.Colors.warning)
                    ColorSwatch(name: "Info", color: BrandKit.Colors.info)
                }
                
                // Metadata Colors
                ColorSection(title: "Metadata Colors") {
                    ColorSwatch(name: "Green", color: BrandKit.Colors.metadataGreen)
                    ColorSwatch(name: "Red", color: BrandKit.Colors.metadataRed)
                    ColorSwatch(name: "Blue", color: BrandKit.Colors.metadataBlue)
                    ColorSwatch(name: "Orange", color: BrandKit.Colors.metadataOrange)
                    ColorSwatch(name: "Purple", color: BrandKit.Colors.metadataPurple)
                }
            }
            .padding(.vertical)
        }
        .brandBackground()
    }
}

struct ColorSection<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
            Text(title)
                .font(.headline)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: BrandKit.Spacing.medium) {
                    content
                }
                .padding(.horizontal)
            }
        }
    }
}

struct ColorSwatch: View {
    let name: String
    let color: Color
    
    var body: some View {
        VStack(spacing: BrandKit.Spacing.small) {
            RoundedRectangle(cornerRadius: BrandKit.CornerRadius.medium)
                .fill(color)
                .frame(width: 100, height: 100)
                .overlay(
                    RoundedRectangle(cornerRadius: BrandKit.CornerRadius.medium)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
            
            Text(name)
                .font(.caption)
                .multilineTextAlignment(.center)
                .frame(width: 100)
        }
    }
}

// MARK: - Gradients Showcase

struct GradientsShowcase: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: BrandKit.Spacing.large) {
                Text("Gradients")
                    .brandTitle()
                    .padding(.horizontal)
                
                VStack(spacing: BrandKit.Spacing.large) {
                    GradientCard(
                        title: "Primary Horizontal",
                        description: "Blue → Purple (left to right)",
                        gradient: AnyShapeStyle(BrandKit.Gradients.primaryHorizontal)
                    )
                    
                    GradientCard(
                        title: "Primary Diagonal",
                        description: "Blue → Purple (top-left to bottom-right)",
                        gradient: AnyShapeStyle(BrandKit.Gradients.primaryDiagonal)
                    )
                    
                    GradientCard(
                        title: "Primary Vertical",
                        description: "Blue → Purple (top to bottom)",
                        gradient: AnyShapeStyle(BrandKit.Gradients.primaryVertical)
                    )
                    
                    GradientCard(
                        title: "Background Light",
                        description: "Subtle background gradient",
                        gradient: AnyShapeStyle(BrandKit.Gradients.backgroundLight)
                    )
                    
                    GradientCard(
                        title: "Background Dark",
                        description: "Dark navy → purple",
                        gradient: AnyShapeStyle(BrandKit.Gradients.backgroundDark)
                    )
                    
                    GradientCard(
                        title: "Success",
                        description: "Green → Teal",
                        gradient: AnyShapeStyle(BrandKit.Gradients.success)
                    )
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .brandBackground()
    }
}

struct GradientCard: View {
    let title: String
    let description: String
    let gradient: AnyShapeStyle
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
            RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large)
                .fill(gradient)
                .frame(height: 150)
            
            VStack(alignment: .leading, spacing: BrandKit.Spacing.small) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.caption)
                    .foregroundColor(BrandKit.Colors.textSecondary)
            }
        }
        .padding(BrandKit.Spacing.large)
        .brandCardStyle()
    }
}

// MARK: - Buttons Showcase

struct ButtonsShowcase: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: BrandKit.Spacing.large) {
                Text("Buttons & Controls")
                    .brandTitle()
                    .padding(.horizontal)
                
                VStack(spacing: BrandKit.Spacing.extraLarge) {
                    // Primary Button
                    VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
                        Text("Primary Button")
                            .font(.headline)
                        
                        Button("Primary Action") {
                            print("Primary tapped")
                        }
                        .brandPrimaryButton()
                        
                        Text("Use for main CTAs and primary actions")
                            .font(.caption)
                            .foregroundColor(BrandKit.Colors.textSecondary)
                    }
                    
                    // Success Button
                    VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
                        Text("Success Button")
                            .font(.headline)
                        
                        Button("Complete") {
                            print("Success tapped")
                        }
                        .brandSuccessButton()
                        
                        Text("Use for completion actions")
                            .font(.caption)
                            .foregroundColor(BrandKit.Colors.textSecondary)
                    }
                    
                    // Secondary Button
                    VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
                        Text("Secondary Button")
                            .font(.headline)
                        
                        Button("Secondary Action") {
                            print("Secondary tapped")
                        }
                        .brandSecondaryButton()
                        
                        Text("Use for secondary actions")
                            .font(.caption)
                            .foregroundColor(BrandKit.Colors.textSecondary)
                    }
                    
                    // Compact Button
                    VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
                        Text("Compact Button")
                            .font(.headline)
                        
                        Button("Compact Action") {
                            print("Compact tapped")
                        }
                        .brandCompactButton()
                        
                        Text("Use for small actions in constrained spaces")
                            .font(.caption)
                            .foregroundColor(BrandKit.Colors.textSecondary)
                    }
                    
                    // Circle Buttons
                    VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
                        Text("Circle Buttons")
                            .font(.headline)
                        
                        HStack(spacing: BrandKit.Spacing.large) {
                            Button {
                                print("Circle tapped")
                            } label: {
                                Image(systemName: "plus")
                            }
                            .brandCircleButton(size: 40)
                            
                            Button {
                                print("Circle tapped")
                            } label: {
                                Image(systemName: "heart.fill")
                            }
                            .brandCircleButton(size: 50)
                            
                            Button {
                                print("Circle tapped")
                            } label: {
                                Image(systemName: "star.fill")
                            }
                            .brandCircleButton(size: 60)
                        }
                        
                        Text("Use for icon-only actions")
                            .font(.caption)
                            .foregroundColor(BrandKit.Colors.textSecondary)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .brandBackground()
    }
}

// MARK: - Components Showcase

struct ComponentsShowcase: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: BrandKit.Spacing.large) {
                Text("Pre-Built Components")
                    .brandTitle()
                    .padding(.horizontal)
                
                VStack(spacing: BrandKit.Spacing.extraLarge) {
                    // Loading Spinner
                    ComponentDemo(
                        title: "Loading Spinner",
                        description: "Animated loading indicator"
                    ) {
                        HStack(spacing: BrandKit.Spacing.large) {
                            BrandComponents.LoadingSpinner(size: 40)
                            BrandComponents.LoadingSpinner(size: 60)
                            BrandComponents.LoadingSpinner(size: 80)
                        }
                    }
                    
                    // Status Badges
                    ComponentDemo(
                        title: "Status Badge",
                        description: "Colored badges with icons"
                    ) {
                        VStack(spacing: BrandKit.Spacing.medium) {
                            BrandComponents.StatusBadge(
                                icon: "checkmark.circle.fill",
                                text: "Success",
                                color: BrandKit.Colors.successGreen
                            )
                            
                            BrandComponents.StatusBadge(
                                icon: "exclamationmark.triangle.fill",
                                text: "Warning",
                                color: BrandKit.Colors.warning
                            )
                            
                            BrandComponents.StatusBadge(
                                icon: "xmark.circle.fill",
                                text: "Error",
                                color: BrandKit.Colors.error
                            )
                            
                            BrandComponents.StatusBadge(
                                icon: "info.circle.fill",
                                text: "Info",
                                color: BrandKit.Colors.info
                            )
                        }
                    }
                    
                    // Metadata Chips
                    ComponentDemo(
                        title: "Metadata Chip",
                        description: "Small chips for displaying metadata"
                    ) {
                        VStack(spacing: BrandKit.Spacing.medium) {
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
                            
                            HStack {
                                BrandComponents.MetadataChip(
                                    icon: "arrow.up.arrow.down",
                                    value: "1920x1080",
                                    color: BrandKit.Colors.metadataPurple
                                )
                                
                                BrandComponents.MetadataChip(
                                    icon: "waveform",
                                    value: "Stereo",
                                    color: BrandKit.Colors.metadataGreen
                                )
                            }
                        }
                    }
                    
                    // Icon Circles
                    ComponentDemo(
                        title: "Icon Circle",
                        description: "Circular icons with gradient backgrounds"
                    ) {
                        HStack(spacing: BrandKit.Spacing.large) {
                            BrandComponents.IconCircle(
                                icon: "star.fill",
                                size: 60,
                                iconSize: 30
                            )
                            
                            BrandComponents.IconCircle(
                                icon: "heart.fill",
                                size: 80,
                                iconSize: 40
                            )
                            
                            BrandComponents.IconCircle(
                                icon: "bolt.fill",
                                size: 100,
                                iconSize: 50
                            )
                        }
                    }
                    
                    // Section Header
                    ComponentDemo(
                        title: "Section Header",
                        description: "Styled headers for content sections"
                    ) {
                        VStack(spacing: BrandKit.Spacing.medium) {
                            BrandComponents.SectionHeader(
                                icon: "star.fill",
                                title: "Featured"
                            )
                            
                            BrandComponents.SectionHeader(
                                icon: "clock.fill",
                                title: "Recent"
                            )
                            
                            BrandComponents.SectionHeader(
                                icon: "heart.fill",
                                title: "Favorites"
                            )
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .brandBackground()
    }
}

struct ComponentDemo<Content: View>: View {
    let title: String
    let description: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
            VStack(alignment: .leading, spacing: BrandKit.Spacing.small) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.caption)
                    .foregroundColor(BrandKit.Colors.textSecondary)
            }
            
            content
                .frame(maxWidth: .infinity)
                .padding(BrandKit.Spacing.large)
                .background(Color.white.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.medium))
        }
        .padding(BrandKit.Spacing.large)
        .brandCardStyle()
    }
}

// MARK: - Typography Showcase

struct TypographyShowcase: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: BrandKit.Spacing.large) {
                Text("Typography")
                    .brandTitle()
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: BrandKit.Spacing.extraLarge) {
                    // Font Sizes
                    TypeSection(title: "Font Sizes") {
                        TypeSample(size: BrandKit.Typography.titleLarge, label: "Title Large (28pt)")
                        TypeSample(size: BrandKit.Typography.titleMedium, label: "Title Medium (22pt)")
                        TypeSample(size: BrandKit.Typography.titleSmall, label: "Title Small (18pt)")
                        TypeSample(size: BrandKit.Typography.body, label: "Body (16pt)")
                        TypeSample(size: BrandKit.Typography.bodySmall, label: "Body Small (14pt)")
                        TypeSample(size: BrandKit.Typography.caption, label: "Caption (12pt)")
                        TypeSample(size: BrandKit.Typography.captionSmall, label: "Caption Small (10pt)")
                    }
                    
                    // Font Weights
                    TypeSection(title: "Font Weights") {
                        WeightSample(weight: .ultraLight, label: "Ultra Light")
                        WeightSample(weight: .light, label: "Light")
                        WeightSample(weight: .regular, label: "Regular")
                        WeightSample(weight: .medium, label: "Medium")
                        WeightSample(weight: .semibold, label: "Semibold")
                        WeightSample(weight: .bold, label: "Bold")
                        WeightSample(weight: .heavy, label: "Heavy")
                        WeightSample(weight: .black, label: "Black")
                    }
                    
                    // Text Styles
                    TypeSection(title: "Text Modifiers") {
                        VStack(spacing: BrandKit.Spacing.medium) {
                            Text("Brand Title")
                                .brandTitle()
                            
                            Text("Brand Subtitle")
                                .brandSubtitle()
                            
                            Text("Gradient Text")
                                .font(.system(size: 28, weight: .bold))
                                .brandGradientText()
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .brandBackground()
    }
}

struct TypeSection<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
                content
            }
            .padding(BrandKit.Spacing.large)
            .brandCardStyle()
        }
    }
}

struct TypeSample: View {
    let size: CGFloat
    let label: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.small) {
            Text("The quick brown fox")
                .font(.system(size: size))
            Text(label)
                .font(.caption)
                .foregroundColor(BrandKit.Colors.textSecondary)
        }
    }
}

struct WeightSample: View {
    let weight: Font.Weight
    let label: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.small) {
            Text("The quick brown fox")
                .font(.system(size: 18, weight: weight))
            Text(label)
                .font(.caption)
                .foregroundColor(BrandKit.Colors.textSecondary)
        }
    }
}

// MARK: - Spacing Showcase

struct SpacingShowcase: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: BrandKit.Spacing.large) {
                Text("Spacing & Layout")
                    .brandTitle()
                    .padding(.horizontal)
                
                VStack(spacing: BrandKit.Spacing.large) {
                    // Spacing Scale
                    SpacingSection(title: "Spacing Scale") {
                        SpacingSample(size: BrandKit.Spacing.extraSmall, label: "Extra Small (4pt)")
                        SpacingSample(size: BrandKit.Spacing.small, label: "Small (8pt)")
                        SpacingSample(size: BrandKit.Spacing.medium, label: "Medium (16pt)")
                        SpacingSample(size: BrandKit.Spacing.large, label: "Large (24pt)")
                        SpacingSample(size: BrandKit.Spacing.extraLarge, label: "Extra Large (32pt)")
                        SpacingSample(size: BrandKit.Spacing.huge, label: "Huge (40pt)")
                        SpacingSample(size: BrandKit.Spacing.massive, label: "Massive (48pt)")
                    }
                    
                    // Corner Radius
                    SpacingSection(title: "Corner Radius") {
                        CornerRadiusSample(radius: BrandKit.CornerRadius.small, label: "Small (8pt)")
                        CornerRadiusSample(radius: BrandKit.CornerRadius.medium, label: "Medium (12pt)")
                        CornerRadiusSample(radius: BrandKit.CornerRadius.large, label: "Large (16pt)")
                        CornerRadiusSample(radius: BrandKit.CornerRadius.extraLarge, label: "Extra Large (24pt)")
                    }
                    
                    // Icon Sizes
                    SpacingSection(title: "Icon Sizes") {
                        HStack(spacing: BrandKit.Spacing.large) {
                            IconSizeSample(size: BrandKit.IconSize.small, label: "Small")
                            IconSizeSample(size: BrandKit.IconSize.medium, label: "Medium")
                            IconSizeSample(size: BrandKit.IconSize.large, label: "Large")
                            IconSizeSample(size: BrandKit.IconSize.extraLarge, label: "XL")
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
        .brandBackground()
    }
}

struct SpacingSection<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: BrandKit.Spacing.large) {
                content
            }
            .padding(BrandKit.Spacing.large)
            .brandCardStyle()
        }
    }
}

struct SpacingSample: View {
    let size: CGFloat
    let label: String
    
    var body: some View {
        HStack(spacing: BrandKit.Spacing.medium) {
            Rectangle()
                .fill(BrandKit.Gradients.primaryHorizontal)
                .frame(width: size, height: 20)
            
            Text(label)
                .font(.caption)
        }
    }
}

struct CornerRadiusSample: View {
    let radius: CGFloat
    let label: String
    
    var body: some View {
        HStack(spacing: BrandKit.Spacing.medium) {
            RoundedRectangle(cornerRadius: radius)
                .fill(BrandKit.Gradients.primaryHorizontal)
                .frame(width: 60, height: 60)
            
            Text(label)
                .font(.caption)
        }
    }
}

struct IconSizeSample: View {
    let size: CGFloat
    let label: String
    
    var body: some View {
        VStack(spacing: BrandKit.Spacing.small) {
            Image(systemName: "star.fill")
                .font(.system(size: size))
                .foregroundStyle(BrandKit.Gradients.primaryHorizontal)
            
            Text(label)
                .font(.caption2)
        }
    }
}

// MARK: - Previews

#Preview("Showcase") {
    BrandKitShowcase()
}

#Preview("Colors") {
    ColorsShowcase()
}

#Preview("Gradients") {
    GradientsShowcase()
}

#Preview("Buttons") {
    ButtonsShowcase()
}

#Preview("Components") {
    ComponentsShowcase()
}

#Preview("Typography") {
    TypographyShowcase()
}

#Preview("Spacing") {
    SpacingShowcase()
}
