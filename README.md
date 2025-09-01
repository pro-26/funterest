# 🎯 Funterest

**Beat Boredom with Fun Activities!**

[![Flutter](https://img.shields.io/badge/Flutter-^3.9.0-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-^3.9.0-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-iOS%20|%20Android%20|%20Web%20|%20Desktop-blue?style=for-the-badge)](https://flutter.dev)
[![API](https://img.shields.io/badge/API-Bored%20API-green?style=for-the-badge)](https://bored.api.lewagon.com/)

---

## 📖 Overview

**Funterest** is a cross-platform Flutter application designed to eliminate boredom by suggesting engaging activities tailored to your preferences. Whether you're looking for educational pursuits, recreational fun, or social interactions, Funterest has got you covered!

The app leverages the [Bored API](https://bored.api.lewagon.com/) to provide a vast collection of activity suggestions across multiple categories, ensuring you'll never run out of ideas for your free time.

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🎲 **Random Activity Suggestions** | Get instant, personalized activity ideas to combat boredom |
| 🏷️ **Category Selection** | Choose from 9+ categories: Education, Recreation, Social, DIY, Charity, Cooking, Relaxation, Music, and Busywork |
| 🔔 **Daily Reminders** | Receive smart daily notifications to try new activities |
| 📱 **Recent Activity History** | Keep track of your previously suggested activities |
| 🌐 **Cross-Platform Support** | Available on iOS, Android, Web, and Desktop platforms |
| 💾 **Offline Storage** | Cache activities for offline viewing |
| 🎨 **Modern UI/UX** | Clean, intuitive interface built with Flutter |

## 🎯 Activity Categories

- 📚 **Education** - Learn something new
- 🎮 **Recreational** - Fun and games
- 👥 **Social** - Connect with others
- 🔨 **DIY** - Do-it-yourself projects
- ❤️ **Charity** - Give back to community
- 🍳 **Cooking** - Culinary adventures
- 🧘 **Relaxation** - Unwind and destress
- 🎵 **Music** - Musical activities
- 📝 **Busywork** - Productive tasks

## 📱 Screenshots

<!-- 
Add your app screenshots here. Example structure:

| Home Screen | Activity Details | Categories |
|-------------|------------------|------------|
| ![Home](screenshots/home.png) | ![Details](screenshots/details.png) | ![Categories](screenshots/categories.png) |

You can also use a single row:
![App Demo](screenshots/app_demo.gif)
-->

*Screenshots will be added soon...*

## 🚀 Getting Started

### 📋 Prerequisites

Before running this project, make sure you have the following installed:

- ✅ **Flutter SDK** `^3.9.0` - [Install Flutter](https://docs.flutter.dev/get-started/install)
- ✅ **Dart SDK** `^3.9.0` - (Included with Flutter)
- ✅ **Android Studio** or **VS Code** with Flutter extensions
- ✅ **Git** - [Install Git](https://git-scm.com/downloads)

### 🔧 Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/muhammedshabeerop/funterest.git
   cd funterest
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**

   ```bash
   flutter run
   ```

   > **Note**: Make sure you have an emulator running or a physical device connected.

### 🏗️ Building for Production

#### 📱 Android

```bash
# Generate APK
flutter build apk --release

# Generate App Bundle (recommended for Play Store)
flutter build appbundle --release
```

#### 🍎 iOS

```bash
flutter build ios --release
```

#### 🌐 Web

```bash
flutter build web --release
```

#### 💻 Desktop

**Windows:**

```bash
flutter build windows --release
```

**macOS:**

```bash
flutter build macos --release
```

**Linux:**

```bash
flutter build linux --release
```

## 📦 Dependencies

### Core Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| [![GetX](https://img.shields.io/badge/get-^4.7.2-blue)](https://pub.dev/packages/get) | `^4.7.2` | State management, routing, and dependency injection |
| [![HTTP](https://img.shields.io/badge/http-^0.13.6-green)](https://pub.dev/packages/http) | `^0.13.6` | Making API calls to Bored API |
| [![Get Storage](https://img.shields.io/badge/get_storage-^2.1.1-orange)](https://pub.dev/packages/get_storage) | `^2.1.1` | Local data persistence and caching |
| [![Flutter Local Notifications](https://img.shields.io/badge/flutter_local_notifications-^18.0.1-purple)](https://pub.dev/packages/flutter_local_notifications) | `^18.0.1` | Daily reminder notifications |
| [![Permission Handler](https://img.shields.io/badge/permission_handler-^12.0.1-red)](https://pub.dev/packages/permission_handler) | `^12.0.1` | Handle notification permissions |
| [![Timezone](https://img.shields.io/badge/timezone-^0.9.4-yellow)](https://pub.dev/packages/timezone) | `^0.9.4` | Timezone support for notifications |

### Development Dependencies

- `flutter_test` - Testing framework
- `flutter_lints` - Code analysis and linting

## 🌐 API Integration

This app integrates with the **[Bored API](https://bored.api.lewagon.com/)** to fetch activity suggestions.

### API Endpoints Used

- `GET /api/activity/` - Fetch random activity
- `GET /api/activity?type={category}` - Fetch activity by category

### Example Response

```json
{
  "activity": "Learn Express.js",
  "type": "education",
  "participants": 1,
  "price": 0.1,
  "link": "https://expressjs.com/",
  "key": "3943506",
  "accessibility": 0.1
}
```

## 🏗️ Project Structure

```text
lib
├── app
│   ├── data
│   ├── modules
│   │   └── home
│   │       ├── bindings
│   │       │   └── home_binding.dart
│   │       ├── controllers
│   │       │   └── home_controller.dart
│   │       └── views
│   │           └── home_view.dart
│   ├── routes
│   │   ├── app_pages.dart
│   │   └── app_routes.dart
│   └── services
│       └── notification_service.dart
└── main.dart
```

## 🧪 Testing

Run tests using:

```bash
flutter test
```

For integration tests:

```bash
flutter drive --target=test_driver/app.dart
```

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help make Funterest better:

### 🔄 Contributing Process

1. **Fork the repository**

   ```bash
   git fork https://github.com/shabeer-wms/funterest.git
   ```

2. **Create a feature branch**

   ```bash
   git checkout -b feature/amazing-feature
   ```

3. **Make your changes**
   - Follow the existing code style
   - Add tests for new features
   - Update documentation as needed

4. **Commit your changes**

   ```bash
   git commit -m "✨ Add amazing feature"
   ```

5. **Push to your branch**

   ```bash
   git push origin feature/amazing-feature
   ```

6. **Open a Pull Request**
   - Provide a clear description of your changes
   - Reference any related issues
   - Include screenshots for UI changes

### 📝 Commit Convention

We follow [Conventional Commits](https://www.conventionalcommits.org/):

- `✨ feat:` New features
- `🐛 fix:` Bug fixes
- `📚 docs:` Documentation updates
- `🎨 style:` Code style changes
- `♻️ refactor:` Code refactoring
- `⚡ perf:` Performance improvements
- `✅ test:` Adding tests
- `🔧 chore:` Maintenance tasks

### 🐛 Reporting Issues

Found a bug? Please [open an issue](https://github.com/muhammedshabeerop/funterest/issues) with:

- Clear description of the problem
- Steps to reproduce
- Expected vs actual behavior
- Screenshots (if applicable)
- Device/OS information

## 📱 Platform Support

| Platform | Status | Version |
|----------|--------|---------|
| 🤖 **Android** | ✅ Supported | API 21+ |
| 🍎 **iOS** | ✅ Supported | iOS 12+ |
| 🌐 **Web** | ✅ Supported | Modern browsers |
| 💻 **Windows** | ✅ Supported | Windows 10+ |
| 🖥️ **macOS** | ✅ Supported | macOS 10.14+ |
| 🐧 **Linux** | ✅ Supported | Ubuntu 18.04+ |

## 🔐 Privacy & Permissions

Funterest respects your privacy and only requests necessary permissions:

| Permission | Purpose | Required |
|------------|---------|----------|
| 🔔 **Notifications** | Daily activity reminders | Optional |
| 🌐 **Internet** | Fetch activities from API | Required |
| 💾 **Storage** | Cache activities locally | Required |

## 🚀 Roadmap

### 🎯 Upcoming Features

- [ ] 🎨 Custom themes and dark mode
- [ ] 👥 Social sharing of activities
- [ ] 📊 Activity statistics and insights
- [ ] 🏆 Achievement system
- [ ] 🔄 Activity rating and feedback
- [ ] 📍 Location-based activity suggestions
- [ ] 🎵 Integration with music streaming services
- [ ] 📱 Widget support for quick access

### 🔄 Version History

- **v1.0.0** - Initial release with core features
- *More versions coming soon...*

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

```text
MIT License

Copyright (c) 2024 Funterest

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

## 🙏 Acknowledgments

We extend our heartfelt gratitude to:

- 🎯 **[Bored API](https://bored.api.lewagon.com/)** - For providing the comprehensive activity database
- 🐦 **[Flutter Team](https://flutter.dev/)** - For the amazing cross-platform framework
- 📦 **[GetX Community](https://github.com/jonataslaw/getx)** - For the powerful state management solution
- 🎨 **[Material Design](https://material.io/)** - For the beautiful design guidelines
- 👥 **Open Source Community** - For the incredible packages and tools
- ✨ **Contributors** - Everyone who helps make Funterest better

## 📞 Support & Contact

- 🌐 **Website**: [www.pro26.in](https://www.pro26.in)
- 📧 **Email**: [Contact us](mailto:hello@pro26.in)
- 🐛 **Issues**: [GitHub Issues](https://github.com/muhammedshabeerop/funterest/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/muhammedshabeerop/funterest/discussions)

## ⭐ Show Your Support

If you find Funterest helpful, please consider:

- ⭐ **Starring** this repository
- 🍴 **Forking** and contributing
- 📢 **Sharing** with friends and colleagues
- 🐛 **Reporting** bugs and suggesting features

---

**Made with ❤️ and ☕ by [Pro26](https://www.pro26.in)**

> "Turn boredom into adventure, one activity at a time!"

[![Follow on GitHub](https://img.shields.io/github/followers/muhammedshabeerop?style=social)](https://github.com/muhammedshabeerop)
[![Website](https://img.shields.io/badge/Website-pro26.in-blue?style=flat-square)](https://www.pro26.in)
