import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      child: ColoredBox(
        color: Colors.pink,
        child: size.width < 700 || (size.height > size.width || (size.height / size.width) > .63)
            ? const _HomePageM()
            : const _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    final centerImageName = MediaQuery.sizeOf(context).width < 1000 ? 'Group40' : 'Group40big';
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        if (size.width > 1200)
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Text(
                'BRAND OD PETMEX',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        Positioned(
          // top: -22,
          child: Image.asset(
            fit: BoxFit.fill,
            gaplessPlayback: true,
            'assets/home_page/pd_009_1.png',
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Positioned(
          top: 320,
          child: Image.asset(
            fit: BoxFit.fill,
            gaplessPlayback: true,
            'assets/home_page/pd_009_1.png',
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 28),
                child: Image.asset(
                  gaplessPlayback: true,
                  'assets/home_page/logo.png',
                  height: MediaQuery.sizeOf(context).height * .15,
                  // width: MediaQuery.sizeOf(context).width * .5,
                ),
              ),
            ),
            Expanded(
              // flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 64),
                child: Stack(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Positioned(
                      left: -140,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              // fit: BoxFit.cover,
                              gaplessPlayback: true,
                              'assets/home_page/lewe_2.png',
                              height: MediaQuery.sizeOf(context).height * .4,
                              // width: MediaQuery.sizeOf(context).width * .5,
                            ),
                            const SizedBox(height: 50),
                            Image.asset(
                              // fit: BoxFit.cover,
                              gaplessPlayback: true,
                              'assets/home_page/lewe_1.png',
                              height: MediaQuery.sizeOf(context).height * .4,
                              // width: MediaQuery.sizeOf(context).width * .3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // flex: 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          gaplessPlayback: true,
                          'assets/home_page/$centerImageName.png',
                          // height: MediaQuery.sizeOf(context).height,
                          // width: MediaQuery.sizeOf(context).width * .7,
                        ),
                      ),
                    ),
                    Positioned(
                      right: -70,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          // fit: BoxFit.cover,
                          gaplessPlayback: true,
                          'assets/home_page/prawe.png',
                          height: MediaQuery.sizeOf(context).height * .5,
                          // width: MediaQuery.sizeOf(context).width * .2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _HomePageM extends StatelessWidget {
  const _HomePageM();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Image.asset(
            fit: BoxFit.fill,
            gaplessPlayback: true,
            'assets/home_page/pd_009_1.png',
            // height: MediaQuery.sizeOf(context).height * 3,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Image.asset(
                  gaplessPlayback: true,
                  'assets/home_page/logo.png',
                  height: MediaQuery.sizeOf(context).height * .1,
                  width: MediaQuery.sizeOf(context).width * .5,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 64),
                child: Stack(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Positioned(
                      left: -70,
                      top: -50,
                      child: Column(
                        children: [
                          Image.asset(
                            // fit: BoxFit.cover,
                            gaplessPlayback: true,
                            'assets/home_page/lewe_2.png',
                            height: MediaQuery.sizeOf(context).height * .3,
                            width: MediaQuery.sizeOf(context).width * .34,
                          ),
                          Image.asset(
                            // fit: BoxFit.cover,
                            gaplessPlayback: true,
                            'assets/home_page/lewe_1.png',
                            height: MediaQuery.sizeOf(context).height * .3,
                            width: MediaQuery.sizeOf(context).width * .34,
                          ),
                        ],
                      ),
                    ),
                    const Center(child: _Item(imageName: 'Group40')),
                    Positioned(
                      right: -70,
                      top: 80,
                      child: Image.asset(
                        // fit: BoxFit.cover,
                        gaplessPlayback: true,
                        'assets/home_page/prawe.png',
                        height: MediaQuery.sizeOf(context).height * .3,
                        width: MediaQuery.sizeOf(context).width * .3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                gaplessPlayback: true,
                fit: BoxFit.fill,
                'assets/home_page/pd_008.png',
                // height: MediaQuery.sizeOf(context).height * .5,
                width: MediaQuery.sizeOf(context).width * 2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.imageName,
  });

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      gaplessPlayback: true,
      'assets/home_page/$imageName.png',
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width * .7,
    );
  }
}
