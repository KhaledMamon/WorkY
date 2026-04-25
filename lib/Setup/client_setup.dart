import 'package:flutter/material.dart';
import 'package:work_y/Setup/Setup_widgets/industry_button.dart';
import 'package:work_y/home.dart';

class ClientSetup extends StatefulWidget {
  const ClientSetup({super.key});
  @override
  State<ClientSetup> createState() => _ClientSetupState();
}

class _ClientSetupState extends State<ClientSetup> {
  String selectedBudget = '\$2,000 - \$10,000';
  String selectedGoal = 'short';

  bool industryFintech = true;
  bool industryHealthcare = false;
  bool industryEcommerce = false;
  bool industrySaaS = false;
  bool industryCreativeArts = false;
  bool industryOther = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'WorkY',
          style: TextStyle(
            color: Color(0xFF3244E6),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'Set up your client\nprofile',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tell us more about your hiring needs to help us find the right talent.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),

            Text('COMPANY NAME', style: labelStyle()),
            SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                hintText: 'Spider Tech',
                hintStyle: TextStyle(color: Colors.grey[400]),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF3244E6)),
                ),
              ),
            ),
            SizedBox(height: 24),

            Text('INDUSTRY/NICHE', style: labelStyle()),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                IndustryButton(
                  name: 'Fintech',
                  isSelected: industryFintech,
                  onTap: () {
                    setState(() {
                      industryFintech = !industryFintech;
                    });
                  },
                ),

                IndustryButton(
                  name: 'Healthcare',
                  isSelected: industryHealthcare,
                  onTap: () {
                    setState(() {
                      industryHealthcare = !industryHealthcare;
                    });
                  },
                ),

                IndustryButton(
                  name: 'E-commerce',
                  isSelected: industryEcommerce,
                  onTap: () {
                    setState(() {
                      industryEcommerce = !industryEcommerce;
                    });
                  },
                ),

                IndustryButton(
                  name: 'SaaS',
                  isSelected: industrySaaS,
                  onTap: () {
                    setState(() {
                      industrySaaS = !industrySaaS;
                    });
                  },
                ),

                IndustryButton(
                  name: 'Creative Arts',
                  isSelected: industryCreativeArts,
                  onTap: () {
                    setState(() {
                      industryCreativeArts = !industryCreativeArts;
                    });
                  },
                ),

                IndustryButton(
                  name: 'Other',
                  isSelected: industryOther,
                  onTap: () {
                    setState(() {
                      industryOther = !industryOther;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 24),

            Text('TYPICAL PROJECT BUDGET RANGE', style: labelStyle()),
            SizedBox(height: 6),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: selectedBudget,
                isExpanded: true,
                underline: SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBudget = newValue!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: '\$500 - \$2,000',
                    child: Text('\$500 - \$2,000'),
                  ),
                  DropdownMenuItem(
                    value: '\$2,000 - \$10,000',
                    child: Text('\$2,000 - \$10,000'),
                  ),
                  DropdownMenuItem(
                    value: '\$10,000 - \$50,000',
                    child: Text('\$10,000 - \$50,000'),
                  ),
                  DropdownMenuItem(
                    value: '\$50,000+',
                    child: Text('\$50,000+'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            Text('PRIMARY GOAL', style: labelStyle()),
            SizedBox(height: 8),

            // Short-term
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGoal = 'short';
                });
              },
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: selectedGoal == 'short'
                      ? Color(0xFF3244E6)
                      : Colors.grey[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: selectedGoal == 'short'
                        ? Color(0xFF3244E6)
                        : Colors.grey,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      selectedGoal == 'short'
                          ? Icons.radio_button_checked
                          : Icons.radio_button_unchecked,
                      color: selectedGoal == 'short'
                          ? Colors.white
                          : Colors.grey,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Short-term projects',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: selectedGoal == 'short'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        Text(
                          'Gig-based work & specific tasks',
                          style: TextStyle(
                            fontSize: 12,
                            color: selectedGoal == 'short'
                                ? Colors.white70
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),

            // Long-term
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGoal = 'long';
                });
              },
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: selectedGoal == 'long'
                      ? Color(0xFF3244E6)
                      : Colors.grey[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: selectedGoal == 'long'
                        ? Color(0xFF3244E6)
                        : Colors.grey,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      selectedGoal == 'long'
                          ? Icons.radio_button_checked
                          : Icons.radio_button_unchecked,
                      color: selectedGoal == 'long'
                          ? Colors.white
                          : Colors.grey,
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Long-term hiring',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: selectedGoal == 'long'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        Text(
                          'Ongoing roles & team building',
                          style: TextStyle(
                            fontSize: 12,
                            color: selectedGoal == 'long'
                                ? Colors.white70
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3244E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  TextStyle labelStyle() {
    return TextStyle(
      fontSize: 12,
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    );
  }
}
