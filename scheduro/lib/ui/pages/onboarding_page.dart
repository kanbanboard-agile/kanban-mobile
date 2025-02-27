import 'package:scheduro/shared/themes.dart';
import 'package:scheduro/ui/widgets/button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselSliderController carouselController = CarouselSliderController();

  List<String> titles = [
    'Atur Tugas\nDengan Mudah',
    'Prioritaskan Tugas\nYang Penting',
    'Tetap On-Track',
  ];

  List<String> subtittle = [
    'Kelola Pekerjaanmu dengan\nlangkah-langkah sederhana',
    'Gunakan AI dan kanban board\nmengelola tugas lebih efisien.',
    'Dapatkan pengingat otomatis\nsebelum tenggat waktu.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset('assets/img_onboarding1.png', height: 331),
                Image.asset('assets/img_onboarding2.png', height: 331),
                Image.asset('assets/img_onboarding3.png', height: 331),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),
            SizedBox(height: 80),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 26),
                  Text(
                    subtittle[currentIndex],
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: currentIndex == 2 ? 38 : 50),
                  currentIndex == 2
                      ? Column(
                        children: [
                          CustomFilledButton(
                            title: 'Get Started',
                            onPressed: () {},
                          ),
                          CustomTextWidget(
                            title: 'Login',
                            onPressed: () {
                              Navigator.pushNamed(context, '/signin');
                            },
                          ),
                        ],
                      )
                      : Row(
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    currentIndex == i
                                        ? blueColor
                                        : lightBackgroundColor,
                              ),
                            ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Align(
                              alignment:
                                  Alignment
                                      .centerRight, // Menyelaraskan ke kanan
                              child: CustomFilledButton(
                                width: 150,
                                title:
                                    currentIndex < 2
                                        ? 'Continue'
                                        : 'Get Started',
                                onPressed: () {
                                  if (currentIndex < 2) {
                                    carouselController.nextPage(
                                      duration: const Duration(
                                        milliseconds: 300,
                                      ),
                                      curve: Curves.easeInOut,
                                    );
                                  } else {
                                    print("Navigasi ke halaman berikutnya");
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
