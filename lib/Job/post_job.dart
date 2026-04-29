import 'package:flutter/material.dart';
import 'package:work_y/Home/home.dart';
import 'package:work_y/Job/Job_widgets/requirment_skills.dart';
import 'package:work_y/Job/Job_widgets/suggested_skills.dart';
import 'package:work_y/Job/Job_widgets/section_title.dart';

class PostJob extends StatefulWidget {
  const PostJob({super.key});

  @override
  State<PostJob> createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  String selectedCategory = 'Design';
  String selectedDuration = '1-3 Months';
  String selectedRate = 'Fixed';
  String jobDescription = '';
  int jobDescCount = 0;
  bool boostEnabled = false;
  int currentTabIndex = 2;
  double budgetValue = 10;

  bool skillFigma = true;
  bool skillUIDesign = true;
  bool skillReactJS = false;
  bool skillTypeScript = false;
  bool skillPrototyping = false;
  bool skillMotion = false;

  String formatMoney(double value) {
    int number = value.toInt();

    if (number >= 10000) {
      String s = number.toString();
      String firstPart = s.substring(0, s.length - 3);
      String lastPart = s.substring(s.length - 3);
      return firstPart + ',' + lastPart;
    }

    if (number >= 1000) {
      String s = number.toString();
      return s[0] + ',' + s.substring(1);
    }

    return number.toString();
  }

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
          'Post a Job',
          style: TextStyle(
            color: Color(0xFF3244E6),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: 'Project Details'),
            SizedBox(height: 16),

            Text('PROJECT TITLE', style: labelStyle()),
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                hintText: 'e.g. Senior Mobile App Developer',
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13),
                contentPadding: EdgeInsets.all(12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xFF3244E6)),
                ),
              ),
            ),
            SizedBox(height: 14),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CATEGORY', style: labelStyle()),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton<String>(
                          value: selectedCategory,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCategory = newValue!;
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              value: 'Design',
                              child: Text(
                                'Design',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Development',
                              child: Text(
                                'Development',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Marketing',
                              child: Text(
                                'Marketing',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'Writing',
                              child: Text(
                                'Writing',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DURATION', style: labelStyle()),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton<String>(
                          value: selectedDuration,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedDuration = newValue!;
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              value: '< 1 Month',
                              child: Text(
                                '< 1 Month',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '1-3 Months',
                              child: Text(
                                '1-3 Months',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '3-6 Months',
                              child: Text(
                                '3-6 Months',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '6+ Months',
                              child: Text(
                                '6+ Months',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),

            Text('JOB DESCRIPTION', style: labelStyle()),
            SizedBox(height: 4),
            TextField(
              maxLines: 5,
              maxLength: 1000,
              onChanged: (text) {
                setState(() {
                  jobDescCount = text.length;
                });
              },
              decoration: InputDecoration(
                hintText:
                    'Describe the role, responsibilities, and key outcomes...',
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13),
                contentPadding: EdgeInsets.all(12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Color(0xFF3244E6)),
                ),
              ),
            ),

            SizedBox(height: 14),

            Text('REQUIRED SKILLS', style: labelStyle()),
            SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                if (skillFigma)
                  RequiredSkills(
                    name: 'Figma',
                    onRemove: () {
                      setState(() {
                        skillFigma = false;
                      });
                    },
                  ),

                if (skillUIDesign)
                  RequiredSkills(
                    name: 'UI Design',
                    onRemove: () {
                      setState(() {
                        skillUIDesign = false;
                      });
                    },
                  ),

                if (skillReactJS)
                  RequiredSkills(
                    name: 'React.js',
                    onRemove: () {
                      setState(() {
                        skillReactJS = false;
                      });
                    },
                  ),

                if (skillTypeScript)
                  RequiredSkills(
                    name: 'TypeScript',
                    onRemove: () {
                      setState(() {
                        skillTypeScript = false;
                      });
                    },
                  ),

                if (skillPrototyping)
                  RequiredSkills(
                    name: 'Prototyping',
                    onRemove: () {
                      setState(() {
                        skillPrototyping = false;
                      });
                    },
                  ),

                if (skillMotion)
                  RequiredSkills(
                    name: 'Motion',
                    onRemove: () {
                      setState(() {
                        skillMotion = false;
                      });
                    },
                  ),
              ],
            ),
            SizedBox(height: 14),

            Text('SUGGESTED FOR YOU', style: labelStyle()),
            SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                if (!skillReactJS)
                  SuggestedSkills(
                    name: 'React.js',
                    onAdd: () {
                      setState(() {
                        skillReactJS = true;
                      });
                    },
                  ),

                if (!skillTypeScript)
                  SuggestedSkills(
                    name: 'TypeScript',
                    onAdd: () {
                      setState(() {
                        skillTypeScript = true;
                      });
                    },
                  ),

                if (!skillPrototyping)
                  SuggestedSkills(
                    name: 'Prototyping',
                    onAdd: () {
                      setState(() {
                        skillPrototyping = true;
                      });
                    },
                  ),

                if (!skillMotion)
                  SuggestedSkills(
                    name: 'Motion',
                    onAdd: () {
                      setState(() {
                        skillMotion = true;
                      });
                    },
                  ),
              ],
            ),
            SizedBox(height: 14),

            Text('ESTIMATED BUDGET', style: labelStyle()),
            SizedBox(height: 6),
            Row(
              children: [
                Text(
                  '\$${formatMoney(budgetValue)}',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3244E6),
                  ),
                ),
                SizedBox(width: 6),
                Text('USD', style: TextStyle(color: Colors.grey, fontSize: 14)),
                Spacer(),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRate = 'Fixed';
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: selectedRate == 'Fixed'
                          ? Color(0xFF3244E6)
                          : Colors.grey[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Fixed',
                      style: TextStyle(
                        fontSize: 12,
                        color: selectedRate == 'Fixed'
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 6),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRate = 'Hourly';
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: selectedRate == 'Hourly'
                          ? Color(0xFF3244E6)
                          : Colors.grey[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Hourly',
                      style: TextStyle(
                        fontSize: 12,
                        color: selectedRate == 'Hourly'
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'MIN: \$10',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  'MAX: \$50K',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),

            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Color(0xFF3244E6),
                thumbColor: Color(0xFF3244E6),
                inactiveTrackColor: Colors.grey[200],
                trackHeight: 3,
              ),
              child: Slider(
                value: budgetValue,
                min: 10,
                max: 50000,
                onChanged: (double newValue) {
                  setState(() {
                    budgetValue = newValue;
                  });
                },
              ),
            ),
            SizedBox(height: 14),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF3244E6),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '⚡ Boost your reach',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Switch(
                        value: boostEnabled,
                        activeColor: Colors.white24,
                        onChanged: (bool newValue) {
                          setState(() {
                            boostEnabled = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Get 3x more applications by featuring your job at the top of the feed for 7 days.',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '+\$9.99 USD',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'RECOMMENDED',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

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
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  'Publish Job Opportunity',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Save as Draft',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
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
      fontSize: 11,
      color: Colors.grey,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    );
  }
}
