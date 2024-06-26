import 'package:flutter/material.dart';

class JoinTextFormField extends StatelessWidget {
  final text;
  final hinttext;
  final validator;
  final onChange;
  final TextEditingController controller;

  const JoinTextFormField({
    required this.text,
    required this.hinttext,
    this.validator,
    this.onChange,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${text}',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          onChanged: onChange,
          validator: validator,
          obscureText:
              // 2. 해당 TextFormField가 비밀번호 입력 양식이면 **** 처리 해주기
              text == '비밀번호' || text == '비밀번호 확인',
          decoration: InputDecoration(
            hintText: "${hinttext}",
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            enabledBorder: OutlineInputBorder(
                // 3. 기본 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
                // borderRadius: BorderRadius.circular(20),
                ),
            focusedBorder: OutlineInputBorder(
                // 4. 손가락 터치시 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
                // borderRadius: BorderRadius.circular(20),
                ),
            errorBorder: OutlineInputBorder(
                // 5. 에러발생시 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
                // borderRadius: BorderRadius.circular(20),
                ),
            focusedErrorBorder: OutlineInputBorder(
                // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
                borderSide: BorderSide(color: Colors.grey)
                // borderRadius: BorderRadius.circular(20),
                ),
          ),
        ),
      ],
    );
  }
}
