import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Example'),
      ),
      body: Center(
        child: Markdown(data: '# 这里标题一\n## 这是标题二\n- 特点一:\n - 特点二：\n'),
      ),
    );
  }
}
