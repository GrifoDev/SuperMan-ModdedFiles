.class Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "FPMS_FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EnrollBroadcastManager : onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->-get0(Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;)Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get6()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get7()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get7()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;

    invoke-static {v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;->-wrap0(Lcom/samsung/android/fingerprint/FingerprintManager$EnrollBroadcastManager;Z)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
