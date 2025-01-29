---
layout: post
permalink: hillmantok/pihole-setup.html
title: "HillmanTok University - Guerilla Networking"
---

# Lesson Plan for Instructional Video: Configuring Pi-hole

## Objective:

By the end of this video, viewers will:

Understand what Pi-hole is and its benefits.

Be able to install and configure Pi-hole on their network.

Gain a basic understanding of DNS and how Pi-hole enhances network privacy and performance.

## Target Audience:

Beginners to intermediate users with basic familiarity with home networking.

Individuals interested in improving network privacy and blocking ads.

## Lesson Structure:

1. Introduction (2 minutes)

What is Pi-hole?

Brief description: Pi-hole is a network-wide ad blocker.

Benefits: Blocks ads at the network level, enhances privacy, speeds up browsing, reduces bandwidth usage.

Prerequisites:

A Raspberry Pi (or compatible device) with a power supply and storage (microSD card).

Basic familiarity with connecting to a router.

2. Setting Up Pi-hole (10 minutes)

a. Hardware Preparation (2 minutes):

Overview of hardware requirements:

Raspberry Pi model (e.g., Raspberry Pi 4 or 3).

Network connection: Ethernet or Wi-Fi.

Demonstrate:

Formatting the microSD card using tools like Balena Etcher.

Flashing Raspberry Pi OS onto the card.

b. Software Installation (4 minutes):

Boot up the Raspberry Pi and access the terminal.

Explain the commands step-by-step:

curl -sSL https://install.pi-hole.net | bash

What the command does (downloading and executing the installation script).

Follow the prompts:

Select the network interface (Ethernet or Wi-Fi).

Choose the upstream DNS provider (e.g., Google, OpenDNS).

Configure the web interface.

c. Post-Installation Configuration (4 minutes):

Access the Pi-hole admin dashboard:

Open a browser and go to http://<Pi-hole-IP-address>/admin.

Login with the admin password provided during installation.

Demonstrate:

Adding custom blocklists.

Whitelisting/blacklisting domains.

Monitoring blocked queries.

3. Integrating Pi-hole with Your Network (6 minutes)

a. Configuring the Router (3 minutes):

Explain how to find the router's admin interface (e.g., 192.168.1.1).

Show:

How to set the router's DNS server to Pi-hole’s IP address.

(Optional) Setting a static IP for Pi-hole on the router.

b. Device-Specific DNS Settings (3 minutes):

Show how to configure individual devices (e.g., smartphone, computer) to use Pi-hole as their DNS server if router-level configuration isn’t possible.

4. Advanced Features & Troubleshooting (5 minutes)

a. Features (3 minutes):

Setting up conditional forwarding for local network names.

Using Pi-hole with a VPN for remote ad-blocking.

b. Common Issues & Fixes (2 minutes):

Devices not connecting to the internet: Check DNS settings.

Pi-hole not blocking ads: Verify blocklist settings and DNS propagation.

Tools to test DNS:

nslookup or ping commands.

5. Wrap-Up (2 minutes)

Recap:

What Pi-hole does.

Key steps in installation and configuration.

Encourage viewers:

Experiment with additional blocklists and settings.

Join the Pi-hole community for support.

Share links to resources:

Official Pi-hole documentation.

Recommended blocklist repositories.

## Materials Needed:

Raspberry Pi and necessary peripherals. 

### WHERE TO BUY
- adafruit.com https://www.adafruit.com/product/6008
- pishop.us https://www.pishop.us/product/raspberry-pi-zero-2-w/?src=raspberrypi
Amazon is available but NOT recommended, as there is a significant price markup.

### Optional

heatsink (to help with heat dispersion)


A computer for setup.

Access to a home router.

Tools like Balena Etcher, SSH client, and Pi-hole documentation links.

Pro Tips for Video Presentation:

Use clear visuals: screen recordings for terminal and dashboard walkthroughs.

Keep explanations concise and use diagrams for concepts like DNS.

Include a "troubleshooting" FAQ at the end to address common questions.

Use captions or callouts to highlight critical steps and commands.

This structured plan should help create a comprehensive, engaging instructional video for new Pi-hole users!

## DeepSeek
Absolutely! Creating an instructional video for beginners is a great idea. Below is a detailed lesson plan for your video on configuring Pi-hole. The goal is to make it accessible, engaging, and easy to follow for people who are new to networking and tech.

---

### **Lesson Plan: Configuring Pi-hole for Beginners**

#### **1. Introduction (2-3 minutes)**
   - **What is Pi-hole?**
     - Explain Pi-hole in simple terms: "A network-wide ad blocker that works at the DNS level."
     - Mention its benefits: blocks ads, improves privacy, and speeds up browsing.
   - **Who is this for?**
     - Clarify that Pi-hole is for anyone who wants to improve their home network, even if they’re not tech-savvy.
   - **What will viewers learn?**
     - Briefly outline the steps: setting up Pi-hole on a Raspberry Pi (or other device), configuring it, and connecting it to your network.

---

#### **2. What You’ll Need (2-3 minutes)**
   - **Hardware:**
     - [Raspberry Pi][https://www.pishop.us/product-category/raspberry-pi/raspberry-pi-boards/current-pi-boards/] (any model, but recommend Pi 4 for beginners).
     - MicroSD card (8GB or larger).
     - Power supply for the Raspberry Pi.
     - Ethernet cable (for a wired connection).
   - **Software:**
     - Raspberry Pi Imager (to install the OS).
     - Pi-hole software (we’ll install this during the tutorial).
   - **Optional:**
     - A case for the Raspberry Pi.
     - A monitor, keyboard, and mouse for initial setup (or use headless setup via SSH).

---

#### **3. Setting Up the Raspberry Pi (5-7 minutes)**
   - **Step 1: Install the Operating System**
     - Show how to use Raspberry Pi Imager to install Raspberry Pi OS Lite (headless version).
     - Explain how to enable SSH for remote access.
   - **Step 2: Boot Up the Raspberry Pi**
     - Connect the Raspberry Pi to power, Ethernet, and (if needed) a monitor.
     - Log in via SSH or directly using a monitor.
   - **Step 3: Update the System**
     - Run `sudo apt update && sudo apt upgrade` to ensure the system is up to date.

---

#### **4. Installing Pi-hole (5-7 minutes)**
   - **Step 1: Download and Install Pi-hole**
     - Run the Pi-hole installation command:  
       `curl -sSL https://install.pi-hole.net | bash`
     - Walk through the installation prompts:
       - Choose an upstream DNS provider (e.g., Google DNS, Cloudflare).
       - Enable the web admin interface.
       - Set a password for the admin interface.
   - **Step 2: Note the IP Address**
     - Show how to find the Raspberry Pi’s IP address using `hostname -I`.
     - Explain that this IP will be used to access the Pi-hole admin interface.

---

#### **5. Configuring Your Network to Use Pi-hole (5-7 minutes)**
   - **Option 1: Configure Your Router**
     - Explain how to set the Raspberry Pi’s IP as the primary DNS server in your router settings.
     - Show an example of accessing a router’s admin page (e.g., 192.168.1.1).
   - **Option 2: Configure Individual Devices**
     - Show how to manually set the DNS server on a computer or smartphone to the Raspberry Pi’s IP.
   - **Test the Setup**
     - Visit a website with ads to confirm Pi-hole is blocking them.
     - Check the Pi-hole admin dashboard to see blocked queries.

---

#### **6. Exploring the Pi-hole Admin Interface (5 minutes)**
   - **Overview of the Dashboard**
     - Show the main features: blocked queries, allowed queries, and query log.
   - **Adding Whitelists and Blacklists**
     - Explain how to whitelist a domain (e.g., if a site breaks due to ad blocking).
     - Show how to add custom blocklists.
   - **Changing Settings**
     - Briefly cover settings like DHCP, DNS, and privacy options.

---

#### **7. Troubleshooting Tips (3-5 minutes)**
   - **Common Issues:**
     - Pi-hole not blocking ads: Check if the DNS settings are correct.
     - Slow internet: Ensure the Raspberry Pi is connected via Ethernet.
     - Forgot admin password: Show how to reset it via the command line.
   - **Where to Get Help:**
     - Pi-hole documentation, forums, and Reddit communities.

---

#### **8. Conclusion and Next Steps (2-3 minutes)**
   - **Recap:**
     - Summarize what was covered: setting up Pi-hole, configuring the network, and using the admin interface.
   - **Encourage Experimentation:**
     - Suggest exploring advanced features like custom blocklists or integrating with other tools.
   - **Call to Action:**
     - Ask viewers to like, comment, and subscribe for more tutorials.
     - Provide links to resources (Pi-hole documentation, recommended blocklists, etc.).

---

### **Tips for the Video**
   - **Keep it Visual:**
     - Use screen recordings for command-line steps and on-screen annotations to highlight important details.
   - **Speak Clearly and Slowly:**
     - Avoid jargon and explain technical terms when necessary.
   - **Provide Timestamps:**
     - Add chapters to the video so viewers can easily navigate to specific sections.
   - **Include Links in the Description:**
     - Share links to the Pi-hole website, Raspberry Pi Imager, and any tools or resources mentioned.

---

This lesson plan should help you create a comprehensive and beginner-friendly video. Let me know if you’d like help with scripting or additional details!