# Unlimited Hotspot for PC

This script, `unlimitedhotspot(improved).bat`, enables you to use your mobile phone's hotspot data on your laptop or PC, effectively providing unlimited mobile data access for your computer.

## Usage

To use the script, follow these simple steps:

1. **Download the Script:**
   - Obtain the `unlimitedhotspot(improved).bat` file from this repository and save it to your computer.

2. **Run as Administrator:**
   - Locate the downloaded `unlimitedhotspot(improved).bat` file.
   - Right-click on the file and choose "Run as administrator" from the context menu. This step is crucial as the script requires administrative privileges to modify network settings.

3. **Script Execution:**
   - The script will automatically adjust your network settings, specifically the Time to Live (TTL) or Hop Limit, to enable the use of your phone's hotspot data on your computer.

## Important Notes

- **Administrative Privileges:**
  - Running the script as an administrator is mandatory for it to work correctly. The script includes a check for administrative privileges and will request them if not already granted.

- **Modifying Time to Live (TTL):**
  - The script changes the TTL setting of your computer to 65. This adjustment is essential for ensuring compatibility with mobile hotspot data usage, allowing your PC to communicate effectively with the mobile network.

- **Data Plan Considerations:**
  - Be aware of the terms of your mobile data plan. Using a mobile hotspot can consume data quickly, and you should confirm that your plan accommodates this type of usage without incurring extra charges.

- **Compatibility:**
  - `unlimitedhotspot.bat` is specifically designed for Windows operating systems. Its functionality is not guaranteed on other platforms.

- **Error Handling:**
  - The script includes error handling for situations where the TTL adjustment may not succeed. Follow any on-screen instructions in case of an error.

By following these guidelines, you can seamlessly use your mobile data on your PC, ensuring continuous internet access wherever you have mobile coverage.
