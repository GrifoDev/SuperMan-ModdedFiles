.class Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;
.super Ljava/lang/Object;
.source "UseFingerprintLockSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->startUseFingerprintLockSettingsDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v4, 0x1

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "Trun on button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-set1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get0(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b023a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get2(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get2(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v7

    if-eqz v6, :cond_0

    const v0, 0x186c8

    if-eq v7, v0, :cond_1

    const v0, 0x186c9

    if-eq v7, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

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

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    const v1, 0x7f120b6a

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-wrap0(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-set0(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;Z)Z

    return-void

    :cond_1
    const-string/jumbo v0, "lock_screen_pin_pattern_password_upgragde"

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get6(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get2(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get7(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "OS upgrade case! Set Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get5(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get7(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v3}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get6(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "Fingerprint lock screen enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get5(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get7(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v3}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get6(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    goto :goto_0
.end method
