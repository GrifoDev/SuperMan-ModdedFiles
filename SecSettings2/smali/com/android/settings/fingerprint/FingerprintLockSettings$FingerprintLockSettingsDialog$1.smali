.class Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v7

    if-eqz v6, :cond_0

    const v0, 0x186c8

    if-eq v7, v0, :cond_1

    const v0, 0x186c9

    if-eq v7, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick isHardwareDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestGetSensorStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const v1, 0x7f0b067d

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap8(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->dismiss()V

    return-void

    :cond_1
    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup"

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get10(Lcom/android/settings/fingerprint/FingerprintLockSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Launch Register fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-set0(Lcom/android/settings/fingerprint/FingerprintLockSettings;[B)[B

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const-string/jumbo v1, "lock_screen_pin_pattern_password"

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap3(Lcom/android/settings/fingerprint/FingerprintLockSettings;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->dismiss()V

    return-void

    :cond_4
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint already exist! Set Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0, v9}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup_Complete"

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "lock_screen_pin_pattern_password_upgragde"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get10(Lcom/android/settings/fingerprint/FingerprintLockSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "OS upgrade case! Set Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0, v9}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint lock screen enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0, v9}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto/16 :goto_0
.end method
