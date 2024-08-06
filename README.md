# Clean Text Clipboard

This project provides a Python script that cleans text from the clipboard by removing unnecessary spaces from text extracted from PDFs. The goal is to make it easier to handle pasted text from PDFs, making it more readable and ready for use in other applications.

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
