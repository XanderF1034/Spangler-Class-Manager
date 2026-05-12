import 'package:flutter/material.dart';
import 'package:spangler_class_practice/widgets/home_card.dart';
import 'bpa_page.dart';
import 'classes_page.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow,
        title: const Text(
          "Class Manager",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.notifications_none), SizedBox(width: 16)],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome back,",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              "Student!",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Manage your programming classes, BPA, clubs, and upcoming events.",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            SizedBox(height: 30),

            Text(
              "Quick Access",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            GridCards(),

            SizedBox(height: 30),

            SectionTitle(title: "Upcoming"),

            SizedBox(height: 12),

            EventCard(
              title: "AP Object Oriented Programming",
              time: "Today • 9:30 AM",
              tag: "Class",
              icon: Icons.code,
            ),

            EventCard(
              title: "BPA Officer Meeting",
              time: "Tomorrow • 3:15 PM",
              tag: "BPA",
              icon: Icons.groups,
            ),

            SizedBox(height: 25),

            SectionTitle(title: "Announcements"),

            SizedBox(height: 12),

            AnnouncementCard(),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: "Classes"),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "BPA"),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: "Fees",
          ),
        ],
      ),
    );
  }
}

class GridCards extends StatelessWidget {
  const GridCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      childAspectRatio: 1.0,
      children: [
        HomeCard(
          title: "Classes",
          subtitle: "View programming",
          icon: Icons.computer,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ClassesPage()),
            );
          },
        ),
        HomeCard(
          title: "BPA",
          subtitle: "Meetings, members, events",
          icon: Icons.groups,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BPAPage()),
            );
          },
        ),
        HomeCard(
          title: "Assignments",
          subtitle: "Track class work",
          icon: Icons.assignment,
          onTap: () {},
        ),
        HomeCard(
          title: "Schedule",
          subtitle: "Upcoming events",
          icon: Icons.calendar_month,
          onTap: () {},
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String time;
  final String tag;
  final IconData icon;

  const EventCard({
    super.key,
    required this.title,
    required this.time,
    required this.tag,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.yellow, size: 32),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  time,
                  style: const TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              tag,
              style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white12),
      ),
      child: const Row(
        children: [
          Icon(Icons.campaign, color: Colors.yellow, size: 34),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BPA Registration Open!",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Register by Friday to participate in upcoming BPA events.",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
