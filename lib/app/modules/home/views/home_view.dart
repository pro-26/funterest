import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key});

  @override
  Widget phone() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Funterest'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [buildAbout()],
      ),
      // Soft background to match the design
      backgroundColor: const Color(0xFFF7F8FA),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/pro26.png',
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8.0),
            Text('www.pro26.in'),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: buildActivity(),
          ),
        ),
      ),
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Funterest'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [buildAbout()],
      ),
      // Soft background to match the design
      backgroundColor: const Color(0xFFF7F8FA),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/pro26.png',
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8.0),
            Text('www.pro26.in'),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
            child: buildActivity(),
          ),
        ),
      ),
    );
  }

  IconButton buildAbout() {
    return IconButton(
      icon: Icon(Icons.info_outline, color: Get.theme.colorScheme.primary),
      onPressed: () {
        Get.dialog(
          AboutDialog(
            applicationIcon: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/funterest.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            applicationName: 'Funterest',
            applicationVersion: '1.0.0',
            applicationLegalese: '© 2025 www.pro26.in',
            children: [
              const SizedBox(height: 10),
              Text(
                'Funterest is a simple app that suggests fun activities whenever you are bored. It uses the Bored API to fetch random activities based on selected categories.',
                style: TextStyle(
                  fontSize: 14,
                  color: Get.theme.colorScheme.secondary,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Column buildActivity() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Large rounded prompt card
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(20),
                blurRadius: 18.0,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Stack(
            children: [
              // top right corner icon button
              Positioned(
                top: 2.0,
                right: 2.0,
                child: IconButton(
                  icon: Icon(
                    Icons.history_sharp,
                    color: Get.theme.colorScheme.primary,
                  ),
                  onPressed: () {
                    controller.loadRecentActivity();
                  },
                ),
              ),
              Center(
                child: Obx(
                  () => AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Text(
                      controller.activity.value, // the value is updated
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        height: 1.2,
                        color: Color(0xFF9CA6B3),
                        fontWeight: FontWeight.w600,
                      ),
                    ).paddingSymmetric(horizontal: 24.0, vertical: 50.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        // selection buttons
        Obx(
          () => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 8.0,
              children: controller.types.map((type) {
                var selected = controller.selectedType.value.obs;
                return Obx(
                  () => ChoiceChip(
                    label: Text(type),
                    selected: selected.value == type,
                    onSelected: (isSelected) {
                      if (isSelected) {
                        controller.selectedType.value = type;
                      } else {
                        controller.selectedType.value = '';
                      }
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ),

        const SizedBox(height: 10),

        // pill button
        SizedBox(
          width: double.infinity,
          child: Obx(
            () => ElevatedButton(
              onPressed: controller.isLoading.value
                  ? null
                  : () {
                      controller.fetchNewActivity();
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: Get.theme.colorScheme.primary,
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                elevation: 4,
                shadowColor: Colors.black.withAlpha(50),
              ),
              child: controller.isLoading.value
                  ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.auto_fix_high,
                          color: Get.theme.colorScheme.onPrimary,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'New Activity',
                          style: TextStyle(
                            color: Get.theme.colorScheme.onPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),

        const SizedBox(height: 14),

        // Caption
        const Text(
          "Try something new whenever you're bored",
          style: TextStyle(color: Color(0xFF9CA6B3), fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
