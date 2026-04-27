# AWS Grafana Observability Setup

## Overview
This project demonstrates monitoring an EC2 instance using CloudWatch, creating alerts in Grafana, and sending notifications via SNS email.

---

## Architecture
EC2 → CloudWatch → Grafana → SNS → Email

---

## Execution Steps

1. Created EC2 instance (t2.micro)
2. Connected to EC2 via SSH

3. Installed stress tool:
   sudo yum install stress -y

4. Generated CPU load:
   stress --cpu 1

5. Verified CPUUtilization metric in CloudWatch

6. Configured AWS Managed Grafana:
   - Added CloudWatch as data source
   - Created dashboard

7. Created Alert Rule in Grafana:
   - Metric: CPUUtilization
   - Condition: Above 30%
   - Evaluation: 1 minute

8. Configured SNS:
   - Created SNS topic
   - Subscribed email
   - Confirmed subscription

9. Integrated SNS with Grafana:
   - Created contact point
   - Linked alert rule

10. Alert Triggered:
   - CPU usage increased
   - Alert state changed to FIRING
   - Email notification received

---

## Commands Used

sudo yum install stress -y  
stress --cpu 1

---

## Output

- CPU usage increased
- Alert triggered in Grafana
- Email received via SNS

---

## CloudFormation

A basic CloudFormation template is included in this repository.

This setup was executed manually using AWS Console.  
The template is provided to demonstrate how the infrastructure can be automated.

---

## 📸 Screenshots

Grafana Alert (Firing State)

<img width="1910" height="854" alt="Screenshot 2026-04-21 010043" src="https://github.com/user-attachments/assets/b73d3699-6f27-4e65-82b8-ff6ee037351c" />


<img width="1903" height="835" alt="Screenshot 2026-04-21 010016" src="https://github.com/user-attachments/assets/ffcb46fd-2c03-43d9-8c85-abf84a01d0a8" />

Grafana Alerts (CPU Utilization, NetworkOut, In)

<img width="1919" height="973" alt="Screenshot 2026-04-21 011623" src="https://github.com/user-attachments/assets/b4f4c75a-6fef-4410-a77f-250973b9c663" />

SNS Subscription Confirmation

<img width="1903" height="822" alt="Screenshot 2026-04-21 014322" src="https://github.com/user-attachments/assets/d610b987-0602-4aa7-8beb-59559ed3b573" />


Email Notification

<img width="1080" height="1460" alt="IMG_20260421_005628" src="https://github.com/user-attachments/assets/57691e40-a8d1-4594-98d2-477602627d6a" />

---

## Conclusion

- Implemented monitoring using AWS services
- Configured alerting using Grafana and SNS
- Verified real-time email notifications.





