# AWS Billing & Free Tier Monitoring Task

This folder contains files to help you complete the assessment task for **Billing & Free Tier Cost Monitoring**.

## What is included
- `billing_alarm/billing_alarm.tf`  => Terraform file to create a CloudWatch billing alarm and SNS topic (replace email before applying).
- `free_tier_alerts/instructions.txt` => Short instructions to enable Free Tier alerts via AWS Console.
- `screenshots/` => Placeholder folder where you should add your AWS console screenshots.
- `README.md` => This file

## How to use
1. Download and extract the ZIP.
2. Edit `billing_alarm/billing_alarm.tf` and replace `your-email@example.com` with your email.
3. If using Terraform locally: ensure AWS credentials are configured, then run:
   ```
   terraform init
   terraform apply
   ```
   Confirm the SNS email subscription from your inbox to receive alarm notifications.
4. Take screenshots from the AWS Console for:
   - CloudWatch Billing Alarm configuration
   - Billing -> Free Tier usage alerts page
   Add these screenshots to the `screenshots/` folder and commit to your GitHub repo.

## Notes
- AWS Billing metrics are available only in `us-east-1` region for some accounts; set provider region accordingly.
- Ensure all created AWS resources are deleted after completing the assessment to avoid charges.
