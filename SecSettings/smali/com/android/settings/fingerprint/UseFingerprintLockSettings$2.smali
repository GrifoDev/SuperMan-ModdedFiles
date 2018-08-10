.class Lcom/android/settings/fingerprint/UseFingerprintLockSettings$2;
.super Ljava/lang/Object;
.source "UseFingerprintLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->showSensorErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/UseFingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    return-void
.end method
