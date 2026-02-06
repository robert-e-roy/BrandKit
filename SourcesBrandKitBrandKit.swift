//  BrandKit.swift
//  
//  Comprehensive brand identity and design system
//  Created: January 31, 2026
//
//  USAGE:
//  Import this file into any project to maintain consistent branding.
//  All colors, gradients, spacing, typography, and styling are centralized here.
//

import SwiftUI

// MARK: - Brand Identity

/// Complete brand identity system with colors, gradients, typography, and styling
public enum BrandKit {
    
    // MARK: - Color Palette
    
    /// Primary brand colors
    public enum Colors {
        // Primary Colors
        public static let primaryBlue = Color.blue
        public static let primaryPurple = Color.purple
        
        // Success Colors
        public static let successGreen = Color.green
        public static let successTeal = Color(red: 0.2, green: 0.8, blue: 0.5)
        
        // Background Colors
        public static let backgroundLightBlue = Color(red: 0.95, green: 0.97, blue: 1.0)
        public static let backgroundSoftBlue = Color(red: 0.88, green: 0.92, blue: 0.98)
        
        // Dark Theme Colors
        public static let darkNavy = Color(red: 0.1, green: 0.2, blue: 0.45)
        public static let darkPurple = Color(red: 0.2, green: 0.1, blue: 0.35)
        
        // Neutral Colors
        public static let cardBackground = Color.white
        public static let textPrimary = Color.primary
        public static let textSecondary = Color.secondary
        
        // Status Colors
        public static let error = Color.red
        public static let warning = Color.orange
        public static let info = Color.blue
        
        // Metadata Colors
        public static let metadataGreen = Color.green
        public static let metadataRed = Color.red
        public static let metadataBlue = Color.blue
        public static let metadataOrange = Color.orange
        public static let metadataPurple = Color.purple
        
        /// Create a color with custom opacity
        public static func overlay(opacity: Double = 0.2) -> Color {
            Color.white.opacity(opacity)
        }
    }
    
    // MARK: - Gradients
    
    /// Pre-defined gradients used throughout the brand
    public enum Gradients {
        // Primary Gradients
        
        /// Horizontal gradient: blue → purple
        public static let primaryHorizontal = LinearGradient(
            gradient: Gradient(colors: [Colors.primaryBlue, Colors.primaryPurple]),
            startPoint: .leading,
            endPoint: .trailing
        )
        
        /// Diagonal gradient: blue → purple (top-left to bottom-right)
        public static let primaryDiagonal = LinearGradient(
            gradient: Gradient(colors: [Colors.primaryBlue, Colors.primaryPurple]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
        /// Vertical gradient: blue → purple
        public static let primaryVertical = LinearGradient(
            gradient: Gradient(colors: [Colors.primaryBlue, Colors.primaryPurple]),
            startPoint: .top,
            endPoint: .bottom
        )
        
        // Background Gradients
        
        /// Light, subtle background gradient for main screens
        public static let backgroundLight = LinearGradient(
            gradient: Gradient(colors: [
                Colors.backgroundLightBlue,
                Colors.backgroundSoftBlue
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
        /// Dark background gradient for launch/splash screens
        public static let backgroundDark = LinearGradient(
            gradient: Gradient(colors: [
                Colors.darkNavy,
                Colors.darkPurple
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
        // Success Gradients
        
        /// Success gradient: green → teal
        public static let success = LinearGradient(
            gradient: Gradient(colors: [
                Colors.successGreen,
                Colors.successTeal
            ]),
            startPoint: .leading,
            endPoint: .trailing
        )
        
        // Special Effects
        
        /// Radial glow effect (good for icons and highlights)
        public static let glow = RadialGradient(
            gradient: Gradient(colors: [
                Colors.primaryBlue.opacity(0.3),
                Color.clear
            ]),
            center: .center,
            startRadius: 50,
            endRadius: 120
        )
        
        // Empty State Gradients
        
        /// Subtle gradient for empty state icons
        public static let emptyStateIcon = LinearGradient(
            gradient: Gradient(colors: [
                Colors.primaryBlue.opacity(0.1),
                Colors.primaryPurple.opacity(0.1)
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
    
    // MARK: - Typography
    
    /// Typography system with font sizes and weights
    public enum Typography {
        // Font Sizes
        public static let titleLarge: CGFloat = 28
        public static let titleMedium: CGFloat = 22
        public static let titleSmall: CGFloat = 18
        
        public static let body: CGFloat = 16
        public static let bodySmall: CGFloat = 14
        public static let caption: CGFloat = 12
        public static let captionSmall: CGFloat = 10
        
        // Font Weights
        public enum Weight {
            public static let ultraLight = Font.Weight.ultraLight
            public static let thin = Font.Weight.thin
            public static let light = Font.Weight.light
            public static let regular = Font.Weight.regular
            public static let medium = Font.Weight.medium
            public static let semibold = Font.Weight.semibold
            public static let bold = Font.Weight.bold
            public static let heavy = Font.Weight.heavy
            public static let black = Font.Weight.black
        }
        
        // Common Font Configurations
        
        /// Large title with rounded design
        public static func largeTitle(weight: Font.Weight = .bold) -> Font {
            .system(size: titleLarge, weight: weight, design: .rounded)
        }
        
        /// Standard body text
        public static func body(weight: Font.Weight = .regular) -> Font {
            .system(size: body, weight: weight)
        }
        
        /// Monospaced font for code/timestamps
        public static func monospaced(size: CGFloat = body, weight: Font.Weight = .regular) -> Font {
            .system(size: size, weight: weight, design: .monospaced)
        }
    }
    
    // MARK: - Spacing
    
    /// Consistent spacing system
    public enum Spacing {
        public static let extraSmall: CGFloat = 4
        public static let small: CGFloat = 8
        public static let medium: CGFloat = 16
        public static let large: CGFloat = 24
        public static let extraLarge: CGFloat = 32
        public static let huge: CGFloat = 40
        public static let massive: CGFloat = 48
    }
    
    // MARK: - Corner Radius
    
    /// Consistent corner radius values
    public enum CornerRadius {
        public static let small: CGFloat = 8
        public static let medium: CGFloat = 12
        public static let large: CGFloat = 16
        public static let extraLarge: CGFloat = 24
        public static let circle: CGFloat = 40
    }
    
    // MARK: - Shadows
    
    /// Shadow configurations for different elements
    public enum Shadows {
        // Card Shadows
        public static let cardColor = Color.black.opacity(0.08)
        public static let cardRadius: CGFloat = 16
        public static let cardOffset = CGSize(width: 0, height: 8)
        
        // Button Shadows
        public static let buttonRadius: CGFloat = 12
        public static let buttonOffset = CGSize(width: 0, height: 6)
        
        // Accent Shadows
        public static let accentBlue = Color.blue.opacity(0.4)
        public static let accentPurple = Color.purple.opacity(0.4)
        public static let accentGreen = Color.green.opacity(0.4)
        
        // Small Shadow (for chips, tags, etc.)
        public static let smallRadius: CGFloat = 6
        public static let smallOffset = CGSize(width: 0, height: 3)
    }
    
    // MARK: - Icon Sizes
    
    /// Consistent icon sizing
    public enum IconSize {
        public static let small: CGFloat = 16
        public static let medium: CGFloat = 24
        public static let large: CGFloat = 32
        public static let extraLarge: CGFloat = 50
        public static let huge: CGFloat = 60
        
        // Circle Background Sizes
        public static let circleSmall: CGFloat = 40
        public static let circleMedium: CGFloat = 50
        public static let circleLarge: CGFloat = 100
        public static let circleExtraLarge: CGFloat = 120
    }
    
    // MARK: - Animations
    
    /// Animation configurations
    public enum Animations {
        public static let standardDuration: Double = 0.5
        public static let fastDuration: Double = 0.3
        public static let slowDuration: Double = 0.8
        
        public static let standardDamping: Double = 0.8
        public static let bouncyDamping: Double = 0.6
        public static let stiffDamping: Double = 0.9
        
        /// Standard spring animation
        public static var standardSpring: Animation {
            .spring(response: standardDuration, dampingFraction: standardDamping)
        }
        
        /// Bouncy spring animation
        public static var bouncySpring: Animation {
            .spring(response: standardDuration, dampingFraction: bouncyDamping)
        }
        
        /// Fast, subtle animation
        public static var fast: Animation {
            .easeInOut(duration: fastDuration)
        }
        
        /// Slow, smooth animation
        public static var smooth: Animation {
            .easeInOut(duration: slowDuration)
        }
    }
    
    // MARK: - Opacities
    
    /// Standard opacity values
    public enum Opacity {
        public static let subtle: Double = 0.1
        public static let light: Double = 0.2
        public static let medium: Double = 0.3
        public static let heavy: Double = 0.5
        public static let veryHeavy: Double = 0.7
    }
}

// MARK: - View Modifiers

extension View {
    // MARK: - Card Styles
    
    /// Applies standard card styling with shadow
    public func brandCardStyle() -> some View {
        self
            .background(BrandKit.Colors.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.extraLarge))
            .shadow(
                color: BrandKit.Shadows.cardColor,
                radius: BrandKit.Shadows.cardRadius,
                x: BrandKit.Shadows.cardOffset.width,
                y: BrandKit.Shadows.cardOffset.height
            )
    }
    
    /// Compact card style with smaller corner radius
    public func brandCompactCardStyle() -> some View {
        self
            .background(BrandKit.Colors.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.medium))
            .shadow(
                color: BrandKit.Shadows.cardColor,
                radius: BrandKit.Shadows.smallRadius,
                x: BrandKit.Shadows.smallOffset.width,
                y: BrandKit.Shadows.smallOffset.height
            )
    }
    
    // MARK: - Button Styles
    
    /// Primary button with blue-purple gradient
    public func brandPrimaryButton() -> some View {
        self
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, BrandKit.Spacing.medium)
            .background(BrandKit.Gradients.primaryHorizontal)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large))
            .shadow(
                color: BrandKit.Shadows.accentBlue,
                radius: BrandKit.Shadows.buttonRadius,
                x: BrandKit.Shadows.buttonOffset.width,
                y: BrandKit.Shadows.buttonOffset.height
            )
    }
    
    /// Success button with green gradient
    public func brandSuccessButton() -> some View {
        self
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, BrandKit.Spacing.medium)
            .background(BrandKit.Gradients.success)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large))
            .shadow(
                color: BrandKit.Shadows.accentGreen,
                radius: BrandKit.Shadows.buttonRadius,
                x: BrandKit.Shadows.buttonOffset.width,
                y: BrandKit.Shadows.buttonOffset.height
            )
    }
    
    /// Secondary button (outlined, no fill)
    public func brandSecondaryButton() -> some View {
        self
            .foregroundColor(BrandKit.Colors.primaryBlue)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(BrandKit.Colors.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large))
            .overlay(
                RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large)
                    .stroke(BrandKit.Colors.primaryBlue.opacity(BrandKit.Opacity.medium), lineWidth: 2)
            )
    }
    
    /// Compact button style for small actions
    public func brandCompactButton() -> some View {
        self
            .foregroundColor(BrandKit.Colors.primaryBlue)
            .frame(maxWidth: .infinity)
            .padding(.vertical, BrandKit.Spacing.medium)
            .background(BrandKit.Colors.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.medium))
            .shadow(
                color: BrandKit.Shadows.cardColor,
                radius: BrandKit.Shadows.smallRadius,
                x: BrandKit.Shadows.smallOffset.width,
                y: BrandKit.Shadows.smallOffset.height
            )
    }
    
    /// Circular icon button with gradient
    public func brandCircleButton(size: CGFloat = BrandKit.IconSize.circleMedium) -> some View {
        self
            .foregroundColor(.white)
            .frame(width: size, height: size)
            .background(BrandKit.Gradients.primaryDiagonal)
            .clipShape(Circle())
            .shadow(
                color: BrandKit.Shadows.accentBlue,
                radius: BrandKit.Shadows.smallRadius,
                x: 0,
                y: 4
            )
    }
    
    // MARK: - Background Styles
    
    /// Standard app background with gradient
    public func brandBackground() -> some View {
        ZStack {
            BrandKit.Gradients.backgroundLight
                .ignoresSafeArea()
            self
        }
    }
    
    /// Dark background (for launch screens, etc.)
    public func brandDarkBackground() -> some View {
        ZStack {
            BrandKit.Gradients.backgroundDark
                .ignoresSafeArea()
            self
        }
    }
    
    // MARK: - Text Styles
    
    /// Large title with brand styling
    public func brandTitle() -> some View {
        self
            .font(BrandKit.Typography.largeTitle())
            .foregroundColor(BrandKit.Colors.textPrimary)
    }
    
    /// Subtitle text
    public func brandSubtitle() -> some View {
        self
            .font(.subheadline)
            .foregroundColor(BrandKit.Colors.textSecondary)
    }
    
    /// Gradient text (works with Text views)
    public func brandGradientText() -> some View {
        self.foregroundStyle(BrandKit.Gradients.primaryHorizontal)
    }
}

// MARK: - Reusable Components

/// Pre-built brand components that can be used across projects
public enum BrandComponents {
    
    // MARK: - Loading Spinner
    
    /// Branded loading spinner with gradient
    public struct LoadingSpinner: View {
        @State private var rotation: Double = 0
        let size: CGFloat
        
        public init(size: CGFloat = 60) {
            self.size = size
        }
        
        public var body: some View {
            ZStack {
                Circle()
                    .stroke(BrandKit.Colors.primaryBlue.opacity(0.2), lineWidth: 4)
                    .frame(width: size, height: size)
                
                Circle()
                    .trim(from: 0, to: 0.7)
                    .stroke(
                        BrandKit.Gradients.primaryHorizontal,
                        style: StrokeStyle(lineWidth: 4, lineCap: .round)
                    )
                    .frame(width: size, height: size)
                    .rotationEffect(.degrees(rotation))
                    .onAppear {
                        withAnimation(.linear(duration: 1.0).repeatForever(autoreverses: false)) {
                            rotation = 360
                        }
                    }
            }
        }
    }
    
    // MARK: - Status Badge
    
    /// Colored status badge with icon
    public struct StatusBadge: View {
        let icon: String
        let text: String
        let color: Color
        
        public init(icon: String, text: String, color: Color) {
            self.icon = icon
            self.text = text
            self.color = color
        }
        
        public var body: some View {
            HStack(spacing: BrandKit.Spacing.small) {
                Image(systemName: icon)
                    .font(.caption)
                Text(text)
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .padding(.horizontal, BrandKit.Spacing.medium)
            .padding(.vertical, BrandKit.Spacing.small)
            .background(color.opacity(BrandKit.Opacity.subtle))
            .clipShape(Capsule())
        }
    }
    
    // MARK: - Metadata Chip
    
    /// Small chip showing metadata (like duration, fps, etc.)
    public struct MetadataChip: View {
        let icon: String
        let value: String
        let color: Color
        
        public init(icon: String, value: String, color: Color) {
            self.icon = icon
            self.value = value
            self.color = color
        }
        
        public var body: some View {
            HStack(spacing: 6) {
                Image(systemName: icon)
                    .font(.caption)
                    .foregroundColor(color)
                
                Text(value)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(BrandKit.Colors.textPrimary)
            }
            .padding(.horizontal, BrandKit.Spacing.medium)
            .padding(.vertical, BrandKit.Spacing.small)
            .background(color.opacity(BrandKit.Opacity.subtle))
            .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.small))
        }
    }
    
    // MARK: - Icon Circle
    
    /// Circular icon with gradient background
    public struct IconCircle: View {
        let icon: String
        let size: CGFloat
        let iconSize: CGFloat
        let gradient: LinearGradient
        
        public init(
            icon: String,
            size: CGFloat = BrandKit.IconSize.circleLarge,
            iconSize: CGFloat = BrandKit.IconSize.extraLarge,
            gradient: LinearGradient = BrandKit.Gradients.primaryDiagonal
        ) {
            self.icon = icon
            self.size = size
            self.iconSize = iconSize
            self.gradient = gradient
        }
        
        public var body: some View {
            ZStack {
                Circle()
                    .fill(BrandKit.Gradients.emptyStateIcon)
                    .frame(width: size, height: size)
                
                Image(systemName: icon)
                    .font(.system(size: iconSize))
                    .foregroundStyle(gradient)
            }
        }
    }
    
    // MARK: - Section Header
    
    /// Styled section header with icon
    public struct SectionHeader: View {
        let icon: String
        let title: String
        
        public init(icon: String, title: String) {
            self.icon = icon
            self.title = title
        }
        
        public var body: some View {
            HStack {
                Image(systemName: icon)
                    .font(.title3)
                    .foregroundStyle(BrandKit.Gradients.primaryDiagonal)
                
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Spacer()
            }
        }
    }
}
