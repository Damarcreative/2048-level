# 2048 Game - CasaOS Deployment

## Quick Start

### Local Docker Build & Run
```bash
docker-compose up -d --build
```
Access at: http://localhost:8080

### Build Docker Image
```bash
docker build -t 2048-game .
docker run -d -p 8080:80 --name 2048-game 2048-game
```

---

## CasaOS AppStore Submission

### 1. Push Docker Image to Docker Hub
```bash
docker login
docker build -t yourusername/2048-game:latest .
docker push yourusername/2048-game:latest
```

### 2. Update `docker-compose-casaos.yml`
Replace `gabrielecirulli/2048-casaos:latest` with your Docker Hub image.

### 3. Submit to CasaOS AppStore
1. Fork [CasaOS-AppStore](https://github.com/IceWhaleTech/CasaOS-AppStore)
2. Add `docker-compose-casaos.yml` to `Apps/` folder
3. Create Pull Request

---

## Files Created

| File | Purpose |
|------|---------|
| `Dockerfile` | Container build instructions |
| `docker-compose.yml` | Local development |
| `docker-compose-casaos.yml` | CasaOS App configuration |
| `.dockerignore` | Exclude files from image |

---

## Game Features
- 🎮 Multiple levels: 128, 256, 512, 1024, 2048
- 📊 Score tracking with best score
- 📱 Responsive design
- 🎨 Modern UI with tabs
