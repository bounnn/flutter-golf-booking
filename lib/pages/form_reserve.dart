import 'package:flutter/material.dart';
import 'package:golf_booking/pages/reserve_detail.dart';
import 'package:intl/intl.dart';

class BookingForm extends StatefulWidget {
  const BookingForm({super.key});

  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  String _membershipLevel = 'Normal';
  int _selectedGolfer = 2;
  int _selectedHole = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Container(
            color: const Color.fromRGBO(222, 240, 245, 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromRGBO(2, 48, 71, 1), // Tonal color
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(
                          8), // Adjust padding for button size
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back,
                        size: 26, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "Booking form",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(2, 48, 71, 1)),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(134, 156, 167, 1)),
                ),
                const SizedBox(height: 6),
                TextField(
                  controller: _emailController,
                  cursorColor: const Color.fromRGBO(2, 48, 71, 1),
                  decoration: const InputDecoration(
                    hintText: "examle@mail.com",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(33, 158, 188, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(33, 158, 188, 1),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    height: 1,
                    color: Color.fromRGBO(2, 48, 71, 1),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(134, 156, 167, 1))),
                const SizedBox(height: 6),
                TextField(
                  controller: _nameController,
                  cursorColor: const Color.fromRGBO(2, 48, 71, 1),
                  decoration: const InputDecoration(
                    hintText: 'John Doe',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(33, 158, 188, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(33, 158, 188, 1),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                    height: 1,
                    color: Color.fromRGBO(2, 48, 71, 1),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Phone No.',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(134, 156, 167, 1))),
                const SizedBox(height: 6),
                TextField(
                  cursorColor: const Color.fromRGBO(2, 48, 71, 1),
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    hintText: '+85620XXXXXXXX',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(33, 158, 188, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(33, 158, 188, 1),
                      ),
                    ),
                  ),
                  style: const TextStyle(
                      height: 1, color: Color.fromRGBO(2, 48, 71, 1)),
                ),
                const SizedBox(height: 16),
                const Text('Membership level',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(134, 156, 167, 1))),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildMembershipButton('Normal'),
                    const SizedBox(width: 6),
                    _buildMembershipButton('VIP'),
                    const SizedBox(width: 6),
                    _buildMembershipButton('Guest VIP'),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('Select date',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(134, 156, 167, 1))),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _dateController,
                        readOnly: true,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(33, 158, 188, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(33, 158, 188, 1),
                            ),
                          ),
                          prefixIconColor: Color.fromRGBO(2, 48, 71, 1),
                          prefixIcon: Icon(Icons.calendar_today),
                        ),
                        style: const TextStyle(
                            height: 1, color: Color.fromRGBO(2, 48, 71, 1)),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('dd/MM/yyyy').format(pickedDate);
                            setState(() {
                              _dateController.text = formattedDate;
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('Select time',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(134, 156, 167, 1))),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _timeController,
                        readOnly: true,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(33, 158, 188, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(33, 158, 188, 1),
                            ),
                          ),
                          prefixIconColor: Color.fromRGBO(2, 48, 71, 1),
                          prefixIcon: Icon(Icons.access_time),
                        ),
                        style: const TextStyle(
                          height: 1,
                          color: Color.fromRGBO(2, 48, 71, 1),
                        ),
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (pickedTime != null) {
                            setState(() {
                              _timeController.text = pickedTime.format(context);
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Golfers',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(134, 156, 167, 1))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(6, (index) {
                        return _buildGolferButton(index + 1);
                      }),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hole',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(134, 156, 167, 1))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildHoleButton(9),
                        const SizedBox(width: 6),
                        _buildHoleButton(18),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 32),
                SizedBox(
                  height: 53,
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BookingDetailScreen()));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(2, 48, 71, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0)))),
                    child: const Text('ຕໍ່ໄປ',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'NotoSansLaoLooped',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 26)
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildMembershipButton(String level) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          _membershipLevel = level;
        });
      },
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color.fromRGBO(33, 158, 188, 1)),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          backgroundColor: _membershipLevel == level
              ? const Color.fromRGBO(222, 240, 245, 1)
              : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      child: Text(
        level,
        style:
            const TextStyle(fontSize: 16, color: Color.fromRGBO(2, 48, 71, 1)),
      ),
    );
  }

  Widget _buildGolferButton(int number) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          _selectedGolfer = number;
        });
      },
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color.fromRGBO(33, 158, 188, 1)),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          backgroundColor: _selectedGolfer == number
              ? const Color.fromRGBO(222, 240, 245, 1)
              : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      child: Text(number.toString().padLeft(2, '0'),
          style: const TextStyle(
              fontSize: 16, color: Color.fromRGBO(2, 48, 71, 1))),
    );
  }

  Widget _buildHoleButton(int hole) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          _selectedHole = hole;
        });
      },
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color.fromRGBO(33, 158, 188, 1)),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          backgroundColor: _selectedHole == hole
              ? const Color.fromRGBO(222, 240, 245, 1)
              : Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
      child: Text('${hole}H',
          style: const TextStyle(
              fontSize: 16, color: Color.fromRGBO(2, 48, 71, 1))),
    );
  }
}
