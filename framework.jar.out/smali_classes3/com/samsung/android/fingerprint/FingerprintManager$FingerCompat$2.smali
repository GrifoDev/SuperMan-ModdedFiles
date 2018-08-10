.class Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$2;
.super Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->runNormalScan(I)I
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

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$2;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequested(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$2;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {v1, p1}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-wrap6(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method
