.class Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$5;
.super Ljava/lang/Object;
.source "UseFingerprintLockSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->showSensorErrorDialog(I)V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$5;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$5;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->finish()V

    return-void
.end method
