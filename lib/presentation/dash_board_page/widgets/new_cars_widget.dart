import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:saudi_cars/presentation/dash_board_page/screen/dash_board_screen.dart';
import 'package:saudi_cars/presentation/details_screen/screen/details_screen.dart';

class NewCarsList extends StatelessWidget {
  final List<ImageModel> newCarsList;

  const NewCarsList({super.key, required this.newCarsList});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: newCarsList.length,
          itemBuilder: (BuildContext context, int index) {
            final newCarModel = newCarsList[index];
            return FutureBuilder<PaletteGenerator>(
              future: PaletteGenerator.fromImageProvider(
                AssetImage(newCarModel.imageUrl),
              ),
              builder: (context, snapshot) {
                final Color dominantColor =
                    snapshot.data?.dominantColor?.color ??
                        const Color.fromARGB(255, 247, 22, 6);
                return Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Positioned(
                        right: 20,
                        left: 20,
                        child: Container(
                            height: 180,
                            width: size.width * 0.95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              gradient: LinearGradient(
                                colors: [dominantColor, Colors.white],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Positioned(
                        top: 0,
                        bottom: 20,
                        left: 0,
                        child: Image.asset(
                          newCarModel.imageUrl,
                          width: 150,
                          height: size.height,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 35,
                        bottom: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'Model Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '\$850/per day',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      '4.7',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  'Excellent (188 Reviews)',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 7),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 14, 98, 17),
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(2),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Finance',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 14, 98, 17),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailsScreen(
                                          selectedCar: newCarModel,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 7),
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 14, 98, 17),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(1),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Buy Now',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Positioned(
                      //   top: 0,
                      //   right: 0,
                      //   bottom: 0,
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       isFavorite = !isFavorite;
                      //     },
                      //     child: Container(
                      //       padding: EdgeInsets.all(4),
                      //       decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         color: isFavorite ? Colors.red : Colors.white,
                      //         border: Border.all(
                      //           color: isFavorite ? Colors.red : Colors.red,
                      //           width: 2,
                      //         ),
                      //       ),
                      //       child: Center(
                      //         child: Icon(
                      //           Icons.favorite,
                      //           color: isFavorite ? Colors.white : Colors.red,
                      //           size: 24,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
