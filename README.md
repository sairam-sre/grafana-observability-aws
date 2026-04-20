 ### Grafana Observability using AWS ###

### 📌 Project Overview

This project demonstrates how to monitor EC2 CPU utilization using AWS CloudWatch and Grafana, and send alerts via SNS Email.

---

### 🛠️ Tools Used

- AWS EC2
- AWS CloudWatch
- AWS SNS
- AWS Managed Grafana
- IAM Roles

---

### ⚙️ Steps Performed

1. Created EC2 Instance

- Launched EC2 instance
- Installed stress tool

2. Generated CPU Load

      stress --cpu 1

3. Configured CloudWatch

- Monitored CPUUtilization metric

4. Configured Grafana

- Connected CloudWatch as data source
- Created alert rule

5. Set Threshold

- Alert when CPU > 30%

6. Configured SNS

- Created SNS Topic
- Subscribed Email
- Confirmed subscription

7. Alert Triggered

- Email received when CPU crossed threshold

---

## 📸 Screenshots

### Grafana Alert
<img width="1910" height="854" alt="Screenshot 2026-04-21 010043" src="https://github.com/user-attachments/assets/b73d3699-6f27-4e65-82b8-ff6ee037351c" />

<img width="1903" height="835" alt="Screenshot 2026-04-21 010016" src="https://github.com/user-attachments/assets/ffcb46fd-2c03-43d9-8c85-abf84a01d0a8" />

### Email Notification (SNS)

<img width="1080" height="1460" alt="IMG_20260421_005628" src="https://github.com/user-attachments/assets/57691e40-a8d1-4594-98d2-477602627d6a" />

---

### 📧 Output

Alert email received successfully from Grafana via SNS.

---

### ✅ Conclusion

Successfully implemented AWS monitoring and alerting using Grafana and SNS.
