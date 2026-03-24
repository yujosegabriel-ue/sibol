<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sibol PH | Welcome Back</title>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;600;700;800&family=Playfair+Display:wght@900&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-dark: #0b1a13;
            --sibol-green: #2d6a4f;
            --sibol-light: #74c69d;
            --accent: #d8f3dc;
            --bg-cream: #fbfaf8;
            --text-main: #1b4332;
            --transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
        }

        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg-cream);
            height: 100vh;
            display: flex;
            color: var(--text-main);
            overflow: hidden;
        }

        /* --- LEFT BRAND SIDE --- */
        .side-brand {
            flex: 1.1;
            background: linear-gradient(135deg, var(--primary-dark) 0%, #153124 100%);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
            color: white;
        }

        .brand-logo {
            font-family: 'Playfair Display', serif;
            font-size: 9rem;
            z-index: 2;
        }

        .brand-logo span { color: var(--sibol-light); }

        .brand-tagline {
            font-weight: 700;
            letter-spacing: 0.5em;
            text-transform: uppercase;
            font-size: 1rem;
            opacity: 0.7;
            z-index: 2;
        }

        /* --- RIGHT LOGIN SIDE --- */
        .side-login {
            flex: 0.9;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 60px;
        }

        .login-header { text-align: center; margin-bottom: 40px; }
        .login-header h1 { font-family: 'Playfair Display', serif; font-size: 3.2rem; color: var(--primary-dark); }

        .card {
            width: 100%;
            max-width: 440px;
            background: #ffffff;
            padding: 45px;
            border-radius: 32px;
            box-shadow: 0 20px 50px rgba(15, 36, 25, 0.04);
            border: 1px solid rgba(45, 106, 79, 0.05);
        }

        .form-group { margin-bottom: 24px; }
        .form-group label {
            display: block; font-size: 0.85rem; font-weight: 800;
            text-transform: uppercase; color: var(--sibol-green); margin-bottom: 10px;
        }

        .form-group input {
            width: 100%; padding: 18px 24px; border-radius: 16px;
            border: 2px solid #edf2f0; background: #fcfdfc;
            font-family: inherit; font-size: 1rem; transition: var(--transition);
        }

        .form-group input:focus { outline: none; border-color: var(--sibol-light); }

        .btn-submit {
            width: 100%; padding: 18px; background: var(--sibol-green);
            color: white; border: none; border-radius: 18px;
            font-size: 1.1rem; font-weight: 800; cursor: pointer;
            transition: var(--transition);
        }

        .btn-submit:hover { background: var(--primary-dark); transform: scale(1.02); }

        /* --- BUFFERING OVERLAY --- */
        .loader-overlay {
            position: fixed; top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(15, 36, 25, 0.9); backdrop-filter: blur(12px);
            display: none; justify-content: center; align-items: center;
            z-index: 9999; color: white; text-align: center;
        }

        .pulse-ring {
            position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);
            width: 60px; height: 60px; background: var(--sibol-light);
            border-radius: 50%; opacity: 0.6; animation: growPulse 2s infinite ease-out;
        }

        @keyframes growPulse {
            0% { transform: translate(-50%, -50%) scale(0.8); opacity: 0.8; }
            100% { transform: translate(-50%, -50%) scale(3.5); opacity: 0; }
        }

        .loader-content h2 { font-family: 'Playfair Display', serif; margin-top: 25px; font-size: 2.2rem; }

        @media (max-width: 1024px) { .side-brand { display: none; } }
    </style>
</head>
<body>

    <div id="loaderOverlay" class="loader-overlay">
        <div class="loader-content" style="position: relative;">
            <div class="pulse-ring"></div>
            <div style="font-size: 4rem;">🌱</div>
            <h2>Waking up your roots...</h2>
            <p style="opacity: 0.7; margin-top: 10px;">Verifying your access to Sibol PH.</p>
        </div>
    </div>

    <section class="side-brand">
        <div class="brand-logo">Si<span>bol</span></div>
        <p class="brand-tagline">Grow · Learn · Work</p>
    </section>

    <section class="side-login">
        <div class="login-header">
            <h1>Welcome Back</h1>
            <p>Access your personalized dashboard</p>
        </div>

        <div class="card">
            <form id="loginForm" onsubmit="handleLogin(event)">
                <div class="form-group">
                    <label>Username or Email</label>
                    <input type="text" placeholder="e.g. juan.dc" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" placeholder="••••••••" required>
                </div>

                <button type="submit" class="btn-submit">Login to Dashboard</button>

                <p style="text-align: center; margin-top: 25px; color: #6b7c74; font-weight: 600;">
                    New here? <a href="register.html" style="color: var(--sibol-green); font-weight: 800; text-decoration: none;">Create account</a>
                </p>
            </form>
        </div>
    </section>

    <script>
        function handleLogin(e) {
            e.preventDefault();
            
            // Show the loading overlay
            const loader = document.getElementById('loaderOverlay');
            loader.style.display = 'flex';

            // Wait 2 seconds then redirect
            setTimeout(() => {
                window.location.href = 'index.html';
            }, 2000);
        }
    </script>

</body>
</html>
