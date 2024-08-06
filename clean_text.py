import sys

def clean_text(text):
    # Remove múltiplos espaços e novas linhas extras
    cleaned_text = ' '.join(text.split())
    return cleaned_text

if __name__ == "__main__":
    input_text = sys.stdin.read()
    print(clean_text(input_text))

