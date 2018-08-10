.class Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$3;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->handleAuthenticationError(II)V
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

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$3;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat$3;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;->-wrap6(Lcom/samsung/android/fingerprint/FingerprintManager$FingerCompat;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method
