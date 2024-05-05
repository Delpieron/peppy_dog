import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class KnowUsPage extends StatelessWidget {
  const KnowUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Image.asset(
              // fit: BoxFit.contain,
              gaplessPlayback: true,
              'assets/know_us/pd_001.png',
              // height: MediaQuery.sizeOf(context).height * .1,
              width: MediaQuery.sizeOf(context).width * 8,
            ),
          ),
          _Text(
            content: _history,
            imageName: 'title1',
            padding: size.width > 1300 ? const EdgeInsets.symmetric(horizontal: 122) : null,
          ),
          if (size.width > 1300)
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 122),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _Text(
                      content: _vision,
                      imageName: 'title2',
                    ),
                    _Text(
                      content: _mission,
                      imageName: 'title3',
                    ),
                  ],
                ),
              ),
            )
          else ...[
            const _Text(
              content: _vision,
              imageName: 'title2',
            ),
            const _Text(
              content: _mission,
              imageName: 'title3',
            ),
          ]
        ],
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({required this.content, required this.imageName, this.padding});

  final String content;
  final String imageName;
final EdgeInsets? padding;
  @override

  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                fit: BoxFit.contain,
                gaplessPlayback: true,
                'assets/know_us/$imageName.png',
                // height: MediaQuery.sizeOf(context).height * 3,
                // width: MediaQuery.sizeOf(context).width,
              ),
            ),
            Expanded(
              child: Padding(
                padding: padding ?? EdgeInsets.zero,
                child: AutoSizeText(
                  content,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  presetFontSizes: const [25,23,20,18,16,9],
                  // minFontSize: 5,
                  // maxFontSize: 35,
                  // stepGranularity: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _mission =
    'Sprawic, aby nasze gryzaki byty znane i doceniane przez psich właścicieli oraz lubiane i z przyjemnością chrupane przez ich psich towarzyszy.';
const String _history =
    'Od niepamiętnych czasów psy stanowiły nieodłączną część życia człowieka. Psiaki współpracowały z ludźmi i dzieliły z nimi codzienne trudy i radości. Nasze gryzaki odzwierciedlają i pomagają dodatkowo zacieśniać tę głęboką więź, która towarzyszy ludziom i ich psom od tysięcy lat. W “Peppy Dog" wierzymy, że psy są nie tylko zwierzętami domowymi, ale pełnoprawnymi członkami rodziny.';
const String _vision =
    'Zbudowanie wśród właścicieli psów wizerunku firmy, która dba o dobrostan psich towarzyszy przy jednoczesnym poszanowaniu dziedzictwa europejskiego rolnictwa i środowiska.';
