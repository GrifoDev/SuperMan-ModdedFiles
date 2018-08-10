.class Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$2;
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$2;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "Not now button clicked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$2;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$2;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-static {v1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->-get0(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$2;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method
