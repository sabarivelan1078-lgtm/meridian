import 'package:flutter/material.dart';

void main() {
  runApp(const MeridianIeltsCoachApp());
}

class MeridianIeltsCoachApp extends StatelessWidget {
  const MeridianIeltsCoachApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meridian IELTS Coach',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B5CF6),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF080B14),
        fontFamily: 'Roboto',
      ),
      home: const MeridianHomeShell(),
    );
  }
}

class MeridianHomeShell extends StatefulWidget {
  const MeridianHomeShell({super.key});

  @override
  State<MeridianHomeShell> createState() => _MeridianHomeShellState();
}

class _MeridianHomeShellState extends State<MeridianHomeShell> {
  int selectedIndex = 0;

  static const destinations = <_Destination>[
    _Destination('Today', Icons.auto_awesome_rounded),
    _Destination('Practice', Icons.mic_rounded),
    _Destination('Progress', Icons.insights_rounded),
    _Destination('Vocabulary', Icons.menu_book_rounded),
    _Destination('Settings', Icons.tune_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final useRail = width >= 840;

    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-0.8, -1.0),
          radius: 1.2,
          colors: [Color(0xFF263B8F), Color(0xFF080B14)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Row(
            children: [
              if (useRail)
                _PremiumNavigationRail(
                  selectedIndex: selectedIndex,
                  destinations: destinations,
                  onDestinationSelected: (index) {
                    setState(() => selectedIndex = index);
                  },
                ),
              Expanded(
                child: _AnimatedDashboardPage(index: selectedIndex),
              ),
            ],
          ),
        ),
        bottomNavigationBar: useRail
            ? null
            : NavigationBar(
                selectedIndex: selectedIndex,
                backgroundColor: const Color(0xEE101827),
                indicatorColor: const Color(0xFF7C3AED),
                onDestinationSelected: (index) {
                  setState(() => selectedIndex = index);
                },
                destinations: [
                  for (final destination in destinations)
                    NavigationDestination(
                      icon: Icon(destination.icon),
                      label: destination.label,
                    ),
                ],
              ),
      ),
    );
  }
}

class _AnimatedDashboardPage extends StatelessWidget {
  const _AnimatedDashboardPage({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const TodayPage(),
      const PracticePage(),
      const ProgressPage(),
      const VocabularyPage(),
      const SettingsPage(),
    ];

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 260),
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      child: pages[index],
    );
  }
}

class _PremiumNavigationRail extends StatelessWidget {
  const _PremiumNavigationRail({
    required this.selectedIndex,
    required this.destinations,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final List<_Destination> destinations;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xAA101827),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
      ),
      child: NavigationRail(
        backgroundColor: Colors.transparent,
        selectedIndex: selectedIndex,
        labelType: NavigationRailLabelType.all,
        indicatorColor: const Color(0xFF7C3AED),
        onDestinationSelected: onDestinationSelected,
        destinations: [
          for (final destination in destinations)
            NavigationRailDestination(
              icon: Icon(destination.icon),
              label: Text(destination.label),
            ),
        ],
      ),
    );
  }
}

class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PageScaffold(
      title: 'Today',
      subtitle: 'Day 1 of your 100-day Band 8 speaking journey',
      children: [
        _HeroLessonCard(),
        _MetricGrid(),
        _CoachCard(
          title: 'Today\'s 15-minute SMART goal',
          body:
              'Answer three IELTS General Part 1 questions with one reason and one example each. Tamil support appears only for key mistakes after practice.',
          icon: Icons.flag_rounded,
        ),
      ],
    );
  }
}

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PageScaffold(
      title: 'Practice',
      subtitle: 'Speaking-first modules ready for the next milestone',
      children: [
        _PracticeCard(
          title: 'Part 1 Interview',
          body: 'Short personal answers with fluency and extension coaching.',
          icon: Icons.chat_bubble_rounded,
        ),
        _PracticeCard(
          title: 'Part 2 Cue Card',
          body: 'One-minute planning and two-minute long-turn practice.',
          icon: Icons.style_rounded,
        ),
        _PracticeCard(
          title: 'Part 3 Discussion',
          body: 'Abstract answers, opinions, comparisons, and examples.',
          icon: Icons.psychology_rounded,
        ),
      ],
    );
  }
}

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PageScaffold(
      title: 'Progress',
      subtitle: 'Your estimated IELTS criteria trends will appear here',
      children: [
        _CoachCard(
          title: 'Estimated speaking band',
          body: 'Not assessed yet. Complete the diagnostic speaking test when recording is added.',
          icon: Icons.query_stats_rounded,
        ),
        _ProgressPlaceholder(),
      ],
    );
  }
}

class VocabularyPage extends StatelessWidget {
  const VocabularyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PageScaffold(
      title: 'Vocabulary',
      subtitle: 'Band 8 words, collocations, and Tamil explanations',
      children: [
        _PracticeCard(
          title: 'Saved phrases',
          body: 'Long-press useful phrases during feedback to save them here.',
          icon: Icons.bookmark_rounded,
        ),
        _PracticeCard(
          title: 'Tamil meaning support',
          body: 'Difficult vocabulary can include concise Tamil explanations without interrupting speaking practice.',
          icon: Icons.translate_rounded,
        ),
      ],
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _PageScaffold(
      title: 'Settings',
      subtitle: 'Personal IELTS coach preferences',
      children: [
        _SettingsTile(label: 'IELTS type', value: 'General Training'),
        _SettingsTile(label: 'Target', value: 'Band 8 speaking habits'),
        _SettingsTile(label: 'Daily time', value: '15 minutes'),
        _SettingsTile(label: 'Language', value: 'English with Tamil support'),
        _SettingsTile(label: 'Coach tone', value: 'Balanced examiner + coach'),
        _SettingsTile(label: 'Theme', value: 'Premium dark mode'),
      ],
    );
  }
}

class _PageScaffold extends StatelessWidget {
  const _PageScaffold({
    required this.title,
    required this.subtitle,
    required this.children,
  });

  final String title;
  final String subtitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: ValueKey(title),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 12),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1.2,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white.withValues(alpha: 0.72),
                      ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 28),
          sliver: SliverList.separated(
            itemCount: children.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, index) => children[index],
          ),
        ),
      ],
    );
  }
}

class _HeroLessonCard extends StatelessWidget {
  const _HeroLessonCard();

  @override
  Widget build(BuildContext context) {
    return _GlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const _GlowIcon(icon: Icons.mic_external_on_rounded),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Diagnostic speaking test',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Next build: record IELTS Part 1, Part 2, and Part 3 answers, then receive estimated band feedback with Tamil explanations.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white.withValues(alpha: 0.78),
                  height: 1.45,
                ),
          ),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: null,
            icon: const Icon(Icons.lock_clock_rounded),
            label: const Text('Recording coming next'),
          ),
        ],
      ),
    );
  }
}

class _MetricGrid extends StatelessWidget {
  const _MetricGrid();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = constraints.maxWidth >= 720 ? 4 : 2;
        return GridView.count(
          crossAxisCount: columns,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: columns == 4 ? 1.55 : 1.25,
          children: const [
            _MetricTile(label: 'Plan', value: '100 days'),
            _MetricTile(label: 'Daily', value: '15 min'),
            _MetricTile(label: 'Target', value: 'Band 8'),
            _MetricTile(label: 'Mode', value: 'Tamil + EN'),
          ],
        );
      },
    );
  }
}

class _MetricTile extends StatelessWidget {
  const _MetricTile({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return _GlassCard(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white.withValues(alpha: 0.62),
                ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
        ],
      ),
    );
  }
}

class _CoachCard extends StatelessWidget {
  const _CoachCard({
    required this.title,
    required this.body,
    required this.icon,
  });

  final String title;
  final String body;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return _GlassCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _GlowIcon(icon: icon),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  body,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withValues(alpha: 0.74),
                        height: 1.45,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PracticeCard extends StatelessWidget {
  const _PracticeCard({
    required this.title,
    required this.body,
    required this.icon,
  });

  final String title;
  final String body;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return _GlassCard(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: _GlowIcon(icon: icon),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(body),
        ),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}

class _ProgressPlaceholder extends StatelessWidget {
  const _ProgressPlaceholder();

  @override
  Widget build(BuildContext context) {
    return _GlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'IELTS criteria',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
          const SizedBox(height: 14),
          for (final criterion in const [
            'Fluency and coherence',
            'Lexical resource',
            'Grammar range and accuracy',
            'Pronunciation',
          ])
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Expanded(child: Text(criterion)),
                  const Text('Pending'),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return _GlassCard(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(color: Colors.white.withValues(alpha: 0.68)),
            ),
          ),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}

class _GlassCard extends StatelessWidget {
  const _GlassCard({required this.child, this.padding = const EdgeInsets.all(22)});

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: const Color(0xBB101827),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7C3AED).withValues(alpha: 0.10),
            blurRadius: 28,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _GlowIcon extends StatelessWidget {
  const _GlowIcon({required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF8B5CF6), Color(0xFF22D3EE)],
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF8B5CF6).withValues(alpha: 0.32),
            blurRadius: 18,
          ),
        ],
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}

class _Destination {
  const _Destination(this.label, this.icon);

  final String label;
  final IconData icon;
}
