import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 900;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: isDesktop
            ? AppBar(
                backgroundColor: const Color.fromARGB(255, 12, 12, 12),
                toolbarHeight: 60,
                titleSpacing: 0,
                centerTitle: false,
                title: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/mirjyo1.jpg',
                        height: 40,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Home', style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {},
                          child: const Text('About', style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Contact', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    // Add this for "Get Quote" at the top right
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 16),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          'Get Quote',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : AppBar(
                backgroundColor: const Color.fromARGB(255, 12, 12, 12),
                toolbarHeight: 60,
                title: Image.asset(
                  'assets/mirjyo1.jpg',
                  height: 40,
                ),
              ),
        drawer: isDesktop
            ? null
            : Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: const Text(
                        'Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('Home'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text('About'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.contact_mail),
                      title: const Text('Contact'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double horizontalPadding = constraints.maxWidth > 1200
                ? 120
                : constraints.maxWidth > 900
                    ? 40
                    : 16;
            return Scrollbar(
              thumbVisibility: true, // Always show scrollbar on desktop/web
              child: SingleChildScrollView(
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 1200, // Maximum width for large screens
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.85,
                            width: double.infinity,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  'assets/mirjyo2.jpg',
                                  fit: BoxFit.cover,
                                ),
                                Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Mirchi',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: constraints.maxWidth > 900 ? 68 : 38,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 8,
                                              color: Colors.black54,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        'Developers',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: constraints.maxWidth > 900 ? 68 : 38,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 8,
                                              color: Colors.black54,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxWidth > 900
                                ? 55
                                : constraints.maxWidth > 600
                                    ? 32
                                    : 16,
                          ),
                          Center(
                            child: Text(
                              'Legacy',
                              style: TextStyle(
                                fontSize: constraints.maxWidth > 900 ? 32 : 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxWidth > 900
                                ? 40
                                : constraints.maxWidth > 600
                                    ? 28
                                    : 16,
                          ),
                          Center(
                            child: Text(
                              'Welcome to Mirchi Developer',
                              style: TextStyle(
                                fontSize: constraints.maxWidth > 900 ? 42 : 28,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(137, 5, 0, 0),
                                letterSpacing: 1,
                                decoration: TextDecoration.underline, // <-- Add this line for underline
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Text(
                              'Mirchi Developers is a leading real estate company dedicated to building modern, sustainable, and luxurious homes. '
                              'With a focus on quality, innovation, and customer satisfaction, we transform dreams into reality. '
                              'Our team is passionate about creating vibrant communities and delivering exceptional living experiences for every client.',
                              style: TextStyle(
                                fontSize: constraints.maxWidth > 900 ? 18 : 15,
                                color: Colors.black87,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 40),
                          Center(
                            child: Text(
                              'Our Core Value',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                letterSpacing: 1.2,
                                decoration: TextDecoration.underline, // <-- Underline added
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: constraints.maxWidth > 900
                                ? MainAxisAlignment.spaceEvenly
                                : MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Quality
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.verified,
                                      color: const Color.fromARGB(255, 58, 59, 58),
                                      size: constraints.maxWidth > 600 ? 80 : 48,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Quality',
                                      style: TextStyle(
                                        fontSize: constraints.maxWidth > 600 ? 26 : 18,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromARGB(255, 100, 102, 100),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'We deliver only the best quality in every project.',
                                      style: TextStyle(
                                        fontSize: constraints.maxWidth > 600 ? 16 : 13,
                                        color: Colors.black87,
                                        height: 1.5,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              if (constraints.maxWidth > 600) const SizedBox(width: 24),
                              // Integrity
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.handshake,
                                      color: const Color.fromARGB(255, 101, 101, 102),
                                      size: constraints.maxWidth > 600 ? 80 : 48,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Integrity',
                                      style: TextStyle(
                                        fontSize: constraints.maxWidth > 600 ? 26 : 18,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromARGB(255, 121, 123, 124),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'We uphold honesty and transparency in every interaction and decision.',
                                      style: TextStyle(
                                        fontSize: constraints.maxWidth > 600 ? 16 : 13,
                                        color: Colors.black87,
                                        height: 1.5,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              if (constraints.maxWidth > 600) const SizedBox(width: 24),
                              // Sustainability
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.eco,
                                      color: const Color.fromARGB(255, 77, 78, 78),
                                      size: constraints.maxWidth > 600 ? 80 : 48,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Sustainability',
                                      style: TextStyle(
                                        fontSize: constraints.maxWidth > 600 ? 26 : 18,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromARGB(255, 70, 71, 71),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'We build with care for the environment and future generations.',
                                      style: TextStyle(
                                        fontSize: constraints.maxWidth > 600 ? 16 : 13,
                                        color: Colors.black87,
                                        height: 1.5,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Left side: you can add text or leave empty for spacing
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Exception',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                      Text(
                                        'What makes our project unique',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                          letterSpacing: 1.1,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        'Our project stands out through innovative design, sustainable construction, and a commitment to customer satisfaction. '
                                        'We blend modern architecture with eco-friendly practices, ensuring every home is both beautiful and responsible. '
                                        'Attention to detail and a passion for excellence drive us to deliver spaces that truly enrich lives.',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black87,
                                          height: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Right side: image
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24), // Adjust the radius as needed
                                  child: Image.asset(
                                    'assets/mirjyo3.jpg',
                                    height: 400,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          Center(
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/mirjyo4.jpg', // Your image
                                      height: 300,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      height: 300,
                                      width: double.infinity,
                                      color: Colors.black.withOpacity(0.3), // Optional: darken image for text readability
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Mirchi Construction',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2,
                                          shadows: [
                                            Shadow(
                                              blurRadius: 8,
                                              color: Colors.black54,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 46), // Increased space between image and "Flagship Project"
                                Text(
                                  'Flagship Project',
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 10, 10, 10),
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.1,
                                    decoration: TextDecoration.underline, // <-- Underline added
                                    shadows: [
                                      Shadow(
                                        blurRadius: 6,
                                        color: Colors.black45,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Left image: mirjyo6.jpg
                              Expanded(
                                flex:1,
                                child: Container(
                                  margin: const EdgeInsets.all(16), // Adds space around the image for the floating effect
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32), // Rounded edges
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 24,
                                        offset: Offset(0, 12),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      'assets/mirjyo6.jpg',
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 42),
                          const SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Arce Project
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.architecture,
                                      color: const Color.fromARGB(255, 56, 55, 55),
                                      size: 44,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'Arce Project',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(255, 19, 19, 19),
                                        letterSpacing: 1.1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              // Duplex Villa
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.house,
                                      color: const Color.fromARGB(255, 42, 43, 43),
                                      size: 44,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'Duplex Villa',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(255, 34, 33, 33),
                                        letterSpacing: 1.1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              // World Class Amenities
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.emoji_events,
                                      color: const Color.fromARGB(255, 56, 52, 52),
                                      size: 44,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'World Class Amenities',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(255, 27, 27, 27),
                                        letterSpacing: 1.1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              // Prime Location
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: const Color.fromARGB(255, 39, 39, 39),
                                      size: 44,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'Prime Location',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(255, 27, 27, 27),
                                        letterSpacing: 1.1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              // Prime Location
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: const Color.fromARGB(255, 39, 39, 39),
                                      size: 44,
                                    ),
                                    const SizedBox(height: 12),
                                    Text(
                                      'Prime Location',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(255, 41, 39, 39),
                                        letterSpacing: 1.1,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Add your contact action here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 236, 152, 152),
                                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                ),
                                child: const Text(
                                  'Contact',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 24),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your know more action here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(221, 243, 163, 163),
                                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                ),
                                child: const Text(
                                  'Know More',
                                  style: TextStyle(fontSize: 18, color: Color.fromRGBO(250, 249, 249, 1)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Facebook
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 243, 241, 241), // Background color for the icon
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.facebook, color: const Color.fromARGB(255, 14, 14, 14), size: 32),
                                  onPressed: () {
                                    // Add your Facebook link action here
                                  },
                                  tooltip: 'Facebook',
                                ),
                              ),
                              const SizedBox(width: 16),
                              // Instagram
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.camera_alt, color: const Color.fromARGB(255, 10, 10, 10), size: 32),
                                  onPressed: () {
                                    // Add your Instagram link action here
                                  },
                                  tooltip: 'Instagram',
                                ),
                              ),
                              const SizedBox(width: 16),
                              // Twitter/X
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.alternate_email, color: const Color.fromARGB(255, 8, 8, 8), size: 32),
                                  onPressed: () {
                                    // Add your Twitter/X link action here
                                  },
                                  tooltip: 'Twitter/X',
                                ),
                              ),
                              const SizedBox(width: 16),
                              // YouTube
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.play_circle_fill, color: const Color.fromARGB(255, 15, 15, 15), size: 32),
                                  onPressed: () {
                                    // Add your YouTube link action here
                                  },
                                  tooltip: 'YouTube',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          Container(
                            color: Color.fromARGB(255, 6, 12, 66), // Light grey background, change as needed
                            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Office Address
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Office Address',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromRGBO(248, 246, 246, 1),
                                          letterSpacing: 1.1,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Mirchi Developers\n'
                                        '123 Main Road, Near City Center,\n'
                                        'Hyderabad, Telangana 500001\n'
                                        'Phone: +91 98765 43210\n'
                                        'Email: info@mirchidevelopers.com',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: const Color.fromRGBO(247, 245, 245, 1),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                // Project Site
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Project Site',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromRGBO(248, 246, 246, 1),
                                          letterSpacing: 1.1,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Mirchi Developers Project Site\n'
                                        'Plot No. 45, Green Meadows Layout,\n'
                                        'Near Outer Ring Road, Gachibowli,\n'
                                        'Hyderabad, Telangana 500032',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: const Color.fromRGBO(250, 249, 249, 1),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                // Contact Numbers
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Contact Numbers',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromRGBO(248, 247, 247, 1),
                                          letterSpacing: 1.1,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Sales: +91 98765 43210\n'
                                        'Support: +91 91234 56789\n'
                                        'Landline: 040-12345678',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: const Color.fromRGBO(241, 239, 239, 1),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                // Working Hours
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Working Hours',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromRGBO(241, 239, 239, 1),
                                          letterSpacing: 1.1,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Monday to Saturday: 9:00 AM – 7:00 PM\n'
                                        'Sunday: Closed',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: const Color.fromRGBO(243, 241, 241, 1),
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ),
              ), // <-- This closes the SingleChildScrollView
            ); // <-- This closes the Scrollbar widget
          },
        ),
      ),
    );
  }
}
