#!/bin/bash
# Build and run the VS Code extension

echo "Building extension..."
NODE_OPTIONS="--openssl-legacy-provider" npm run compile

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo ""
    echo "To run the extension:"
    echo "1. Open this folder in VS Code"
    echo "2. Press F5 or go to Run and Debug → 'Run Extension'"
    echo "3. A new VS Code window will open with your extension loaded"
    echo ""
    echo "In the new window:"
    echo "1. Open a .py file"
    echo "2. Right-click → 'Open as a Jupyter Notebook'"
    echo "3. Test with multiple .py files to verify the fix works!"
else
    echo "❌ Build failed!"
    exit 1
fi
