#!/bin/bash
# Love-Launcher.command for Mac 💻❤️🌮

# Prompt for username
read -p "Enter your desired username: " USERNAME

echo "🌮 Hola $USERNAME! Let's get your love tools ready..."

# Check and install Homebrew if needed
if ! command -v brew &> /dev/null
then
    echo "🛠️ Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install git and python3 if not present
echo "🔍 Checking Git and Python3..."
brew install git
brew install python

# Clone the repo
echo "📦 Cloning your lafamilia repo..."
cd ~
rm -rf lafamilia
git clone https://github.com/minivega/lafamilia.git
cd lafamilia

# Placeholder: launch your tool or app here
echo "🚀 Launching the dashboard (placeholder)..."
python3 love_dashboard.py || echo "🧸 (Placeholder: no dashboard yet, but repo is synced!)"

echo "🎉 All done, $USERNAME. Welcome to La Familia."
