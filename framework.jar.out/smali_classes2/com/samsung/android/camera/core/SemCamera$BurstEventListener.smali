.class public interface abstract Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BurstEventListener"
.end annotation


# virtual methods
.method public abstract onBurstCapturingProgressed(II)V
.end method

.method public abstract onBurstCapturingStopped(I)V
.end method

.method public abstract onBurstSavingCompleted(I)V
.end method

.method public abstract onBurstStringProgressed([B)V
.end method
