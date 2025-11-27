<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Free online image compressor tool. Reduce image file size while maintaining quality. Supports JPG, PNG, and WebP formats.">
    <meta name="keywords" content="image compressor, reduce image size, optimize images, image optimization tool">
    <title>ImageCompress Pro - Free Online Image Compression Tool</title>
    <style>
        :root {
            --primary-color: #4a6ee0;
            --primary-dark: #3a5ac8;
            --secondary-color: #f8f9fa;
            --text-color: #333;
            --light-gray: #e9ecef;
            --border-color: #dee2e6;
            --success-color: #28a745;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f5f7fb;
            color: var(--text-color);
            line-height: 1.6;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px 0;
            position: sticky;
            top: 0;
            z-index: 100;
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 24px;
            font-weight: 700;
            color: var(--primary-color);
            text-decoration: none;
        }
        
        .logo span {
            color: var(--text-color);
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin-left: 25px;
        }
        
        nav ul li a {
            text-decoration: none;
            color: var(--text-color);
            font-weight: 500;
            transition: color 0.3s;
        }
        
        nav ul li a:hover {
            color: var(--primary-color);
        }
        
        .hero {
            text-align: center;
            padding: 60px 0 40px;
            background: linear-gradient(135deg, #f5f7fb 0%, #e4e8f5 100%);
        }
        
        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 15px;
            color: var(--text-color);
        }
        
        .hero p {
            font-size: 1.1rem;
            max-width: 700px;
            margin: 0 auto 30px;
            color: #555;
        }
        
        .main-content {
            display: flex;
            gap: 30px;
            margin: 40px 0;
        }
        
        .compression-tool {
            flex: 2;
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            padding: 30px;
        }
        
        .ad-space {
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        
        .ad-unit {
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            padding: 20px;
            text-align: center;
            min-height: 250px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .ad-placeholder {
            color: #888;
            font-size: 14px;
        }
        
        .upload-area {
            border: 2px dashed var(--border-color);
            border-radius: 8px;
            padding: 40px 20px;
            text-align: center;
            margin-bottom: 30px;
            transition: all 0.3s;
            cursor: pointer;
        }
        
        .upload-area:hover {
            border-color: var(--primary-color);
        }
        
        .upload-area.active {
            border-color: var(--primary-color);
            background-color: rgba(74, 110, 224, 0.05);
        }
        
        .upload-icon {
            font-size: 48px;
            color: var(--primary-color);
            margin-bottom: 15px;
        }
        
        .upload-text {
            margin-bottom: 20px;
        }
        
        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s;
            display: inline-block;
        }
        
        .btn:hover {
            background-color: var(--primary-dark);
        }
        
        .btn-outline {
            background-color: transparent;
            border: 1px solid var(--primary-color);
            color: var(--primary-color);
        }
        
        .btn-outline:hover {
            background-color: var(--primary-color);
            color: white;
        }
        
        .compression-controls {
            margin: 30px 0;
        }
        
        .control-group {
            margin-bottom: 20px;
        }
        
        .control-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .slider-container {
            display: flex;
            align-items: center;
            gap: 15px;
        }
        
        .slider {
            flex: 1;
            -webkit-appearance: none;
            height: 6px;
            border-radius: 3px;
            background: var(--light-gray);
            outline: none;
        }
        
        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            background: var(--primary-color);
            cursor: pointer;
        }
        
        .slider-value {
            min-width: 40px;
            text-align: center;
            font-weight: 600;
        }
        
        .preview-area {
            display: flex;
            gap: 20px;
            margin-top: 30px;
        }
        
        .preview-box {
            flex: 1;
            text-align: center;
        }
        
        .preview-box h3 {
            margin-bottom: 15px;
            font-size: 1.1rem;
        }
        
        .image-preview {
            width: 100%;
            max-width: 300px;
            height: 200px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            overflow: hidden;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: var(--light-gray);
        }
        
        .image-preview img {
            max-width: 100%;
            max-height: 100%;
            object-fit: contain;
        }
        
        .file-info {
            margin-top: 10px;
            font-size: 0.9rem;
            color: #666;
        }
        
        .action-buttons {
            display: flex;
            gap: 15px;
            margin-top: 30px;
            justify-content: center;
        }
        
        .hidden {
            display: none;
        }
        
        footer {
            background-color: white;
            padding: 40px 0;
            margin-top: 60px;
            border-top: 1px solid var(--border-color);
        }
        
        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 30px;
        }
        
        .footer-section {
            flex: 1;
            min-width: 250px;
        }
        
        .footer-section h3 {
            margin-bottom: 20px;
            font-size: 1.2rem;
        }
        
        .footer-section p, .footer-section a {
            color: #666;
            margin-bottom: 10px;
            display: block;
            text-decoration: none;
        }
        
        .footer-section a:hover {
            color: var(--primary-color);
        }
        
        .copyright {
            text-align: center;
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px solid var(--border-color);
            color: #666;
            font-size: 0.9rem;
        }
        
        @media (max-width: 768px) {
            .main-content {
                flex-direction: column;
            }
            
            .preview-area {
                flex-direction: column;
            }
            
            .header-content {
                flex-direction: column;
                gap: 15px;
            }
            
            nav ul {
                justify-content: center;
            }
            
            nav ul li {
                margin: 0 10px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="header-content">
                <a href="#" class="logo">ImageCompress<span>Pro</span></a>
                <nav>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">How It Works</a></li>
                        <li><a href="#">Features</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h1>Compress Images Without Losing Quality</h1>
            <p>Reduce image file size by up to 80% while maintaining visual quality. Fast, secure, and completely free!</p>
        </div>
    </section>

    <div class="container">
        <div class="main-content">
            <div class="compression-tool">
                <div class="upload-area" id="uploadArea">
                    <div class="upload-icon">📁</div>
                    <div class="upload-text">
                        <h3>Drag & Drop your image here</h3>
                        <p>or click to browse files (JPG, PNG, WebP supported)</p>
                    </div>
                    <input type="file" id="fileInput" accept="image/*" class="hidden">
                    <button class="btn" id="browseBtn">Browse Files</button>
                </div>

                <div class="compression-controls hidden" id="controls">
                    <div class="control-group">
                        <label for="compressionLevel">Compression Level</label>
                        <div class="slider-container">
                            <input type="range" min="0" max="100" value="70" class="slider" id="compressionLevel">
                            <span class="slider-value" id="compressionValue">70%</span>
                        </div>
                        <div style="display: flex; justify-content: space-between; font-size: 0.8rem; color: #666;">
                            <span>Smaller File</span>
                            <span>Better Quality</span>
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="outputFormat">Output Format</label>
                        <select id="outputFormat" class="btn-outline" style="padding: 10px 15px; width: 100%;">
                            <option value="original">Same as original</option>
                            <option value="jpeg">JPEG</option>
                            <option value="png">PNG</option>
                            <option value="webp">WebP</option>
                        </select>
                    </div>

                    <div class="preview-area">
                        <div class="preview-box">
                            <h3>Original Image</h3>
                            <div class="image-preview" id="originalPreview">
                                <span>No image selected</span>
                            </div>
                            <div class="file-info" id="originalInfo"></div>
                        </div>
                        <div class="preview-box">
                            <h3>Compressed Image</h3>
                            <div class="image-preview" id="compressedPreview">
                                <span>Preview will appear here</span>
                            </div>
                            <div class="file-info" id="compressedInfo"></div>
                        </div>
                    </div>

                    <div class="action-buttons">
                        <button class="btn" id="compressBtn">Compress Image</button>
                        <button class="btn btn-outline" id="downloadBtn" disabled>Download</button>
                        <button class="btn btn-outline" id="resetBtn">Reset</button>
                    </div>
                </div>
            </div>

            <div class="ad-space">
                <div class="ad-unit">
                    <!-- Google AdSense Ad Unit -->
                    <div class="ad-placeholder">
                        <p>Advertisement</p>
                        <p>Ad unit: ImageCompressPro_Leaderboard</p>
                        <p>AdSense code would be placed here</p>
                    </div>
                </div>
                <div class="ad-unit">
                    <!-- Google AdSense Ad Unit -->
                    <div class="ad-placeholder">
                        <p>Advertisement</p>
                        <p>Ad unit: ImageCompressPro_Sidebar</p>
                        <p>AdSense code would be placed here</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>ImageCompress Pro</h3>
                    <p>Free online tool to compress your images without losing quality. Fast, secure, and easy to use.</p>
                </div>
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <a href="#">Home</a>
                    <a href="#">How It Works</a>
                    <a href="#">Privacy Policy</a>
                    <a href="#">Terms of Service</a>
                </div>
                <div class="footer-section">
                    <h3>Support</h3>
                    <a href="#">FAQ</a>
                    <a href="#">Contact Us</a>
                    <a href="#">Feedback</a>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 ImageCompress Pro. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // DOM Elements
            const uploadArea = document.getElementById('uploadArea');
            const fileInput = document.getElementById('fileInput');
            const browseBtn = document.getElementById('browseBtn');
            const controls = document.getElementById('controls');
            const compressionLevel = document.getElementById('compressionLevel');
            const compressionValue = document.getElementById('compressionValue');
            const outputFormat = document.getElementById('outputFormat');
            const originalPreview = document.getElementById('originalPreview');
            const compressedPreview = document.getElementById('compressedPreview');
            const originalInfo = document.getElementById('originalInfo');
            const compressedInfo = document.getElementById('compressedInfo');
            const compressBtn = document.getElementById('compressBtn');
            const downloadBtn = document.getElementById('downloadBtn');
            const resetBtn = document.getElementById('resetBtn');
            
            let originalImage = null;
            let compressedImageBlob = null;
            
            // Event Listeners
            browseBtn.addEventListener('click', () => fileInput.click());
            fileInput.addEventListener('change', handleFileSelect);
            uploadArea.addEventListener('dragover', handleDragOver);
            uploadArea.addEventListener('drop', handleFileDrop);
            compressionLevel.addEventListener('input', updateCompressionValue);
            compressBtn.addEventListener('click', compressImage);
            downloadBtn.addEventListener('click', downloadImage);
            resetBtn.addEventListener('click', resetTool);
            
            // Functions
            function handleDragOver(e) {
                e.preventDefault();
                uploadArea.classList.add('active');
            }
            
            function handleFileDrop(e) {
                e.preventDefault();
                uploadArea.classList.remove('active');
                
                if (e.dataTransfer.files.length) {
                    fileInput.files = e.dataTransfer.files;
                    handleFileSelect();
                }
            }
            
            function handleFileSelect() {
                if (fileInput.files && fileInput.files[0]) {
                    const file = fileInput.files[0];
                    
                    // Check if file is an image
                    if (!file.type.match('image.*')) {
                        alert('Please select an image file (JPG, PNG, WebP)');
                        return;
                    }
                    
                    // Display original image
                    const reader = new FileReader();
                    reader.onload = function(e) {
                        originalImage = new Image();
                        originalImage.onload = function() {
                            displayOriginalImage(originalImage, file);
                            controls.classList.remove('hidden');
                        };
                        originalImage.src = e.target.result;
                    };
                    reader.readAsDataURL(file);
                }
            }
            
            function displayOriginalImage(img, file) {
                originalPreview.innerHTML = '';
                originalPreview.appendChild(img.cloneNode());
                
                const fileSize = (file.size / 1024).toFixed(2);
                originalInfo.textContent = `Size: ${fileSize} KB | Dimensions: ${img.width}×${img.height}`;
            }
            
            function updateCompressionValue() {
                compressionValue.textContent = `${compressionLevel.value}%`;
            }
            
            function compressImage() {
                if (!originalImage) return;
                
                // Show loading state
                compressedPreview.innerHTML = '<p>Compressing...</p>';
                compressBtn.disabled = true;
                
                // Simulate compression process (in a real app, this would use actual compression algorithms)
                setTimeout(() => {
                    const canvas = document.createElement('canvas');
                    const ctx = canvas.getContext('2d');
                    
                    // Calculate new dimensions based on compression level
                    const compressionFactor = 1 - (compressionLevel.value / 100) * 0.8; // Max 80% size reduction
                    const newWidth = Math.max(originalImage.width * compressionFactor, 100);
                    const newHeight = (originalImage.height / originalImage.width) * newWidth;
                    
                    canvas.width = newWidth;
                    canvas.height = newHeight;
                    
                    // Draw image with reduced quality
                    ctx.drawImage(originalImage, 0, 0, newWidth, newHeight);
                    
                    // Get output format
                    let format = outputFormat.value;
                    if (format === 'original') {
                        format = fileInput.files[0].type.split('/')[1];
                    }
                    
                    // Convert to blob with quality based on compression level
                    const quality = Math.max(0.1, compressionLevel.value / 100);
                    
                    canvas.toBlob(function(blob) {
                        compressedImageBlob = blob;
                        
                        // Display compressed image
                        const compressedImg = new Image();
                        compressedImg.onload = function() {
                            compressedPreview.innerHTML = '';
                            compressedPreview.appendChild(compressedImg);
                            
                            const fileSize = (blob.size / 1024).toFixed(2);
                            compressedInfo.textContent = `Size: ${fileSize} KB | Dimensions: ${compressedImg.width}×${compressedImg.height}`;
                            
                            // Enable download button
                            downloadBtn.disabled = false;
                            compressBtn.disabled = false;
                        };
                        compressedImg.src = URL.createObjectURL(blob);
                    }, `image/${format}`, quality);
                }, 800); // Simulate processing time
            }
            
            function downloadImage() {
                if (!compressedImageBlob) return;
                
                const url = URL.createObjectURL(compressedImageBlob);
                const a = document.createElement('a');
                a.href = url;
                
                // Set filename
                const originalName = fileInput.files[0].name;
                const nameWithoutExt = originalName.substring(0, originalName.lastIndexOf('.'));
                const extension = outputFormat.value === 'original' ? 
                    originalName.substring(originalName.lastIndexOf('.')) : 
                    `.${outputFormat.value}`;
                
                a.download = `${nameWithoutExt}-compressed${extension}`;
                document.body.appendChild(a);
                a.click();
                document.body.removeChild(a);
                URL.revokeObjectURL(url);
            }
            
            function resetTool() {
                fileInput.value = '';
                originalPreview.innerHTML = '<span>No image selected</span>';
                compressedPreview.innerHTML = '<span>Preview will appear here</span>';
                originalInfo.textContent = '';
                compressedInfo.textContent = '';
                controls.classList.add('hidden');
                downloadBtn.disabled = true;
                compressionLevel.value = 70;
                compressionValue.textContent = '70%';
                originalImage = null;
                compressedImageBlob = null;
            }
        });
    </script>
</body>
</html>
