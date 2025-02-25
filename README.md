# Automated Testing for Video App

This project is designed to automate the testing of a video application using **Robot Framework** and **Appium**. The setup and execution are intended to be used within **VS Code**.

## 📌 Prerequisites

- Install **Appium** globally:
  ```sh
  npm install -g appium
  ```
- Install **Android iOS Emulator** extension (for running virtual devices)
- Ensure **ADB** is properly configured and the device/emulator is connected:
  ```sh
  adb devices
  ```

## 🛠 Setting Up the Virtual Environment (venv)

### 1️⃣ Create a Virtual Environment
```sh
python -m venv .venv
```

### 2️⃣ Activate the Virtual Environment
- **Windows**:
  ```sh
  .venv\Scripts\activate
  ```
- **macOS/Linux**:
  ```sh
  source .venv/bin/activate
  ```

## 📦 Installing Dependencies

With the virtual environment activated, install the necessary libraries:
```sh
pip install robotframework-appiumlibrary
```
## 🚀 Running the Appium Server

Start the Appium server using the following command:
```sh
appium -pa wd/hub
```

## 🏃 Running the Tests

Execute the Robot Framework tests with the following command:
```sh
robot -d log .
```

## 📂 Logs and Reports

After execution, logs and reports will be stored in the **log/** directory.

---

### ⚠️ Troubleshooting

- If no device is detected, try restarting the ADB server:
  ```sh
  adb kill-server
  adb start-server
  ```
- If Appium fails to connect, ensure that the Appium server is running (`appium -pa wd/hub`).
- If dependencies are missing, reinstall them using `pip install -r requirements.txt` (if a `requirements.txt` file exists).