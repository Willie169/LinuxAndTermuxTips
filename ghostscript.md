pkg install ghostscript

Ghostscript doesn't provide direct lossy compression for PDFs like JPEG compression for images, but you can reduce the file size significantly using settings that downsample images and compress them using lossy formats. Here's how you can do it:

### **Basic Compression Command**
```sh
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dPDFSETTINGS=/screen -o output.pdf input.pdf
```
### **Explanation**
- `-sDEVICE=pdfwrite`: Uses Ghostscript’s PDF output driver.
- `-dCompatibilityLevel=1.5`: Sets PDF version 1.5, allowing better compression.
- `-dPDFSETTINGS=/screen`: Applies aggressive downsampling and compression (see other options below).
- `-o output.pdf input.pdf`: Writes the compressed PDF.

### **Alternative `-dPDFSETTINGS` Options**
- `/screen`: **Lowest quality**, small size, 72 dpi images.
- `/ebook`: **Medium quality**, 150 dpi images.
- `/printer`: **Better quality**, 300 dpi images.
- `/prepress`: **High quality**, 300 dpi images with color retention.
- `/default`: Uses Ghostscript’s built-in defaults.

### **Custom Compression (More Control)**
If the predefined `-dPDFSETTINGS` options aren't enough, you can manually adjust the image compression and downsampling:
```sh
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -o output.pdf \
   -dDownsampleColorImages=true -dColorImageResolution=100 \
   -dDownsampleGrayImages=true -dGrayImageResolution=100 \
   -dDownsampleMonoImages=true -dMonoImageResolution=150 \
   -dColorImageDownsampleType=/Bicubic \
   -dGrayImageDownsampleType=/Bicubic \
   -dMonoImageDownsampleType=/Bicubic \
   -dJPEGQ=60 \
   input.pdf
```
### **Custom Parameters**
- `-dColorImageResolution=100`: Downsample color images to **100 dpi**.
- `-dGrayImageResolution=100`: Downsample grayscale images to **100 dpi**.
- `-dMonoImageResolution=150`: Downsample monochrome images to **150 dpi**.
- `-dJPEGQ=60`: JPEG quality (1-100, lower means more compression).
- `-dColorImageDownsampleType=/Bicubic`: Uses **bicubic downsampling** for smoother results.

This method gives you better control over the trade-off between file size and quality. If you need **even more aggressive compression**, reduce `-dColorImageResolution` and `-dJPEGQ`.