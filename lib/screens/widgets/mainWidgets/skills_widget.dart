import 'package:flutter/material.dart';
import 'package:portfoliio2/extras/linear_percentage.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 350,
      //  color: Colors.grey.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.only(left: 0.0, right: 0),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Technical Skills',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.white.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Dart',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Text(
                        '70%',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  LinearPercentageIndicator(
                    width: 300,
                    height: 15,
                    targetPercent: 0.7,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    progressColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'C++',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Text('50%')
                    ],
                  ),
                  LinearPercentageIndicator(
                    width: 300,
                    height: 15,
                    targetPercent: 0.5,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    progressColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Java',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Text('70%')
                    ],
                  ),
                  LinearPercentageIndicator(
                    width: 300,
                    height: 15,
                    targetPercent: 0.7,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    progressColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          '.Net',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Text('60%')
                    ],
                  ),
                  LinearPercentageIndicator(
                    width: 300,
                    height: 15,
                    targetPercent: 0.6,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    progressColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Python',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Text('5%')
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  LinearPercentageIndicator(
                    width: 300,
                    height: 15,
                    targetPercent: 0.05,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    progressColor: Colors.green,
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
