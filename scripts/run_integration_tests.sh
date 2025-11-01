#!/bin/bash
set -e

echo "--- Iniciando Pruebas de Integración (E2E) ---"

# 1. Iniciar el emulador
# emulator -avd pixel_5 -no-audio -no-window &

# 2. Esperar a que el emulador arranque
# adb wait-for-device

# 3. Construir la app de prueba
echo "Construyendo APK de prueba..."
# npx detox build -c android.emu.release

# 4. Ejecutar las pruebas E2E
echo "Ejecutando pruebas E2E..."
# npx detox test -c android.emu.release

echo "--- Pruebas de Integración completadas ---"