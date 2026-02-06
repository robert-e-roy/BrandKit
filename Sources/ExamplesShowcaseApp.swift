//
//  ShowcaseApp.swift
//  BrandKit Showcase Example
//
//  Drop this file into a new iOS/macOS app to instantly see all BrandKit styles.
//  This demonstrates how to use BrandKit in a real application.
//
//  Created: February 6, 2026
//

import SwiftUI
import BrandKit

@main
struct BrandKitShowcaseApp: App {
    var body: some Scene {
        WindowGroup {
            BrandKitShowcase()
        }
    }
}

// MARK: - Example Usage in a Real App

/// Example: Real-world app screen using BrandKit
struct ExampleAppView: View {
    @State private var isLoading = false
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "square.stack.fill")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                .tag(2)
        }
    }
}

// MARK: - Home View Example

struct HomeView: View {
    @State private var isLoading = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: BrandKit.Spacing.large) {
                    // Hero Section
                    heroSection
                    
                    // Stats Cards
                    statsSection
                    
                    // Recent Items
                    recentSection
                    
                    // Actions
                    actionsSection
                }
                .padding()
            }
            .brandBackground()
            .navigationTitle("Dashboard")
        }
    }
    
    var heroSection: some View {
        VStack(spacing: BrandKit.Spacing.medium) {
            BrandComponents.IconCircle(
                icon: "star.fill",
                size: 120,
                iconSize: 60
            )
            
            Text("Welcome Back!")
                .brandTitle()
                .brandGradientText()
            
            Text("Here's what's happening today")
                .brandSubtitle()
        }
        .padding(.vertical, BrandKit.Spacing.large)
    }
    
    var statsSection: some View {
        VStack(spacing: BrandKit.Spacing.medium) {
            BrandComponents.SectionHeader(
                icon: "chart.bar.fill",
                title: "Your Stats"
            )
            
            HStack(spacing: BrandKit.Spacing.medium) {
                StatCard(
                    icon: "video.fill",
                    value: "24",
                    label: "Videos",
                    color: BrandKit.Colors.primaryBlue
                )
                
                StatCard(
                    icon: "clock.fill",
                    value: "3.2h",
                    label: "Duration",
                    color: BrandKit.Colors.primaryPurple
                )
                
                StatCard(
                    icon: "checkmark.circle.fill",
                    value: "18",
                    label: "Completed",
                    color: BrandKit.Colors.successGreen
                )
            }
        }
    }
    
    var recentSection: some View {
        VStack(spacing: BrandKit.Spacing.medium) {
            BrandComponents.SectionHeader(
                icon: "clock.fill",
                title: "Recent Activity"
            )
            
            VStack(spacing: BrandKit.Spacing.medium) {
                RecentItem(
                    title: "Video Project 1",
                    subtitle: "Edited 2 hours ago",
                    icon: "video.fill",
                    status: "Processing"
                )
                
                RecentItem(
                    title: "Marketing Campaign",
                    subtitle: "Completed yesterday",
                    icon: "megaphone.fill",
                    status: "Complete"
                )
                
                RecentItem(
                    title: "Product Demo",
                    subtitle: "Started last week",
                    icon: "play.rectangle.fill",
                    status: "In Progress"
                )
            }
        }
    }
    
    var actionsSection: some View {
        VStack(spacing: BrandKit.Spacing.medium) {
            Button("Create New Project") {
                print("Create new project")
            }
            .brandPrimaryButton()
            
            Button("View All Projects") {
                print("View all")
            }
            .brandSecondaryButton()
        }
    }
}

// MARK: - Supporting Components

struct StatCard: View {
    let icon: String
    let value: String
    let label: String
    let color: Color
    
    var body: some View {
        VStack(spacing: BrandKit.Spacing.small) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(color)
            
            Text(value)
                .font(.title)
                .fontWeight(.bold)
            
            Text(label)
                .font(.caption)
                .foregroundColor(BrandKit.Colors.textSecondary)
        }
        .frame(maxWidth: .infinity)
        .padding(BrandKit.Spacing.medium)
        .brandCardStyle()
    }
}

struct RecentItem: View {
    let title: String
    let subtitle: String
    let icon: String
    let status: String
    
    var statusColor: Color {
        switch status {
        case "Complete": return BrandKit.Colors.successGreen
        case "Processing": return BrandKit.Colors.warning
        default: return BrandKit.Colors.info
        }
    }
    
    var body: some View {
        HStack(spacing: BrandKit.Spacing.medium) {
            BrandComponents.IconCircle(
                icon: icon,
                size: 50,
                iconSize: 24
            )
            
            VStack(alignment: .leading, spacing: BrandKit.Spacing.extraSmall) {
                Text(title)
                    .font(.headline)
                
                Text(subtitle)
                    .font(.caption)
                    .foregroundColor(BrandKit.Colors.textSecondary)
            }
            
            Spacer()
            
            BrandComponents.StatusBadge(
                icon: "circle.fill",
                text: status,
                color: statusColor
            )
        }
        .padding(BrandKit.Spacing.medium)
        .brandCompactCardStyle()
    }
}

// MARK: - Library View Example

struct LibraryView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: BrandKit.Spacing.large) {
                    // Filters
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: BrandKit.Spacing.medium) {
                            FilterChip(label: "All", isSelected: true)
                            FilterChip(label: "Videos", isSelected: false)
                            FilterChip(label: "Images", isSelected: false)
                            FilterChip(label: "Documents", isSelected: false)
                        }
                        .padding(.horizontal)
                    }
                    
                    // Grid of items
                    LazyVGrid(
                        columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ],
                        spacing: BrandKit.Spacing.medium
                    ) {
                        ForEach(0..<6, id: \.self) { index in
                            LibraryItemCard(index: index)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .brandBackground()
            .navigationTitle("Library")
        }
    }
}

struct FilterChip: View {
    let label: String
    let isSelected: Bool
    
    var body: some View {
        Text(label)
            .font(.subheadline)
            .fontWeight(isSelected ? .semibold : .regular)
            .padding(.horizontal, BrandKit.Spacing.medium)
            .padding(.vertical, BrandKit.Spacing.small)
            .background(
                isSelected ?
                    AnyShapeStyle(BrandKit.Gradients.primaryHorizontal) :
                    AnyShapeStyle(Color.gray.opacity(0.1))
            )
            .foregroundColor(isSelected ? .white : BrandKit.Colors.textPrimary)
            .clipShape(Capsule())
    }
}

struct LibraryItemCard: View {
    let index: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.small) {
            // Thumbnail
            RoundedRectangle(cornerRadius: BrandKit.CornerRadius.medium)
                .fill(BrandKit.Gradients.primaryDiagonal)
                .frame(height: 120)
                .overlay(
                    Image(systemName: "play.fill")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
            
            // Info
            VStack(alignment: .leading, spacing: BrandKit.Spacing.extraSmall) {
                Text("Item \(index + 1)")
                    .font(.headline)
                
                HStack {
                    BrandComponents.MetadataChip(
                        icon: "clock.fill",
                        value: "2:45",
                        color: BrandKit.Colors.metadataBlue
                    )
                    
                    Spacer()
                }
            }
        }
        .padding(BrandKit.Spacing.small)
        .brandCardStyle()
    }
}

// MARK: - Settings View Example

struct SettingsView: View {
    @State private var notificationsEnabled = true
    @State private var darkModeEnabled = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: BrandKit.Spacing.large) {
                    // Profile Section
                    VStack(spacing: BrandKit.Spacing.medium) {
                        BrandComponents.IconCircle(
                            icon: "person.fill",
                            size: 100,
                            iconSize: 50
                        )
                        
                        Text("John Doe")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("john.doe@example.com")
                            .font(.subheadline)
                            .foregroundColor(BrandKit.Colors.textSecondary)
                        
                        Button("Edit Profile") {
                            print("Edit profile")
                        }
                        .brandSecondaryButton()
                        .padding(.horizontal, BrandKit.Spacing.huge)
                    }
                    .padding(.vertical, BrandKit.Spacing.large)
                    
                    // Settings Sections
                    VStack(spacing: BrandKit.Spacing.medium) {
                        SettingsSection(title: "Preferences") {
                            SettingsToggle(
                                icon: "bell.fill",
                                title: "Notifications",
                                isOn: $notificationsEnabled
                            )
                            
                            SettingsToggle(
                                icon: "moon.fill",
                                title: "Dark Mode",
                                isOn: $darkModeEnabled
                            )
                        }
                        
                        SettingsSection(title: "About") {
                            SettingsRow(icon: "info.circle.fill", title: "Version", value: "1.0.0")
                            SettingsRow(icon: "star.fill", title: "Rate App", value: "")
                            SettingsRow(icon: "envelope.fill", title: "Contact", value: "")
                        }
                    }
                    
                    // Danger Zone
                    Button("Sign Out") {
                        print("Sign out")
                    }
                    .foregroundColor(BrandKit.Colors.error)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, BrandKit.Spacing.medium)
                    .background(BrandKit.Colors.error.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: BrandKit.CornerRadius.large))
                    .padding(.horizontal)
                }
            }
            .brandBackground()
            .navigationTitle("Settings")
        }
    }
}

struct SettingsSection<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: BrandKit.Spacing.medium) {
            Text(title)
                .font(.headline)
                .padding(.horizontal)
            
            VStack(spacing: 0) {
                content
            }
            .padding(BrandKit.Spacing.medium)
            .brandCardStyle()
            .padding(.horizontal)
        }
    }
}

struct SettingsToggle: View {
    let icon: String
    let title: String
    @Binding var isOn: Bool
    
    var body: some View {
        HStack(spacing: BrandKit.Spacing.medium) {
            Image(systemName: icon)
                .foregroundColor(BrandKit.Colors.primaryBlue)
                .frame(width: 24)
            
            Text(title)
            
            Spacer()
            
            Toggle("", isOn: $isOn)
                .labelsHidden()
        }
        .padding(.vertical, BrandKit.Spacing.small)
    }
}

struct SettingsRow: View {
    let icon: String
    let title: String
    let value: String
    
    var body: some View {
        HStack(spacing: BrandKit.Spacing.medium) {
            Image(systemName: icon)
                .foregroundColor(BrandKit.Colors.primaryBlue)
                .frame(width: 24)
            
            Text(title)
            
            Spacer()
            
            if !value.isEmpty {
                Text(value)
                    .foregroundColor(BrandKit.Colors.textSecondary)
            }
            
            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundColor(BrandKit.Colors.textSecondary)
        }
        .padding(.vertical, BrandKit.Spacing.small)
    }
}

// MARK: - Previews

#Preview("Showcase") {
    BrandKitShowcase()
}

#Preview("Example App") {
    ExampleAppView()
}

#Preview("Home") {
    HomeView()
}

#Preview("Library") {
    LibraryView()
}

#Preview("Settings") {
    SettingsView()
}
