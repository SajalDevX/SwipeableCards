import 'package:first_app/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeScreenViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Top App Bar",
          style: TextStyle(fontSize: 24),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 89, 24, 186),
                Color.fromARGB(255, 231, 50, 37),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 89, 24, 186),
              Color.fromARGB(255, 231, 50, 37),
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    viewModel.images[
                        viewModel.currentIndex], // Use the ViewModel's data
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed:
                          viewModel.previousImage, // Use the ViewModel's method
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed:
                          viewModel.nextImage, // Use the ViewModel's method
                      icon: const Icon(Icons.arrow_forward),
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.nextImage, // Use the ViewModel's method
        backgroundColor: const Color.fromARGB(255, 255, 106, 7),
        child: const Icon(Icons.add),
      ),
    );
  }
}





















































// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//   @override
//   // ignore: library_private_types_in_public_api
//   _HomeScreenUiState createState() => _HomeScreenUiState();
// }

// class _HomeScreenUiState extends State<HomeScreen> {
//   int _currentIndex = 0;

//   final List<String> _images = [
//     'assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.avif',
//     'assets/images/MainAfter.webp',
//   ];

//   void _previousImage() {
//     setState(() {
//       _currentIndex = (_currentIndex - 1) % _images.length;
//     });
//   }

//   void _nextImage() {
//     setState(() {
//       _currentIndex = (_currentIndex + 1) % _images.length;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Top App Bar",
//           style: TextStyle(fontSize: 24),
//         ),
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 89, 24, 186),
//                 Color.fromARGB(255, 231, 50, 37),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black,
//                 offset: Offset(0, 4),
//                 blurRadius: 8,
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color.fromARGB(255, 89, 24, 186),
//               Color.fromARGB(255, 231, 50, 37),
//             ],
//           ),
//         ),
//         child: Center(
//             child: SizedBox(
//           height: 400,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Image.asset(
//                   _images[_currentIndex],
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     onPressed: _previousImage,
//                     icon: const Icon(Icons.arrow_back),
//                     color: Colors.white,
//                   ),
//                   IconButton(
//                     onPressed: _nextImage,
//                     icon: const Icon(Icons.arrow_forward),
//                     color: Colors.white,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         )),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _nextImage,
//         backgroundColor: const Color.fromARGB(255, 255, 106, 7),
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
