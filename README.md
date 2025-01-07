# crypto_app_ui_flutter

**crypto_app_ui_flutter** is a demonstration Flutter project showcasing:

- **Custom theme management (light/dark, etc.)**
- **Animated “Swap” feature using `CustomMultiChildLayout`**
- **A custom widget layout and low-level animation control**

## “Swap” Feature Overview

The project implements an animated swap of two widgets (e.g., ETH ↔ BTC).
- When the button is tapped, an animation smoothly swaps their positions using `AnimationController` and `CustomMultiChildLayout`.
- It illustrates how to create complex custom layouts and manage them at a lower level.

## Features

1. **Flexible Theming System**  
   - Showcases various color schemes and typography settings.

2. **Animated “Swap”**  
   - Uses `CustomMultiChildLayout` for a customizable layout arrangement.  
   - Utilizes `AnimationController` and `Tween` for a smooth transition between two elements.



## Getting Started

1. **Clone the repository**:
```bash
   git clone github.com/ilkin0120/crypto_app_ui_flutter/
```

2. **Navigate to the project folder:**
```bash
   cd crypto-ui
```
3. Install dependencies:
```bash
   flutter pub get
```
5. **Run the project (emulator or real device):**
```bash
  flutter run
```
