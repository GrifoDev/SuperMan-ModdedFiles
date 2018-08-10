.class Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->authentication(Landroid/os/IBinder;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get2(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get2(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-get0(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FPMS_COMPAT"

    const-string/jumbo v2, "cancelAuthentication : failure : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
