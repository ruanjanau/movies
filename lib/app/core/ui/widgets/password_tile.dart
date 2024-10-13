import 'package:flutter/material.dart';

class PasswordTile extends StatefulWidget {
  final String title;
  final String hintText;

  const PasswordTile({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  _PasswordTileState createState() => _PasswordTileState();
}

class _PasswordTileState extends State<PasswordTile> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 43, 41, 41),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(Icons.lock, color: Colors.white, size: 30),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    obscureText: _obscureText,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hintText,
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
