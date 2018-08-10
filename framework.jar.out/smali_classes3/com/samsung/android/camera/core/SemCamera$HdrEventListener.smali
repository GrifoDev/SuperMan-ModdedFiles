.class public interface abstract Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HdrEventListener"
.end annotation


# virtual methods
.method public abstract onHdrAllProgressCompleted(Z)V
.end method

.method public abstract onHdrResultCompleted(Z)V
.end method

.method public abstract onHdrResultProgress(I)V
.end method

.method public abstract onHdrResultStarted()V
.end method
