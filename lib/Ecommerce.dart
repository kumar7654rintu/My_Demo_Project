import 'package:flutter/material.dart';

class EcommerceScreen extends StatelessWidget {
  const EcommerceScreen({super.key});

  static const Color green = Color(0xFF7CB342);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 600;

    final double horizontalPadding = isMobile ? 12 : 36;
    final double fieldHeight = isMobile ? 50 : 82;
    final double spacing = isMobile ? 10 : 27;
    final double fontSize = isMobile ? 16 : 27;
    final double commentHeight = isMobile ? 90 : 145;
    final double buttonHeight = isMobile ? 52 : 86;

    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),

      appBar: AppBar(
        backgroundColor: green,
        elevation: 2,
        toolbarHeight: isMobile ? 56 : 64,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: isMobile ? 27 : 32,
          ),
        ),

        centerTitle: true,

        title: Text(
          'Ecommerce',
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 20 : 30,
            fontWeight: FontWeight.w500,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: isMobile ? 27 : 32,
            ),
          ),
        ],
      ),

      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              horizontalPadding,
              isMobile ? 12 : 36,
              horizontalPadding,
              isMobile ? 15 : 30,
            ),
            child: Column(
              children: [

                _field(
                  hint: 'Full Name',
                  height: fieldHeight,
                  fontSize: fontSize,
                ),

                SizedBox(height: spacing),

                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: _field(
                        hint: 'Card Number',
                        height: fieldHeight,
                        fontSize: fontSize,
                      ),
                    ),

                    SizedBox(width: isMobile ? 10 : 26),

                    Expanded(
                      flex: 1,
                      child: _field(
                        hint: 'CVV',
                        height: fieldHeight,
                        fontSize: fontSize,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: spacing),

                _dropdownField(
                  text: 'Aug 21, 2026',
                  height: fieldHeight,
                  fontSize: fontSize,
                ),

                SizedBox(height: spacing),

                _field(
                  hint: 'Address Line 1',
                  height: fieldHeight,
                  fontSize: fontSize,
                ),

                SizedBox(height: spacing),

                _field(
                  hint: 'Address Line 2',
                  height: fieldHeight,
                  fontSize: fontSize,
                ),

                SizedBox(height: spacing),

                _field(
                  hint: 'City',
                  height: fieldHeight,
                  fontSize: fontSize,
                ),

                SizedBox(height: spacing),
                  
                  _dropdownField(
                  text: 'State',
                  height: fieldHeight,
                  fontSize: fontSize,
                ),

                SizedBox(height: spacing),

                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: _field(
                        hint: 'Country',
                        height: fieldHeight,
                        fontSize: fontSize,
                      ),
                    ),

                    SizedBox(width: isMobile ? 10 : 26),

                    Expanded(
                      flex: 1,
                      child: _field(
                        hint: 'Zip Code',
                        height: fieldHeight,
                        fontSize: fontSize,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: spacing),

                SizedBox(
                  width: double.infinity,
                  height: commentHeight,
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintText: 'Comment',
                      hintStyle: TextStyle(
                        color: const Color(0xFF999999),
                        fontSize: fontSize,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(
                        isMobile ? 10 : 12,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: isMobile ? 12 : 34,
                ),

                SizedBox(
                  width: double.infinity,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: green,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: isMobile ? 17 : 27,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _field({
    required String hint,
    required double height,
    required double fontSize,
  }) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: const Color(0xFF999999),
            fontSize: fontSize,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: height < 60 ? 0 : 12,
          ),
        ),
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.black87,
        ),
      ),
    );
  }


  static Widget _dropdownField({
    required String text,
    required double height,
    required double fontSize,
  }) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: text,
          isExpanded: true,

          icon: Icon(
            Icons.arrow_drop_down,
            color: const Color(0xFF777777),
            size: height < 60 ? 27 : 32,
          ),

          style: TextStyle(
            color: const Color(0xFF999999),
            fontSize: fontSize,
          ),

          items: [
            DropdownMenuItem<String>(
              value: text,
              child: Text(text),
            ),
          ],

          onChanged: (value) {},
        ),
      ),
    );
  }
}