.class Lcom/android/server/fingerprint/FingerUnlockEffect$3;
.super Ljava/lang/Object;
.source "FingerUnlockEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerUnlockEffect;->runFailAnimation()Z
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

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$3;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerUnlockEffect$3;->this$0:Lcom/android/server/fingerprint/FingerUnlockEffect;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerUnlockEffect;->runFailAnimation()Z

    return-void
.end method
