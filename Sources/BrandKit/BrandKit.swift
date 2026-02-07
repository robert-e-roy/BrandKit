//
//  BrandKit.swift
//  
//  Comprehensive brand identity and design system
//  Created: January 31, 2026
//
//  USAGE:
//  Import this file into any project to maintain consistent branding.
//  All colors, gradients, spacing, typography, and styling are centralized here.
//  Modern previews and usage examples are now available in `BrandKitExample.swift`.
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
        static let primaryDiagonal = LinearGradient(
            gradient: Gradient(colors: [Colors.primaryBlue, Colors.primaryPurple]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
        /// Vertical gradient: blue → purple
        static let primaryVertical = LinearGradient(
            gradient: Gradient(colors: [Colors.primaryBlue, Colors.primaryPurple]),
            startPoint: .top,
            endPoint: .bottom
        )
        
        // Background Gradients
        
        /// Light, subtle background gradient for main screens
        static let backgroundLight = LinearGradient(
            gradient: Gradient(colors: [
                Colors.backgroundLightBlue,
                Colors.backgroundSoftBlue
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
        /// Dark background gradient for launch/splash screens
        static let backgroundDark = LinearGradient(
            gradient: Gradient(colors: [
                Colors.darkNavy,
                Colors.darkPurple
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
        // Success Gradients
        
        /// Success gradient: green → teal
        static let success = LinearGradient(
            gradient: Gradient(colors: [
                Colors.successGreen,
                Colors.successTeal
            ]),
            startPoint: .leading,
            endPoint: .trailing
        )
        
        // Special Effects
        
        /// Radial glow effect (good for icons and highlights)
        static let glow = RadialGradient(
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
        static let emptyStateIcon = LinearGradient(
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
    enum Typography {
        // Font Sizes
        static let titleLarge: CGFloat = 28
        static let titleMedium: CGFloat = 22
        static let titleSmall: CGFloat = 18
        
        static let body: CGFloat = 16
        static let bodySmall: CGFloat = 14
        static let caption: CGFloat = 12
        static let captionSmall: CGFloat = 10
        
        // Font Weights
        enum Weight {
            static let ultraLight = Font.Weight.ultraLight
            static let thin = Font.Weight.thin
            static let light = Font.Weight.light
            static let regular = Font.Weight.regular
            static let medium = Font.Weight.medium
            static let semibold = Font.Weight.semibold
            static let bold = Font.Weight.bold
            static let heavy = Font.Weight.heavy
            static let black = Font.Weight.black
        }
        
        // Common Font Configurations
        
        /// Large title with rounded design
        static func largeTitle(weight: Font.Weight = .bold) -> Font {
            .system(size: titleLarge, weight: weight, design: .rounded)
        }
        
        /// Standard body text
        static func body(weight: Font.Weight = .regular) -> Font {
            .system(size: body, weight: weight)
        }
        
        /// Monospaced font for code/timestamps
        static func monospaced(size: CGFloat = body, weight: Font.Weight = .regular) -> Font {
            .system(size: size, weight: weight, design: .monospaced)
        }
    }
    
    // MARK: - Spacing
    
    /// Consistent spacing system
    enum Spacing {
        static let extraSmall: CGFloat = 4
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
        static let extraLarge: CGFloat = 32
        static let huge: CGFloat = 40
        static let massive: CGFloat = 48
    }
    
    // MARK: - Corner Radius
    
    /// Consistent corner radius values
    enum CornerRadius {
        static let small: CGFloat = 8
        static let medium: CGFloat = 12
        static let large: CGFloat = 16
        static let extraLarge: CGFloat = 24
        static let circle: CGFloat = 40
    }
    
    // MARK: - Shadows
    
    /// Shadow configurations for different elements
    enum Shadows {
        // Card Shadows
        static let cardColor = Color.black.opacity(0.08)
        static let cardRadius: CGFloat = 16
        static let cardOffset = CGSize(width: 0, height: 8)
        
        // Button Shadows
        static let buttonRadius: CGFloat = 12
        static let buttonOffset = CGSize(width: 0, height: 6)
        
        // Accent Shadows
        static let accentBlue = Color.blue.opacity(0.4)
        static let accentPurple = Color.purple.opacity(0.4)
        static let accentGreen = Color.green.opacity(0.4)
        
        // Small Shadow (for chips, tags, etc.)
        static let smallRadius: CGFloat = 6
        static let smallOffset = CGSize(width: 0, height: 3)
    }
    
    // MARK: - Icon Sizes
    
    /// Consistent icon sizing
    enum IconSize {
        static let small: CGFloat = 16
        static let medium: CGFloat = 24
        static let large: CGFloat = 32
        static let extraLarge: CGFloat = 50
        static let huge: CGFloat = 60
        
        // Circle Background Sizes
        static let circleSmall: CGFloat = 40
        static let circleMedium: CGFloat = 50
        static let circleLarge: CGFloat = 100
        static let circleExtraLarge: CGFloat = 120
    }
    
    // MARK: - Animations
    
    /// Animation configurations
    enum Animations {
        static let standardDuration: Double = 0.5
        static let fastDuration: Double = 0.3
        static let slowDuration: Double = 0.8
        
        static let standardDamping: Double = 0.8
        static let bouncyDamping: Double = 0.6
        static let stiffDamping: Double = 0.9
        
        /// Standard spring animation
        static var standardSpring: Animation {
            .spring(response: standardDuration, dampingFraction: standardDamping)
        }
        
        /// Bouncy spring animation
        static var bouncySpring: Animation {
            .spring(response: standardDuration, dampingFraction: bouncyDamping)
        }
        
        /// Fast, subtle animation
        static var fast: Animation {
            .easeInOut(duration: fastDuration)
        }
        
        /// Slow, smooth animation
        static var smooth: Animation {
            .easeInOut(duration: slowDuration)
        }
    }
    
    // MARK: - Opacities
    
    /// Standard opacity values
    enum Opacity {
        static let subtle: Double = 0.1
        static let light: Double = 0.2
        static let medium: Double = 0.3
        static let heavy: Double = 0.5
        static let veryHeavy: Double = 0.7
    }
}

// MARK: - View Modifiers

extension View {
    // MARK: - Card Styles
    
    /// Applies standard card styling with shadow
    func brandCardStyle() -> some View {
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
    func brandCompactCardStyle() -> some View {
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
    func brandPrimaryButton() -> some View {
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
    func brandSuccessButton() -> some View {
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
    func brandSecondaryButton() -> some View {
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
    func brandCompactButton() -> some View {
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
    func brandCircleButton(size: CGFloat = BrandKit.IconSize.circleMedium) -> some View {
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
    func brandBackground() -> some View {
        ZStack {
            BrandKit.Gradients.backgroundLight
                .ignoresSafeArea()
            self
        }
    }
    
    /// Dark background (for launch screens, etc.)
    func brandDarkBackground() -> some View {
        ZStack {
            BrandKit.Gradients.backgroundDark
                .ignoresSafeArea()
            self
        }
    }
    
    // MARK: - Text Styles
    
    /// Large title with brand styling
    func brandTitle() -> some View {
        self
            .font(BrandKit.Typography.largeTitle())
            .foregroundColor(BrandKit.Colors.textPrimary)
    }
    
    /// Subtitle text
    func brandSubtitle() -> some View {
        self
            .font(.subheadline)
            .foregroundColor(BrandKit.Colors.textSecondary)
    }
    
    /// Gradient text (works with Text views)
    func brandGradientText() -> some View {
        self.foregroundStyle(BrandKit.Gradients.primaryHorizontal)
    }
}

// MARK: - Reusable Components

/// Pre-built brand components that can be used across projects
enum BrandComponents {
    
    // MARK: - Loading Spinner
    
    /// Branded loading spinner with gradient
    struct LoadingSpinner: View {
        @State private var rotation: Double = 0
        let size: CGFloat
        
        init(size: CGFloat = 60) {
            self.size = size
        }
        
        var body: some View {
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
    struct StatusBadge: View {
        let icon: String
        let text: String
        let color: Color
        
        var body: some View {
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
    struct IconCircle: View {
        let icon: String
        let size: CGFloat
        let iconSize: CGFloat
        let gradient: LinearGradient
        
        init(
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
        
        var body: some View {
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
    struct SectionHeader: View {
        let icon: String
        let title: String
        
        var body: some View {
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

