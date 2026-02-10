#!/system/bin/sh
# Wait for the system to finish booting
until [ "$(getprop sys.boot_completed)" -eq 1 ]; do
  sleep 5
done

# Force-apply ROG Phone 8 properties 
# This ensures apps like Genshin or PUBG see the "fake" hardware
resetprop ro.product.model "ASUS_AI2401"
resetprop ro.product.brand "asus"
resetprop ro.product.manufacturer "ASUS"
resetprop ro.product.device "AI2401"
resetprop ro.product.system.model "ASUS_AI2401"
resetprop ro.product.system.name "AI2401"
resetprop ro.build.product "AI2401"

# Force-apply the Fingerprint to pass basic app checks
resetprop ro.build.description "WW_Phone-user 14 UKQ1.230917.001 34.1420.1420.327 release-keys"
resetprop ro.build.fingerprint "asus/WW_Phone/AI2401:14/UKQ1.230917.001/34.1420.1420.327:user/release-keys"

# Optional: Spoof the GPU to Adreno 750 (ROG 8 uses SD 8 Gen 3)
# Only use these if your device is powerful enough to handle the workload!
resetprop ro.hardware.egl "adreno"
resetprop ro.board.platform "pineapple"
