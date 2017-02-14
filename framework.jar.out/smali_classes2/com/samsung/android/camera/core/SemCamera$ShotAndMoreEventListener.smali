.class public interface abstract Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShotAndMoreEventListener"
.end annotation


# virtual methods
.method public abstract onShotAndMoreApplicableMode(I)V
.end method

.method public abstract onShotAndMoreCaptureProgress(II)V
.end method

.method public abstract onShotAndMoreComplete()V
.end method

.method public abstract onShotAndMoreProcessProgress(II)V
.end method
