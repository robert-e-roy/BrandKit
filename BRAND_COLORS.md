# Brand Color Palette

Complete color reference for "Time Stamp Adder" app branding.

## Primary Colors

### Primary Blue
- **SwiftUI**: `Color.blue` (System Blue)
- **RGB**: `(0, 122, 255)`
- **Hex**: `#007AFF`
- **Usage**: Primary actions, accent elements, main brand color

### Primary Purple
- **SwiftUI**: `Color.purple` (System Purple)
- **RGB**: `(175, 82, 222)`
- **Hex**: `#AF52DE`
- **Usage**: Secondary brand color, gradient partner

---

## Success Colors

### Success Green
- **SwiftUI**: `Color.green` (System Green)
- **RGB**: `(52, 199, 89)`
- **Hex**: `#34C759`
- **Usage**: Success states, completion actions

### Success Teal
- **RGB**: `(51, 204, 128)` (custom)
- **Hex**: `#33CC80`
- **Usage**: Success gradient partner

---

## Background Colors

### Background Light Blue
- **RGB**: `(242, 247, 255)` (custom)
- **Hex**: `#F2F7FF`
- **Usage**: Main screen background (light)

### Background Soft Blue
- **RGB**: `(224, 235, 250)` (custom)
- **Hex**: `#E0EBFA`
- **Usage**: Main screen background (darker accent)

### Card Background
- **SwiftUI**: `Color.white`
- **RGB**: `(255, 255, 255)`
- **Hex**: `#FFFFFF`
- **Usage**: Cards, containers, elevated surfaces

---

## Dark Theme Colors

### Dark Navy
- **RGB**: `(26, 51, 115)` (custom)
- **Hex**: `#1A3373`
- **Usage**: Dark backgrounds, splash screens

### Dark Purple
- **RGB**: `(51, 26, 89)` (custom)
- **Hex**: `#331A59`
- **Usage**: Dark background gradient partner

---

## Status Colors

### Error Red
- **SwiftUI**: `Color.red` (System Red)
- **RGB**: `(255, 59, 48)`
- **Hex**: `#FF3B30`
- **Usage**: Error states, destructive actions

### Warning Orange
- **SwiftUI**: `Color.orange` (System Orange)
- **RGB**: `(255, 149, 0)`
- **Hex**: `#FF9500`
- **Usage**: Warnings, cautions

### Info Blue
- **SwiftUI**: `Color.blue` (System Blue)
- **RGB**: `(0, 122, 255)`
- **Hex**: `#007AFF`
- **Usage**: Information, hints

---

## Metadata Colors

### Metadata Green (Start/Play)
- **SwiftUI**: `Color.green`
- **RGB**: `(52, 199, 89)`
- **Hex**: `#34C759`
- **Usage**: Start time, play indicators

### Metadata Red (Stop/End)
- **SwiftUI**: `Color.red`
- **RGB**: `(255, 59, 48)`
- **Hex**: `#FF3B30`
- **Usage**: End time, stop indicators

### Metadata Blue (Duration/Time)
- **SwiftUI**: `Color.blue`
- **RGB**: `(0, 122, 255)`
- **Hex**: `#007AFF`
- **Usage**: Duration, time-based metadata

### Metadata Orange (Speed/Rate)
- **SwiftUI**: `Color.orange`
- **RGB**: `(255, 149, 0)`
- **Hex**: `#FF9500`
- **Usage**: Frame rate, speed indicators

### Metadata Purple (Count/Stats)
- **SwiftUI**: `Color.purple`
- **RGB**: `(175, 82, 222)`
- **Hex**: `#AF52DE`
- **Usage**: Frame count, statistics

---

## Text Colors

### Text Primary
- **SwiftUI**: `Color.primary`
- **Adaptive**: Black (light mode) / White (dark mode)
- **Usage**: Main body text, headings

### Text Secondary
- **SwiftUI**: `Color.secondary`
- **Adaptive**: Gray (light mode) / Light gray (dark mode)
- **Usage**: Subtitles, captions, secondary information

---

## Gradients

### Primary Gradient (Blue → Purple)
```
Start: #007AFF (Blue)
End:   #AF52DE (Purple)
```
**Usage**: Primary buttons, accent elements, branding

### Background Light Gradient
```
Start: #F2F7FF (Light Blue)
End:   #E0EBFA (Soft Blue)
```
**Usage**: Main screen backgrounds

### Background Dark Gradient
```
Start: #1A3373 (Dark Navy)
End:   #331A59 (Dark Purple)
```
**Usage**: Splash screens, dark themes

### Success Gradient (Green → Teal)
```
Start: #34C759 (Green)
End:   #33CC80 (Teal)
```
**Usage**: Success buttons, completion states

---

## Opacity Levels

- **Subtle**: 10% (0.1) - Very light backgrounds
- **Light**: 20% (0.2) - Light overlays
- **Medium**: 30% (0.3) - Borders, strokes
- **Heavy**: 50% (0.5) - Disabled states
- **Very Heavy**: 70% (0.7) - Strong overlays

---

## Shadow Colors

### Card Shadow
- **Base**: Black
- **Opacity**: 8% (0.08)
- **Usage**: Cards, containers

### Accent Shadows
- **Blue**: Blue at 40% opacity
- **Purple**: Purple at 40% opacity
- **Green**: Green at 40% opacity
- **Usage**: Button shadows, highlights

---

## Color Usage Guidelines

### Do's ✅
- Use Primary Blue for main actions and CTAs
- Use Success Green for confirmations
- Use gradients for visual interest
- Maintain consistent opacity levels
- Use metadata colors for their designated purposes

### Don'ts ❌
- Don't use red for non-error states
- Don't mix custom colors with system colors haphazardly
- Don't create new shades without documenting them
- Don't use colors outside their designated purposes

---

## Accessibility Notes

- All text colors meet WCAG AA standards for contrast
- System colors adapt automatically to Dark Mode
- Custom colors should be tested in both light and dark modes
- Consider color-blind users when using color to convey information

---

## Export Formats

### CSS/Web
```css
:root {
    --primary-blue: #007AFF;
    --primary-purple: #AF52DE;
    --success-green: #34C759;
    --success-teal: #33CC80;
    --bg-light-blue: #F2F7FF;
    --bg-soft-blue: #E0EBFA;
    --dark-navy: #1A3373;
    --dark-purple: #331A59;
}
```

### Figma/Sketch
Copy RGB values above directly into design tools.

### Android (colors.xml)
```xml
<color name="primary_blue">#007AFF</color>
<color name="primary_purple">#AF52DE</color>
<color name="success_green">#34C759</color>
<color name="success_teal">#33CC80</color>
```

---

**Last Updated**: January 31, 2026
**Version**: 1.0
**App**: Time Stamp Adder
