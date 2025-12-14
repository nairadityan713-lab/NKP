# File Mapping Guide - What to Copy Where

This guide tells you exactly which files to copy from your Downloads folder to the assets folders.

## Step 1: Copy Logo Image

**From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-03-02 at 12.21.21 AM.jpeg`  
**To:** `assets\images\logo.jpeg`  
**Rename to:** `logo.jpeg`

---

## Step 2: Copy Audio Files

### Homepage Background Music
**From:** `C:\Users\adina\Downloads\WhatsApp Audio 2025-12-10 at 8.09.28 PM.mpeg`  
**To:** `assets\audio\background-home.mpeg`  
**Rename to:** `background-home.mpeg`

### Gallery Background Music
**From:** `C:\Users\adina\Downloads\WhatsApp Audio 2025-12-06 at 11.39.21 PM.mpeg`  
**To:** `assets\audio\background-gallery.mpeg`  
**Rename to:** `background-gallery.mpeg`

### About Page Background Music
**From:** `C:\Users\adina\Downloads\awesome_chillar.mp3`  
**To:** `assets\audio\awesome_chillar.mp3`  
**Keep name:** `awesome_chillar.mp3` (already correct)

---

## Step 3: Copy Video Files

### Hero Video (Homepage)
**From:** `C:\Users\adina\Downloads\WhatsApp Video 2025-03-01 at 3.57.21 PM.mp4`  
**To:** `assets\video\hero-video.mp4`  
**Rename to:** `hero-video.mp4`

### Birthday Gift Video
**From:** `C:\Users\adina\Downloads\WhatsApp Video 2025-12-01 at 1.40.16 PM.mp4`  
**To:** `assets\video\birthday-gift.mp4`  
**Rename to:** `birthday-gift.mp4`

### Behind the Scenes Videos
**From:** `C:\Users\adina\Downloads\WhatsApp Video 2025-05-02 at 2.10.31 PM.mp4`  
**To:** `assets\video\bts-video1.mp4`  
**Rename to:** `bts-video1.mp4`

**From:** `C:\Users\adina\Downloads\WhatsApp Video 2025-05-02 at 2.16.34 PM.mp4`  
**To:** `assets\video\bts-video2.mp4`  
**Rename to:** `bts-video2.mp4`

---

## Step 4: Copy Special Mention Images

### Jadhav Dada
**From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-12 at 6.04.12 PM.jpeg`  
**To:** `assets\images\jadhav-dada.jpeg`  
**Rename to:** `jadhav-dada.jpeg`

### Sai Radha
**From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-12 at 3.20.55 PM.jpeg`  
**To:** `assets\images\sai-radha.jpeg`  
**Rename to:** `sai-radha.jpeg`

### Divijaa
**From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-03-04 at 3.19.43 PM.jpeg`  
**To:** `assets\images\divijaa.jpeg`  
**Rename to:** `divijaa.jpeg`

---

## Step 5: Copy Video Poster Image

**From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-06 at 8.15.30 PM.jpeg`  
**To:** `assets\images\video-poster.jpeg`  
**Rename to:** `video-poster.jpeg`

---

## Step 6: Copy Collage Images (9 images)

These are the images that appear at the end of the slideshow:

1. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-07 at 10.58.55 PM (3).jpeg`  
   **To:** `assets\images\collage-1.jpeg`

2. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-07 at 10.58.55 PM (1).jpeg`  
   **To:** `assets\images\collage-2.jpeg`

3. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-07 at 10.58.55 PM (2).jpeg`  
   **To:** `assets\images\collage-3.jpeg`

4. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-07 at 10.58.56 PM.jpeg`  
   **To:** `assets\images\collage-4.jpeg`

5. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-07 at 10.58.56 PM (1).jpeg`  
   **To:** `assets\images\collage-5.jpeg`

6. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-12 at 12.20.29 AM.jpeg`  
   **To:** `assets\images\collage-6.jpeg`

7. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-07 at 4.36.07 AM.jpeg`  
   **To:** `assets\images\collage-7.jpeg`

8. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-12 at 12.20.23 AM.jpeg`  
   **To:** `assets\images\collage-8.jpeg`

9. **From:** `C:\Users\adina\Downloads\WhatsApp Image 2025-12-07 at 10.58.55 PM.jpeg`  
   **To:** `assets\images\collage-9.jpeg`

---

## Step 7: Copy Gallery Images

**IMPORTANT:** The gallery images in `images.html` still reference the original WhatsApp filenames. You have two options:

### Option A: Keep Original Filenames (Easier)
Just copy all your gallery images from Downloads to `assets\images\` with their original names. The HTML file will work as-is.

### Option B: Rename to Numbered Format (Cleaner URLs)
Copy and rename all gallery images to `gallery-1.jpeg`, `gallery-2.jpeg`, etc., then I can update the HTML file to match.

**Gallery images to copy (37 images total):**
- All images that start with "WhatsApp Image" from your Downloads folder
- Copy them to `assets\images\` folder
- Either keep original names OR rename to `gallery-1.jpeg`, `gallery-2.jpeg`, etc.

---

## Quick Copy Commands (PowerShell)

If you want to copy files quickly, you can use these commands in PowerShell (adjust paths as needed):

```powershell
# Copy logo
Copy-Item "C:\Users\adina\Downloads\WhatsApp Image 2025-03-02 at 12.21.21 AM.jpeg" -Destination "assets\images\logo.jpeg"

# Copy audio files
Copy-Item "C:\Users\adina\Downloads\WhatsApp Audio 2025-12-10 at 8.09.28 PM.mpeg" -Destination "assets\audio\background-home.mpeg"
Copy-Item "C:\Users\adina\Downloads\WhatsApp Audio 2025-12-06 at 11.39.21 PM.mpeg" -Destination "assets\audio\background-gallery.mpeg"
Copy-Item "C:\Users\adina\Downloads\awesome_chillar.mp3" -Destination "assets\audio\awesome_chillar.mp3"

# Copy video files
Copy-Item "C:\Users\adina\Downloads\WhatsApp Video 2025-03-01 at 3.57.21 PM.mp4" -Destination "assets\video\hero-video.mp4"
Copy-Item "C:\Users\adina\Downloads\WhatsApp Video 2025-12-01 at 1.40.16 PM.mp4" -Destination "assets\video\birthday-gift.mp4"
Copy-Item "C:\Users\adina\Downloads\WhatsApp Video 2025-05-02 at 2.10.31 PM.mp4" -Destination "assets\video\bts-video1.mp4"
Copy-Item "C:\Users\adina\Downloads\WhatsApp Video 2025-05-02 at 2.16.34 PM.mp4" -Destination "assets\video\bts-video2.mp4"
```

---

## After Copying Files

1. **Verify all files are in place** - Check that all files are in the correct folders
2. **Test locally** - Open `index.html` in your browser to make sure images/audio/video load
3. **Commit to Git:**
   ```bash
   git add assets/
   git add *.html
   git commit -m "Add media files and update paths for GitHub Pages"
   git push
   ```
4. **Wait for GitHub Pages to update** - Usually takes 1-2 minutes after pushing

---

## Need Help?

If you want me to update the gallery images to use numbered filenames (`gallery-1.jpeg`, etc.), just let me know and I can update the HTML file for you!

