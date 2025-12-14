# GitHub Pages Setup Instructions

## Folder Structure

Your repository should have the following structure:

```
Adi.html/
├── index.html
├── aboutus.html
├── images.html
├── bts.html
├── rules and regulation.html
├── assets/
│   ├── images/
│   │   ├── logo.jpeg (WhatsApp Image 2025-03-02 at 12.21.21 AM.jpeg)
│   │   ├── hero1.jpg (if you have hero slider images)
│   │   └── [all your gallery images]
│   ├── audio/
│   │   ├── background-home.mpeg (WhatsApp Audio 2025-12-10 at 8.09.28 PM.mpeg)
│   │   ├── background-gallery.mpeg (WhatsApp Audio 2025-12-06 at 11.39.21 PM.mpeg)
│   │   └── awesome_chillar.mp3
│   └── video/
│       ├── hero-video.mp4 (WhatsApp Video 2025-03-01 at 3.57.21 PM.mp4)
│       ├── birthday-gift.mp4 (WhatsApp Video 2025-12-01 at 1.40.16 PM.mp4)
│       ├── bts-video1.mp4 (WhatsApp Video 2025-05-02 at 2.10.31 PM.mp4)
│       └── bts-video2.mp4 (WhatsApp Video 2025-05-02 at 2.16.34 PM.mp4)
```

## Steps to Fix Your GitHub Pages Site

1. **Create the folder structure:**
   - Create an `assets` folder in your repository
   - Inside `assets`, create three folders: `images`, `audio`, and `video`

2. **Move your files:**
   - Copy all images from `C:\Users\adina\Downloads\` to `assets/images/`
   - Copy all audio files to `assets/audio/`
   - Copy all video files to `assets/video/`
   
   **Important:** Rename files to remove spaces and special characters. For example:
   - `WhatsApp Image 2025-03-02 at 12.21.21 AM.jpeg` → `logo.jpeg`
   - `WhatsApp Audio 2025-12-10 at 8.09.28 PM.mpeg` → `background-home.mpeg`

3. **Update file references:**
   - All HTML files have been updated to use relative paths
   - Make sure the filenames in the HTML match the actual filenames in your `assets` folder

4. **Commit and push:**
   - Add all files to git
   - Commit the changes
   - Push to GitHub
   - GitHub Pages will automatically update

## File Naming Convention

### Required Files (with exact names):

**Images:**
- `assets/images/logo.jpeg` - Main logo (used in header)
- `assets/images/video-poster.jpeg` - Video thumbnail poster
- `assets/images/jadhav-dada.jpeg` - Special mention image
- `assets/images/sai-radha.jpeg` - Special mention image
- `assets/images/divijaa.jpeg` - Special mention image
- `assets/images/collage-1.jpeg` through `collage-9.jpeg` - Collage images (9 files)
- `assets/images/gallery-1.jpeg` - First gallery image (you can keep original WhatsApp filenames or rename to numbered format)

**Audio:**
- `assets/audio/background-home.mpeg` - Homepage background music
- `assets/audio/background-gallery.mpeg` - Gallery page background music
- `assets/audio/awesome_chillar.mp3` - About page background music

**Video:**
- `assets/video/hero-video.mp4` - Main hero video on homepage
- `assets/video/birthday-gift.mp4` - Birthday gift video
- `assets/video/bts-video1.mp4` - Behind the scenes video 1
- `assets/video/bts-video2.mp4` - Behind the scenes video 2

### Gallery Images Note:

The `images.html` file currently references images with their original WhatsApp filenames (e.g., `WhatsApp Image 2025-03-04 at 2.53.03 PM.jpeg`). You have two options:

**Option 1:** Keep the original filenames (they will work, but URLs will be long)
- Just copy your images to `assets/images/` with their original names

**Option 2:** Rename to numbered format (recommended for cleaner URLs)
- Rename all gallery images to `gallery-1.jpeg`, `gallery-2.jpeg`, etc.
- Update the HTML file to match (or I can help you do this)

## Notes

- GitHub Pages is case-sensitive, so make sure filenames match exactly
- File paths in HTML are now relative (e.g., `assets/images/logo.jpeg`)
- All absolute Windows paths have been replaced with relative paths
- Make sure all media files are committed to your repository
- Spaces in filenames work but are URL-encoded (%20), so simpler names are better

