.class public interface abstract Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WideSelfieEventListener"
.end annotation


# virtual methods
.method public abstract onWideSelfieCaptured()V
.end method

.method public abstract onWideSelfieCapturedMaxFrames()V
.end method

.method public abstract onWideSelfieCapturedNew()V
.end method

.method public abstract onWideSelfieDirectionChanged(I)V
.end method

.method public abstract onWideSelfieError(I)V
.end method

.method public abstract onWideSelfieLivePreviewData([B)V
.end method

.method public abstract onWideSelfieLowResolutionData([B)V
.end method

.method public abstract onWideSelfieNextCapturePosition(II)V
.end method

.method public abstract onWideSelfieProgressStitching(I)V
.end method

.method public abstract onWideSelfieRectChanged([B)V
.end method

.method public abstract onWideSelfieSingleCaptureDone()V
.end method

.method public abstract onWideSelfieSlowMove()V
.end method
