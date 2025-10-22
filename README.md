# 🎂 Birthday Paradox Monte Carlo Simulator

A **Flutter Web App** that uses a **Monte Carlo simulation** to estimate the probability that two people in a group share the same birthday — also known as the *birthday paradox*.

---

## 🚀 Demo
👉 [Live Demo](https:th-ace22.github.io/birthday_paradox_sim/)  
*(Replace with your actual GitHub Pages link once deployed)*

---

## 🧠 About the Project
This project demonstrates how **Monte Carlo methods** can be used to estimate probabilities through random simulations.  
The app lets users:
- Adjust the number of people in the group (2–100)
- Run thousands of random trials
- See the estimated probability of a shared birthday

---

## 🧩 Built With
- [Flutter](https://flutter.dev/)
- Dart
- Monte Carlo Simulation
- Material Design UI

---

## 📊 Monte Carlo Algorithm
1. Randomly assign birthdays (0–364) to `n` people.
2. Check if any two share the same day.
3. Repeat for many trials.
4. Estimate the probability as:
