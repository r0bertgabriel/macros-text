# Clean Text Clipboard

This project provides a Python script that cleans text from the clipboard by removing unnecessary spaces from text extracted from PDFs (principally but not exclusively). The goal is to make it easier to handle pasted text, making it more readable and ready for use in other applications.

## Description

`clean_text.py` is a simple script that uses `xclip` to get text from the clipboard, cleans unnecessary spaces, and puts the cleaned text back into the clipboard. This script is especially useful for those working with text extracted from PDFs who want to automatically remove unwanted spaces.

## Prerequisites

Make sure you have the following prerequisites installed on your system:

- Python 3.x
- xclip

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/clean-text-clipboard.git
   cd clean-text-clipboard
   ```

2. **Make the script executable:**
   ```bash
   xclip -o | python3 clean_text.py | xclip -selection clipboard
   ```

3. **Usage**

3.1. Copy the text you want to clean to the clipboard.
3.2. Run the script manually:

   ```bash
xclip -o | python3 clean_text.py | xclip -selection clipboard
   ```
or configure a shortcut in i3wm to run the script with a command:
   
```bash
bindsym $mod+Shift+c exec "xclip -o | python3 /path/to/clean_text.py | xclip -selection clipboard"
   ```

Paste the cleaned text wherever you need.

---

## Contribution

Contributions are welcome! Feel free to open an issue or submit a pull request with improvements and fixes.

Fork the repository
- Create a branch for your feature or bug fix (git checkout -b feature/MyFeature)
- Commit your changes (git commit -am 'Added MyFeature')
- Push to the branch (git push origin feature/MyFeature)
- Open a Pull Request

## Contact

For more information, please contact:

- Email: robertdsgabriel@gmail.com
  
- GitHub: [r0bert](https://github.com/r0bertds)


