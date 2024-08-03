import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isVeg = false;

  final List<String> _foodOrders = [
    'Your Orders',
    'Favorite Orders',
    'Order on train',
    'Address book',
    'Hidden Restaurants',
    'Online ordering help',
  ];

  final List<String> _dinings = [
    'Your dining transactions',
    'Your dining rewards',
    'Your table bookings',
    'Dining help',
    'Frequenltly asked questions',
  ];

  final List<String> _events = [
    'Your event tickets',
    'Events help',
    'Frequently asked questions',
  ];

  final List<String> _moneys = [
    'Cogito Money',
    'Buy Gift Card',
    'Claim Gift Card',
    'Cogito Wallet',
    'Cogito Credits',
    'Payment Settings',
  ];

  final List<String> _enterprises = [
    'For employees',
    'For employers',
  ];

  final List<String> _coupons = [
    'Brand packs',
    'Collect coupons',
    'Apply membership coupons',
  ];

  final List<String> _awards = [
    'Restaurant Awards 2024',
  ];

  final List<String> _extras = [
    'Choose language',
    'About',
    'Send feedback',
    'Get Feeding India receipt',
    'Report a safety emergency',
    'settings',
    'Log out',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          alignment: Alignment.topLeft,
          iconSize: 30,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 14.0, right: 14.0),
        child: Column(
          children: [
            profileHeader(context, 'Danny'),
            const SizedBox(height: 18),
            Expanded(
              child: ListView(
                children: [
                  favAndMoney(context),
                  const SizedBox(height: 18),
                  yourProfileStatus(context),
                  const SizedBox(height: 18),
                  vegMode(context),
                  const SizedBox(height: 18),
                  yourRating(context),
                  const SizedBox(height: 18),
                  foodOrders(context),
                  const SizedBox(height: 18),
                  dinings(context),
                  const SizedBox(height: 18),
                  events(context),
                  const SizedBox(height: 18),
                  moneys(context),
                  const SizedBox(height: 18),
                  enterprises(context),
                  const SizedBox(height: 18),
                  coupons(context),
                  const SizedBox(height: 18),
                  awards(context),
                  const SizedBox(height: 18),
                  extras(context),
                  const SizedBox(height: 18),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget profileHeader(BuildContext context, String name) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.16,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.lightBlue[100],
                  child: Text(
                    name[0],
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        name.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Row(
                        children: [
                          Text(
                            'View activity',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Join Cogito Gold',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget favAndMoney(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey[200],
                  child: const Icon(
                    Icons.heart_broken_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Favourites',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey[200],
                  child: const Icon(
                    Icons.attach_money_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Text(
                      'Money',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 40,
                      height: 30,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center aligned icon and text
                        children: [
                          Icon(
                            Icons.attach_money_outlined,
                            color: Colors.green[900],
                            size: 20,
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Colors.green[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget yourProfileStatus(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[200],
          child: const Icon(
            Icons.person_outline,
            size: 30,
            color: Colors.grey,
          ),
        ),
        title: const Text(
          'Your Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Container(
          width: 80,
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '32%',
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'completed',
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget vegMode(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[200],
          child: const Icon(
            Icons.emoji_food_beverage_rounded,
            size: 30,
            color: Colors.green,
          ),
        ),
        title: const Text(
          'Veg Mode',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Switch.adaptive(
          activeColor: Colors.green,
          activeTrackColor: Colors.green[100],
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey[350],
          trackOutlineWidth: const WidgetStatePropertyAll(0),
          value: isVeg,
          onChanged: (bool value) {
            setState(() {
              isVeg = value;
            });
          },
        ),
      ),
    );
  }

  Widget yourRating(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[200],
          child: const Icon(
            Icons.star_border_outlined,
            size: 30,
            color: Colors.grey,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Your Rating',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              width: 60,
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '4.6',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget foodOrders(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.61,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Food Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _foodOrders.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _foodOrders[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget dinings(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.54,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Dining',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _dinings.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _dinings[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget events(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.34,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Events',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _events.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _events[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget moneys(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.61,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Money',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _moneys.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _moneys[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget enterprises(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Cogito For Enterprises',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _enterprises.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _enterprises[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget coupons(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.34,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Coupons',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _coupons.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _coupons[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget awards(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Restaurant Awards',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _awards.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _awards[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget extras(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'More',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _extras.length,
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 60,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.fastfood_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    _extras[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
