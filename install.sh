SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=false

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
