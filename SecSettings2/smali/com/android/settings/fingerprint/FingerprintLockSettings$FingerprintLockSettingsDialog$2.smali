.class Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    return-void
.end method
