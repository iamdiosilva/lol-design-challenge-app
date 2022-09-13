import 'package:desafio_loldesign/repositories/common_repository.dart';
import 'package:flutter/material.dart';

class AdvantagePanel extends StatelessWidget {
  const AdvantagePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 280,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: CommonRepository.advantages.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            width: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  CommonRepository.advantages[index].imgPath,
                  width: 32,
                  height: 32,
                  color: Colors.grey[700],
                ),
                const SizedBox(height: 16),
                Text(
                  CommonRepository.advantages[index].description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
