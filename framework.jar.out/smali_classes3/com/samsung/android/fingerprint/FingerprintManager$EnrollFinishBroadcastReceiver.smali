.class Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnrollFinishBroadcastReceiver"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1221
    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1222
    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mId:Ljava/lang/String;

    .line 1220
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1227
    if-eqz p2, :cond_2

    .line 1228
    const-string/jumbo v3, "previousStage"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1230
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v3, "enrollResult"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1231
    .local v2, "resultCode":I
    const-string/jumbo v3, "FPMS_FingerprintManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EnrollFinishBroadcastReceiver onReceive: resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-eqz v1, :cond_3

    .line 1234
    const-string/jumbo v3, "FPMS_FingerprintManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "previousStage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1236
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1237
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 1239
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1240
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    invoke-interface {v3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    .line 1242
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "resultCode":I
    :cond_2
    :goto_0
    return-void

    .line 1243
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "resultCode":I
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const-string/jumbo v4, "onReceive"

    const-string/jumbo v5, "Receiver isn\'t registered"

    invoke-static {v3, v4, v0, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->-wrap0(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string/jumbo v3, "FPMS_FingerprintManager"

    const-string/jumbo v4, "ID is not given. Cannot recognize this broadcast."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
