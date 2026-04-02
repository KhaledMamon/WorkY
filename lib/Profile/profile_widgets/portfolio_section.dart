import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://lh3.googleusercontent.com/aida-public/AB6AXuByqS3DAlL7u6qmlVbpAmAgtqE7FxjWTedh44LL5wErDHrJTVnTlEwylesnxc1TRXCa_cbFT9ktRShyiw6SEuY0BWf9b7M3vSbrzBHf9RbDLJRmNV_hrH6VDJV_iF_W-zKUdMAX5MsDnLEFQHAW4K6CH4AYxnh2trovwiGCehlSHmieSs9eTjN6UXItL3diuw3jE2z5Sn9sB7LlAonc-Ffhf1jjeTLoBgpYZbSHdU9D9uMa_8dwkY3f1Z4vMFd3imwXAv4syqfd-Ndc',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            // الصورة الصغيرة الأولى
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuCFLAEqw5_RAk8fAE9eQGfmHy4pxfZ5_DbBuKekk2EyV23wIABB88ig40eOVPluXQjF74IYl3vKK1NgvEBLPe2N4DPxepku1YoUw4pF7XoKLSNT-7X7jO6uoO8ul-Z6XzkVFAfVcqASK9FjmoCnxZYuoIH_oX9Qr6AIi6Igm4oZLOT9ayQCKX0ZEu1GUM5gA6Kzt_gre2ILBV1lx0RSIG2Zgxhr3ZigoMAXfUk-RrOBjr2uo_boqUsZC6h6GPf7BvrCFHyGtFL6hpJH',
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            // الصورة الصغيرة الثانية
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuAtMGOZYDWUyWyDKIXx6jdV9XbzCEtXPqJf2pWVOup4VPaTx7cl0VTr4Ckp4r6Ru1-YMvZle0Lv6JKSctLBmPku2-TrPwo4KIxQQDWS5DjlenFEY9gq-cM4Vc1KwuG7a9LQ3pgjsfwF4DdNyqy-S_xlRRVV1V85bcA0So7maVmHUZB5VKnKzBiyjxPg6-o_Ex8HeDnVeYmnITMgN9Z9Pmy0zYQZFZx6ziYbainKQx8gNT5vTURdlmpc7tyfVChyDRk83RzlHblHvEy4',
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
