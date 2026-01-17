import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  int selectedIndex = 0;
  final List<String> notes = [
    'Golang',
    'javascript',
    'python',
    'java',
    'Erlang',
    'Rust',
    'Golang',
    'javascript',
    'python',
    'java',
    'Erlang',
    'Rust',
  ];
  final List<String> createdAt = [
    '12-Jan-2026',
    '20-Jan-2025',
    '19-Feb-2025',
    '30-March-2025',
    '14-May-2025',
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight,
      child: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: notes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 16,
          childAspectRatio: 1.3,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;

          return Card(
            elevation: isSelected ? 6 : 2,
            color: isSelected ? Colors.black : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(14),
              onTap: () {
                setState(() => selectedIndex = index);
              },
              child: Padding(
                padding: const EdgeInsets.all(12), // 👈 internal spacing
                child: Text(
                  notes[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
