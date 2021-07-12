import 'package:flutter/material.dart';
import 'package:future_jobs/models/job_model.dart';
import 'package:future_jobs/pages/detail_page.dart';

import '../theme.dart';

class JobTile extends StatelessWidget {
  final JobModel Job;

  JobTile(this.Job);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(Job),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            Job.companyLogo,
            width: 44,
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Job.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  Job.companyName,
                  style: greyTextStyle,
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
