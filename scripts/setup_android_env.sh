#!/bin/bash
set -e

echo "--- Instalando dependencias de Android SDK ---"

# Asegurarse que ANDROID_SDK_ROOT está definido
if [ -z "$ANDROID_SDK_ROOT" ]; then
  echo "Error: ANDROID_SDK_ROOT no está definido."
  exit 1
fi

SDK_MANAGER="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager"

# Aceptar licencias
yes | $SDK_MANAGER --licenses

# Instalar plataforma y build-tools (ajustar versiones según el proyecto)
echo "--- Instalando platform-tools, platforms y build-tools ---"
$SDK_MANAGER "platform-tools" "platforms;android-33" "build-tools;33.0.0"

echo "--- Entorno de compilación Android listo ---"