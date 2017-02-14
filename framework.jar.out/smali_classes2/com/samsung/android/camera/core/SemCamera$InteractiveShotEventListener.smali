.class public interface abstract Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractiveShotEventListener"
.end annotation


# virtual methods
.method public abstract onInteractiveCaptureProgressed(II)V
.end method

.method public abstract onInteractiveDirectionChanged(II)V
.end method

.method public abstract onInteractiveDirectionWarning(I)V
.end method

.method public abstract onInteractiveProcessCompleted()V
.end method

.method public abstract onInteractiveProcessProgressed(II)V
.end method
