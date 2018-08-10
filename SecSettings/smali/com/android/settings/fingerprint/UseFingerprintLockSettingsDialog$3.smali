.class Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;
.super Ljava/lang/Object;
.source "UseFingerprintLockSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "onDismiss!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get4(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get3(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->finish()V

    :cond_1
    return-void
.end method
