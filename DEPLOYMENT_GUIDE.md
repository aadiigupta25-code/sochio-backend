# Sochio E-Commerce Platform - Deployment Guide

## 🚀 Quick Start

### Default Admin Credentials
```
Email: admin@sochio.com
Password: Admin@123
Purchase Code: SOCHIO2024
```

## 📋 Prerequisites

1. **Node.js** (v18 or higher)
2. **MongoDB Atlas Account** (Free tier available)
3. **Vercel Account** (For frontend hosting)
4. **Render Account** (For backend hosting)

## 🔧 Backend Setup (Render)

### 1. Prepare Backend for Deployment

```bash
cd "Source Code/admin/backend"
npm install
```

### 2. Environment Variables (.env)

```env
NODE_ENV=production
PORT=5001
MONGODB_URI=mongodb+srv://aadiigupta25_db_user:DUyFwkjQjQuyLYrU@sochio-cluster.zmj42of.mongodb.net/sochio_db?retryWrites=true&w=majority
JWT_SECRET=sochio-jwt-secret-2024
API_SECRET_KEY=sochio-api-secret-2024
PROJECT_NAME=Sochio
BASE_URL=https://sochio-backend.onrender.com/
EMAIL=your-email@gmail.com
EMAIL_PASSWORD=your-app-password
```

### 3. Deploy to Render

1. Push code to GitHub:
```bash
git init
git add .
git commit -m "Initial commit - Sochio Backend"
git branch -M main
git remote add origin https://github.com/yourusername/sochio-backend.git
git push -u origin main
```

2. Go to [render.com](https://render.com)
3. Click "New +" → "Web Service"
4. Connect your GitHub repository
5. Configure:
   - **Name**: sochio-backend
   - **Environment**: Node
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
   - **Plan**: Free

6. Add Environment Variables (from .env file above)

7. Click "Create Web Service"

### 4. Create Default Admin User

After deployment, run:
```bash
npm run create-admin
```

## 🎨 Frontend Setup (Vercel)

### 1. Prepare Frontend for Deployment

```bash
cd "Source Code/admin/frontend"
npm install
```

### 2. Environment Variables (.env)

```env
REACT_APP_API_URL=https://sochio-backend.onrender.com
REACT_APP_SECRET_KEY=sochio-api-secret-2024
REACT_APP_PROJECT_NAME=Sochio
GENERATE_SOURCEMAP=false
```

### 3. Deploy to Vercel

1. Push code to GitHub:
```bash
git init
git add .
git commit -m "Initial commit - Sochio Admin Frontend"
git branch -M main
git remote add origin https://github.com/yourusername/sochio-admin.git
git push -u origin main
```

2. Go to [vercel.com](https://vercel.com)
3. Click "New Project"
4. Import your GitHub repository
5. Configure:
   - **Framework Preset**: Create React App
   - **Build Command**: `npm run build`
   - **Output Directory**: `build`

6. Add Environment Variables (from .env file above)

7. Click "Deploy"

## 💾 Database Setup (MongoDB Atlas)

### 1. Import Initial Data

1. Download and install [MongoDB Compass](https://www.mongodb.com/try/download/compass)

2. Connect using:
```
mongodb+srv://aadiigupta25_db_user:DUyFwkjQjQuyLYrU@sochio-cluster.zmj42of.mongodb.net/
```

3. Create database: `sochio_db`

4. Import collections:
   - Import `Source Code/DB/settings.json` to `settings` collection
   - Import `Source Code/DB/attributes.json` to `attributes` collection

### 2. Create Admin User

Run the backend script:
```bash
cd "Source Code/admin/backend"
npm run create-admin
```

## 🔐 Login to Admin Panel

1. Open your Vercel URL: `https://sochio-admin.vercel.app`
2. Click "Already have an account? Log In"
3. Use credentials:
   - **Email**: admin@sochio.com
   - **Password**: Admin@123

## 📱 Flutter App Configuration

### 1. Update API URL

Edit `Flutter App/era_shop/lib/util/config.dart`:
```dart
const String baseURL = "https://sochio-backend.onrender.com/";
const String secretKey = "sochio-api-secret-2024";
```

### 2. Firebase Setup

1. Create Firebase project at [console.firebase.google.com](https://console.firebase.google.com)
2. Add Android/iOS apps
3. Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
4. Place in respective folders

### 3. Build App

```bash
cd "Flutter App/era_shop"
flutter pub get
flutter build apk --release  # For Android
flutter build ios --release  # For iOS
```

## 🔑 Required API Keys

### Payment Gateways

1. **Razorpay** (India)
   - Sign up: [razorpay.com](https://razorpay.com)
   - Get API keys from Dashboard

2. **Stripe** (International)
   - Sign up: [stripe.com](https://stripe.com)
   - Get API keys from Dashboard

3. **FlutterWave** (Africa)
   - Sign up: [flutterwave.com](https://flutterwave.com)
   - Get API keys from Dashboard

### Live Streaming

**Zego Cloud**
- Sign up: [zegocloud.com](https://zegocloud.com)
- Create app and get App ID & App Sign

### Push Notifications

**Firebase Cloud Messaging**
- Already configured in Firebase project
- Get Server Key from Project Settings

## 📝 Post-Deployment Checklist

- [ ] Backend deployed on Render
- [ ] Frontend deployed on Vercel
- [ ] MongoDB Atlas configured
- [ ] Default admin user created
- [ ] Can login to admin panel
- [ ] Payment gateway keys added
- [ ] Firebase configured
- [ ] Zego live streaming configured
- [ ] Email SMTP configured

## 🆘 Troubleshooting

### Backend Issues

**Port already in use:**
```bash
# Change port in config.js or .env
PORT=5001
```

**MongoDB connection error:**
- Check connection string
- Verify IP whitelist in MongoDB Atlas (allow 0.0.0.0/0 for testing)

### Frontend Issues

**API not connecting:**
- Verify REACT_APP_API_URL in .env
- Check CORS settings in backend

**Build fails:**
- Run `npm install --legacy-peer-deps`
- Clear cache: `rm -rf node_modules package-lock.json && npm install`

## 📞 Support

For issues or questions:
- Email: support@sochio.com
- Documentation: Check `/Documentation` folder

## 🎉 Success!

Your Sochio e-commerce platform is now live!

- **Admin Panel**: https://sochio-admin.vercel.app
- **Backend API**: https://sochio-backend.onrender.com
- **Login**: admin@sochio.com / Admin@123
