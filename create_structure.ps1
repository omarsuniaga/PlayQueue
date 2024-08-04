# Definir la estructura de directorios
$directories = @(
    "PlayQueue/assets/icons",
    "PlayQueue/assets/splash",
    "PlayQueue/src/components/Audio",
    "PlayQueue/src/components/Song",
    "PlayQueue/src/components/UI",
    "PlayQueue/src/context",
    "PlayQueue/src/hooks",
    "PlayQueue/src/navigation",
    "PlayQueue/src/screens",
    "PlayQueue/src/services",
    "PlayQueue/src/utils"
)

# Crear los directorios
foreach ($dir in $directories) {
    if (-not (Test-Path -Path $dir)) {
        New-Item -ItemType Directory -Path $dir | Out-Null
    }
}

# Crear archivos vacíos
$files = @(
    "playqueue/App.js",

    "playqueue/assets/icons/adaptive-icon.png",
    "playqueue/assets/icons/icon.png",
    "playqueue/assets/splash/splash.png",

    "playqueue/src/components/Audio/PlaybackControls.jsx",
    "playqueue/src/components/Audio/VolumeBar.jsx",
    "playqueue/src/components/Audio/TimeBar.jsx",
    "playqueue/src/components/Audio/AudioController.jsx",

    "playqueue/src/components/Song/SongInfo.jsx",
    "playqueue/src/components/Song/Title.jsx",
    "playqueue/src/components/Song/Ajustes.jsx",

    "playqueue/src/components/UI/Button.jsx",
    "playqueue/src/components/UI/SearchBar.jsx",

    "playqueue/src/context/AudioProvider.js",

    "playqueue/src/hooks/useAudio.js",

    "playqueue/src/navigation/AppNavigator.jsx",
    "playqueue/src/navigation/NavigationService.js",

    "playqueue/src/screens/HomeScreen.jsx",
    "playqueue/src/screens/QueueScreen.jsx",
    "playqueue/src/screens/PlayerScreen.jsx",

    "playqueue/src/services/audioService.js",
    "playqueue/src/services/storageService.js",

    "playqueue/src/utils/audioHelpers.js",
    "playqueue/src/utils/timeHelpers.js"
)

# Crear los archivos
foreach ($file in $files) {
    if (-not (Test-Path -Path $file)) {
        New-Item -ItemType File -Path $file | Out-Null
    }
}

Write-Host "Estructura de directorios y archivos creada exitosamente."
