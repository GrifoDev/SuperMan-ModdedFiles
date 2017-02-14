.class Lcom/android/server/fingerprint/FingerUnlockEffect$2;
.super Ljava/lang/Object;
.source "FingerUnlockEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerUnlockEffect;->runUnlockAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerUnlockEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$2;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$2;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get0(Lcom/android/server/fingerprint/FingerUnlockEffect;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHandler run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$2;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerUnlockEffect;->-get1(Lcom/android/server/fingerprint/FingerUnlockEffect;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$2;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->runUnlockAnimation()Z

    return-void
.end method
