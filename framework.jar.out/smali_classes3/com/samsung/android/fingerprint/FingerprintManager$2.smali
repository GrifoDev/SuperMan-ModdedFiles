.class Lcom/samsung/android/fingerprint/FingerprintManager$2;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$2;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get4()Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get4()Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const v3, 0x186a0

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/samsung/android/fingerprint/IFingerprintClient;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    const-string/jumbo v2, "FPMS_FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "binderDied : deliver event : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get2()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "Unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FPMS_FingerprintManager"

    const-string/jumbo v2, "binderDied: failed to call onFingerprintEvent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
