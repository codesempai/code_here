<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fish Vista - Login</title>
    <style>
        :root {
            --primary: #1a237e;
            --secondary: #00acc1;
            --ocean: #0077be;
            --coral: #ff7f50;
            --success: #4caf50;
            --danger: #f44336;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, var(--primary) 0%, var(--ocean) 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }
        
        /* Animated background elements */
        .bubble {
            position: absolute;
            bottom: -100px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            animation: rise 15s infinite ease-in;
        }
        
        .bubble:nth-child(1) {
            width: 40px;
            height: 40px;
            left: 10%;
            animation-duration: 12s;
            animation-delay: 0s;
        }
        
        .bubble:nth-child(2) {
            width: 60px;
            height: 60px;
            left: 20%;
            animation-duration: 15s;
            animation-delay: 2s;
        }
        
        .bubble:nth-child(3) {
            width: 30px;
            height: 30px;
            left: 35%;
            animation-duration: 10s;
            animation-delay: 4s;
        }
        
        .bubble:nth-child(4) {
            width: 50px;
            height: 50px;
            left: 50%;
            animation-duration: 13s;
            animation-delay: 0s;
        }
        
        .bubble:nth-child(5) {
            width: 45px;
            height: 45px;
            left: 65%;
            animation-duration: 14s;
            animation-delay: 3s;
        }
        
        .bubble:nth-child(6) {
            width: 35px;
            height: 35px;
            left: 80%;
            animation-duration: 11s;
            animation-delay: 1s;
        }
        
        .bubble:nth-child(7) {
            width: 55px;
            height: 55px;
            left: 90%;
            animation-duration: 16s;
            animation-delay: 2s;
        }
        
        @keyframes rise {
            0% {
                bottom: -100px;
                transform: translateX(0);
            }
            50% {
                transform: translateX(100px);
            }
            100% {
                bottom: 110vh;
                transform: translateX(-100px);
            }
        }
        
        .login-container {
            background: rgba(255, 255, 255, 0.98);
            border-radius: 24px;
            padding: 50px 40px;
            box-shadow: 0 30px 80px rgba(0, 0, 0, 0.3);
            max-width: 450px;
            width: 100%;
            position: relative;
            z-index: 10;
            animation: fadeIn 0.6s ease;
        }
        
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        .logo-section {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .logo-icon {
            font-size: 80px;
            animation: float 3s ease-in-out infinite;
            display: inline-block;
        }
        
        @keyframes float {
            0%, 100% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-10px);
            }
        }
        
        .logo-section h1 {
            color: var(--primary);
            font-size: 32px;
            margin: 15px 0 5px;
            font-weight: 700;
        }
        
        .logo-section p {
            color: #757575;
            font-size: 14px;
        }
        
        .form-group {
            margin-bottom: 25px;
            position: relative;
        }
        
        .form-group label {
            display: block;
            color: var(--primary);
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 14px;
        }
        
        .input-wrapper {
            position: relative;
        }
        
        .input-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 20px;
            color: #757575;
        }
        
        .form-control {
            width: 100%;
            padding: 15px 15px 15px 50px;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            font-size: 16px;
            transition: all 0.3s ease;
            background: #f5f5f5;
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--ocean);
            background: white;
            box-shadow: 0 0 0 4px rgba(0, 119, 190, 0.1);
        }
        
        .form-control:focus + .input-icon {
            color: var(--ocean);
        }
        
        .password-toggle {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            font-size: 20px;
            color: #757575;
            user-select: none;
        }
        
        .password-toggle:hover {
            color: var(--ocean);
        }
        
        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
            font-size: 14px;
        }
        
        .checkbox-wrapper {
            display: flex;
            align-items: center;
            gap: 8px;
            cursor: pointer;
        }
        
        .checkbox-wrapper input[type="checkbox"] {
            width: 18px;
            height: 18px;
            cursor: pointer;
            accent-color: var(--ocean);
        }
        
        .checkbox-wrapper label {
            color: #666;
            margin: 0;
            cursor: pointer;
        }
        
        .forgot-link {
            color: var(--ocean);
            text-decoration: none;
            font-weight: 600;
        }
        
        .forgot-link:hover {
            text-decoration: underline;
        }
        
        .login-btn {
            width: 100%;
            padding: 16px;
            background: linear-gradient(135deg, var(--primary) 0%, var(--ocean) 100%);
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }
        
        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0, 119, 190, 0.4);
        }
        
        .login-btn:active {
            transform: translateY(0);
        }
        
        .login-btn::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.3);
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
        }
        
        .login-btn:hover::before {
            width: 300px;
            height: 300px;
        }
        
        .login-btn span {
            position: relative;
            z-index: 1;
        }
        
        .demo-credentials {
            background: linear-gradient(135deg, #e3f2fd 0%, #bbdefb 100%);
            padding: 20px;
            border-radius: 12px;
            margin-top: 30px;
            border-left: 4px solid var(--ocean);
        }
        
        .demo-credentials h3 {
            color: var(--primary);
            font-size: 14px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .demo-credentials p {
            color: #666;
            font-size: 13px;
            margin: 5px 0;
            font-family: 'Courier New', monospace;
        }
        
        .demo-credentials strong {
            color: var(--primary);
        }
        
        .error-message {
            background: #ffebee;
            color: var(--danger);
            padding: 12px 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            display: none;
            font-size: 14px;
            border-left: 4px solid var(--danger);
            animation: shake 0.5s;
        }
        
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-10px); }
            75% { transform: translateX(10px); }
        }
        
        .success-message {
            background: #e8f5e9;
            color: var(--success);
            padding: 12px 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            display: none;
            font-size: 14px;
            border-left: 4px solid var(--success);
        }
        
        .footer-text {
            text-align: center;
            margin-top: 30px;
            color: #757575;
            font-size: 13px;
        }
        
        /* Dashboard styles - hidden initially */
        .dashboard {
            display: none;
        }
        
        @media (max-width: 480px) {
            .login-container {
                padding: 40px 25px;
            }
            
            .logo-section h1 {
                font-size: 28px;
            }
            
            .remember-forgot {
                flex-direction: column;
                gap: 10px;
                align-items: flex-start;
            }
        }
    </style>
</head>
<body>
    <!-- Login Page -->
    <div id="loginPage">
        <!-- Animated bubbles -->
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        
        <div class="login-container">
            <div class="logo-section">
                <div class="logo-icon">🐟</div>
                <h1>Fish Vista Pro</h1>
                <p>Intelligent Aquaculture Management System</p>
            </div>
            
            <div class="error-message" id="errorMessage">
                Invalid credentials. Please try again.
            </div>
            
            <div class="success-message" id="successMessage">
                Login successful! Loading dashboard...
            </div>
            
            <form id="loginForm" onsubmit="handleLogin(event)">
                <div class="form-group">
                    <label for="username">Username</label>
                    <div class="input-wrapper">
                        <span class="input-icon">👤</span>
                        <input 
                            type="text" 
                            id="username" 
                            class="form-control" 
                            placeholder="Enter your username"
                            required
                            autocomplete="username"
                        >
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-wrapper">
                        <span class="input-icon">🔒</span>
                        <input 
                            type="password" 
                            id="password" 
                            class="form-control" 
                            placeholder="Enter your password"
                            required
                            autocomplete="current-password"
                        >
                        <span class="password-toggle" onclick="togglePassword()">👁️</span>
                    </div>
                </div>
                
                <div class="remember-forgot">
                    <div class="checkbox-wrapper">
                        <input type="checkbox" id="remember" name="remember">
                        <label for="remember">Remember me</label>
                    </div>
                    <a href="#" class="forgot-link" onclick="handleForgotPassword(event)">Forgot Password?</a>
                </div>
                
                <button type="submit" class="login-btn">
                    <span>Sign In</span>
                </button>
            </form>
            
            <div class="demo-credentials">
                <h3>🔑 Demo Credentials</h3>
                <p><strong>Username:</strong> admin</p>
                <p><strong>Password:</strong> admin123</p>
            </div>
            
            <div class="footer-text">
                © 2026 Fish Vista Pro • Secure Access Portal
            </div>
        </div>
    </div>

    <!-- Dashboard (Your Original Code) -->
    <div id="dashboard" class="dashboard" style="display: none; width: 100%; height: 100vh; position: fixed; top: 0; left: 0; background: linear-gradient(135deg, var(--primary) 0%, var(--ocean) 100%);">
        <div class="container" style="max-width: 1400px; margin: 0 auto; background: rgba(255, 255, 255, 0.98); border-radius: 20px; box-shadow: 0 20px 60px rgba(0,0,0,0.3); overflow: hidden; min-height: 95vh;">
            <!-- Your complete dashboard HTML will go here -->
            <div style="padding: 40px; text-align: center;">
                <h1 style="color: var(--primary); font-size: 48px; margin-bottom: 20px;">🐟 Fish Vista Pro Dashboard</h1>
                <p style="color: #666; font-size: 18px; margin-bottom: 30px;">Welcome to the Aquaculture Management System</p>
                
                <div style="background: white; padding: 30px; border-radius: 16px; box-shadow: 0 8px 30px rgba(0,0,0,0.08); max-width: 600px; margin: 0 auto;">
                    <h2 style="color: var(--primary); margin-bottom: 20px;">🎉 Login Successful!</h2>
                    <p style="color: #666; margin-bottom: 20px;">You have successfully logged in as <strong id="loggedInUser"></strong></p>
                    <p style="color: #666; margin-bottom: 30px;">This is where your Fish Vista dashboard would load with all the sensors, controls, and monitoring features.</p>
                    
                    <div style="background: linear-gradient(135deg, #e3f2fd 0%, #bbdefb 100%); padding: 20px; border-radius: 12px; margin-bottom: 20px; border-left: 4px solid var(--ocean);">
                        <p style="color: #666; font-size: 14px; margin: 0;">
                            <strong>Integration Note:</strong> To integrate with your actual dashboard, replace the content inside the #dashboard div with your complete Fish Vista dashboard HTML code from the original file.
                        </p>
                    </div>
                    
                    <button onclick="logout()" style="padding: 12px 30px; background: linear-gradient(135deg, var(--danger) 0%, #ef5350 100%); color: white; border: none; border-radius: 8px; font-size: 16px; font-weight: 600; cursor: pointer; transition: all 0.3s;">
                        🚪 Logout
                    </button>
                </div>
                
                <div style="margin-top: 40px; padding: 30px; background: white; border-radius: 16px; box-shadow: 0 8px 30px rgba(0,0,0,0.08);">
                    <h3 style="color: var(--primary); margin-bottom: 20px;">📊 System Status</h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px;">
                        <div style="background: #f5f5f5; padding: 20px; border-radius: 12px;">
                            <div style="font-size: 36px; color: var(--danger);">🌡️</div>
                            <div style="font-size: 24px; font-weight: 700; color: var(--dark); margin: 10px 0;">26.5°C</div>
                            <div style="color: #757575;">Temperature</div>
                        </div>
                        <div style="background: #f5f5f5; padding: 20px; border-radius: 12px;">
                            <div style="font-size: 36px; color: var(--info);">💧</div>
                            <div style="font-size: 24px; font-weight: 700; color: var(--dark); margin: 10px 0;">7.2</div>
                            <div style="color: #757575;">pH Level</div>
                        </div>
                        <div style="background: #f5f5f5; padding: 20px; border-radius: 12px;">
                            <div style="font-size: 36px; color: var(--success);">🔬</div>
                            <div style="font-size: 24px; font-weight: 700; color: var(--dark); margin: 10px 0;">450</div>
                            <div style="color: #757575;">TDS (ppm)</div>
                        </div>
                        <div style="background: #f5f5f5; padding: 20px; border-radius: 12px;">
                            <div style="font-size: 36px; color: var(--warning);">⭐</div>
                            <div style="font-size: 24px; font-weight: 700; color: var(--dark); margin: 10px 0;">95%</div>
                            <div style="color: #757575;">Quality Score</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        // Demo credentials
        const validCredentials = {
            'admin': 'admin123',
            'user': 'user123',
            'fishkeeper': 'fish2024',
            'operator': 'aqua123'
        };
        
        function handleLogin(event) {
            event.preventDefault();
            
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const errorMsg = document.getElementById('errorMessage');
            const successMsg = document.getElementById('successMessage');
            
            // Hide previous messages
            errorMsg.style.display = 'none';
            successMsg.style.display = 'none';
            
            // Validate credentials
            if (validCredentials[username] && validCredentials[username] === password) {
                // Success
                successMsg.style.display = 'block';
                
                // Store login state
                const remember = document.getElementById('remember').checked;
                if (remember) {
                    localStorage.setItem('fishVistaLoggedIn', 'true');
                    localStorage.setItem('fishVistaUsername', username);
                } else {
                    sessionStorage.setItem('fishVistaLoggedIn', 'true');
                    sessionStorage.setItem('fishVistaUsername', username);
                }
                
                // Hide login page and show dashboard after 1 second
                setTimeout(() => {
                    document.getElementById('loginPage').style.display = 'none';
                    document.getElementById('dashboard').style.display = 'block';
                    document.getElementById('loggedInUser').textContent = username;
                }, 1000);
            } else {
                // Error
                errorMsg.style.display = 'block';
                
                // Shake the form
                const form = document.getElementById('loginForm');
                form.style.animation = 'none';
                setTimeout(() => {
                    form.style.animation = 'shake 0.5s';
                }, 10);
            }
        }
        
        function logout() {
            // Clear storage
            localStorage.removeItem('fishVistaLoggedIn');
            localStorage.removeItem('fishVistaUsername');
            sessionStorage.removeItem('fishVistaLoggedIn');
            sessionStorage.removeItem('fishVistaUsername');
            
            // Show login page
            document.getElementById('dashboard').style.display = 'none';
            document.getElementById('loginPage').style.display = 'flex';
            
            // Reset form
            document.getElementById('loginForm').reset();
            document.getElementById('errorMessage').style.display = 'none';
            document.getElementById('successMessage').style.display = 'none';
        }
        
        function togglePassword() {
            const passwordInput = document.getElementById('password');
            const passwordToggle = document.querySelector('.password-toggle');
            
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                passwordToggle.textContent = '🙈';
            } else {
                passwordInput.type = 'password';
                passwordToggle.textContent = '👁️';
            }
        }
        
        function handleForgotPassword(event) {
            event.preventDefault();
            alert('Password Reset\n\nIn a real implementation, this would send a password reset email.\n\nDemo credentials:\nUsername: admin\nPassword: admin123');
        }
        
        // Check if already logged in on page load
        window.onload = function() {
            const loggedIn = localStorage.getItem('fishVistaLoggedIn') || 
                           sessionStorage.getItem('fishVistaLoggedIn');
            const username = localStorage.getItem('fishVistaUsername') || 
                           sessionStorage.getItem('fishVistaUsername');
            
            if (loggedIn === 'true' && username) {
                // Already logged in, show dashboard
                document.getElementById('loginPage').style.display = 'none';
                document.getElementById('dashboard').style.display = 'block';
                document.getElementById('loggedInUser').textContent = username;
            }
        };
    </script>
</body>
</html>
