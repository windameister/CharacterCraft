import 'package:editor/character/widget/character_image_widget.dart';
import 'package:editor/character/widget/st2character_widget.dart';
import 'package:editor/character/widget/st2characterbook_widget.dart';
import 'package:flutter/material.dart';

class ST2DocumentWidget extends StatefulWidget {
  const ST2DocumentWidget({super.key});

  @override
  State<ST2DocumentWidget> createState() => _ST2DocumentWidgetState();
}

class _ST2DocumentWidgetState extends State<ST2DocumentWidget> with SingleTickerProviderStateMixin {
  // UI Control
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) => _Layout(
        tabController: _tabController,
        children: const [
          ST2CharacterWidget(
            characterImage: CharacterImageWidget(),
          ),
          ST2CharacterBookWidget(),
        ],
      );
}

class _Layout extends StatelessWidget {
  final TabController tabController;
  final List<Widget> children;

  const _Layout({
    required this.tabController,
    required this.children,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: _DocEditingHeaderBar(
            tabController: tabController,
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(height: 1),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: children,
        ),
      );
}

class _DocEditingHeaderBar extends StatelessWidget {
  final TabController tabController;
  const _DocEditingHeaderBar({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 4),
          child: TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.person), SizedBox(width: 20), Text("Character")],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.book), SizedBox(width: 20), Text("CharacterBook")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
