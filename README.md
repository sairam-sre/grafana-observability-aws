### AWS Grafana Observability Project ###

 📌 Project Overview

This project demonstrates how to monitor an AWS EC2 instance using CloudWatch metrics, visualize them in Grafana, and configure alerting with SNS email notifications. Infrastructure is provisioned using AWS CloudFormation template. It also includes secure access setup using IAM Identity Center (SSO).

## 🧠 Architecture Flow

EC2 Instance → CloudWatch Metrics → Grafana Dashboard & Alerting → SNS Topic → Email Notification
---

 🛠️ Services Used

- AWS EC2
- AWS CloudWatch
- AWS Managed Grafana
- AWS SNS (Simple Notification Service)
- IAM Identity Center (SSO)
- IAM Roles & Policies

---

🔐 IAM Identity Center (SSO) Setup

- Configured IAM Identity Center for secure login
- Created user and assigned permissions
- Avoided using root account for operations

Permissions Used:

- AmazonGrafanaCloudWatchAccess
- AmazonSNSFullAccess

Outcome:

- Logged into AWS using SSO
- Managed resources securely using roles

---

⚙️ Step-by-Step Execution

1. Provisioned EC2 Instance

   - Launched EC2 instance (t2.micro)
   - Connected via SSH

2. Installed stress tool for load testing

    Used to generate CPU load:

    sudo yum install stress -y

3. Generated CPU Load

      stress --cpu 1

         - This increases CPU utilization for testing alerts

4. CloudWatch Monitoring

   - Used default EC2 metric: CPUUtilization
   - Verified metrics in CloudWatch console

5. Grafana Setup

   - Opened AWS Managed Grafana workspace
   - Added CloudWatch as data source
   - Verified EC2 metrics in Grafana dashboard

6. Created Alert Rule in Grafana

    - Metric: CPUUtilization
    - Condition: IS ABOVE 30%
    - Evaluation: Every 1 minute
    - Pending period: 5 minutes

7. SNS Configuration

   - Created SNS Topic (grafana-alerts)
   - Subscribed email endpoint
   - Confirmed subscription via email

8. Integrated SNS with Grafana

   - Created Contact Point using SNS
   - Updated Notification Policy
   - Linked alert rule to SNS contact point

9. Alert Triggered

   - CPU usage crossed threshold
   - Alert status changed to FIRING
   - Email notification received successfully

---

📸 Screenshots

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

📧 Output

- Successfully received alert email when CPU crossed threshold
- Alert contained:
  - Instance ID
  - CPU value
  - Alert name

 ## 📊 Sample Alert

- CPU Usage: 75%
- Alert State: FIRING
- Notification: Email received

---

📁 Project Structure

grafana-observability-aws/
│
├── README.md
├── cloudformation/
│   └── template.yaml
└── scripts/
└── setup-notes.txt

---

✅ Conclusion

- Implemented end-to-end monitoring using AWS services
- Configured alerting mechanism using Grafana and SNS
- Ensured secure access using IAM Identity Center
- Verified real-time alerting through email notifications

  ## 🤔 Why This Setup?

- EC2 → compute instance
- CloudWatch → metric collection
- Grafana → visualization & alerting
- SNS → notification delivery

---

🚀 Future Improvements

- Automate setup using Terraform or CloudFormation
- Add GitHub Actions for CI/CD
- Extend monitoring to memory/disk metrics

  ## 📚 Key Learnings

- AWS monitoring setup
- Alerting using Grafana
- SNS integration
- IAM role-based access
- Real-time system behavior


