.class public interface abstract Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PanoramaEventListener"
.end annotation


# virtual methods
.method public abstract onPanoramaCaptured()V
.end method

.method public abstract onPanoramaCapturedMaxFrames()V
.end method

.method public abstract onPanoramaCapturedNew()V
.end method

.method public abstract onPanoramaDirectionChanged(I)V
.end method

.method public abstract onPanoramaError(I)V
.end method

.method public abstract onPanoramaLivePreviewData([B)V
.end method

.method public abstract onPanoramaLowResolutionData([B)V
.end method

.method public abstract onPanoramaProgressStitching(I)V
.end method

.method public abstract onPanoramaRectChanged(II)V
.end method

.method public abstract onPanoramaSlowMove()V
.end method
