# How to Commit and Push to GitHub

## Option 1: Using GitHub Desktop (Easiest)

1. **Download GitHub Desktop** (if you don't have it):
   - Go to https://desktop.github.com/
   - Download and install GitHub Desktop

2. **Open your repository in GitHub Desktop**:
   - Open GitHub Desktop
   - Click "File" → "Add Local Repository"
   - Navigate to `C:\Users\adina\Adi.html`
   - Click "Add Repository"

3. **If this is a new repository**:
   - Click "Publish repository" button
   - Choose your GitHub account
   - Name it (e.g., "Adi.html" or your repository name)
   - Make sure "Keep this code private" is unchecked if you want it public
   - Click "Publish Repository"

4. **Commit and Push**:
   - You'll see all your changes listed
   - Write a commit message: "Add media files and update paths for GitHub Pages"
   - Click "Commit to main" (or master)
   - Click "Push origin" button

---

## Option 2: Using Git Command Line

### Step 1: Install Git (if not installed)
1. Download Git from: https://git-scm.com/download/win
2. Install it with default settings
3. Restart your terminal/PowerShell

### Step 2: Initialize Git Repository (if new)

Open PowerShell in your project folder and run:

```powershell
# Navigate to your project
cd C:\Users\adina\Adi.html

# Initialize git repository (if not already done)
git init

# Add remote repository (replace YOUR_USERNAME and YOUR_REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

### Step 3: Commit and Push

```powershell
# Add all files
git add assets/
git add *.html
git add *.md
git add *.ps1

# Commit
git commit -m "Add media files and update paths for GitHub Pages"

# Push to GitHub
git push -u origin main
```

**Note:** If you get an error about "main" vs "master", try:
```powershell
git push -u origin master
```

---

## Option 3: Using VS Code (If you have it)

1. **Open VS Code** in your project folder
2. **Open Source Control** (Ctrl+Shift+G)
3. **Stage all changes** (click the + next to "Changes")
4. **Write commit message**: "Add media files and update paths for GitHub Pages"
5. **Click Commit** (checkmark icon)
6. **Click Push** (up arrow icon)

---

## If You Need to Create a New GitHub Repository

1. Go to https://github.com/new
2. Repository name: `Adi.html` (or any name you prefer)
3. Description: "NAANO KI PALTAN website"
4. Choose Public or Private
5. **DO NOT** initialize with README, .gitignore, or license
6. Click "Create repository"
7. Follow the instructions above to connect your local folder

---

## Enable GitHub Pages

After pushing your code:

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section (left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Select **main** (or **master**) branch
6. Select **/ (root)** folder
7. Click **Save**
8. Your site will be available at: `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

---

## Verify Everything Works

After pushing and enabling GitHub Pages:

1. Wait 1-2 minutes for GitHub Pages to build
2. Visit your GitHub Pages URL
3. Check that:
   - Images display correctly
   - Audio plays
   - Videos play
   - All pages load properly

---

## Troubleshooting

**If you get authentication errors:**
- Use GitHub Desktop (easiest)
- Or set up a Personal Access Token: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

**If files are too large:**
- GitHub has a 100MB file limit
- If videos are too large, consider compressing them or using a video hosting service

**If GitHub Pages doesn't update:**
- Check the Actions tab in your repository for build errors
- Make sure your HTML files are in the root directory
- Wait a few minutes and refresh




















