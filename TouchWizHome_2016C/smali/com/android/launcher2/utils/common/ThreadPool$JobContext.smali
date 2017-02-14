.class public interface abstract Lcom/android/launcher2/utils/common/ThreadPool$JobContext;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/utils/common/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JobContext"
.end annotation


# virtual methods
.method public abstract getMode()I
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract setCancelListener(Lcom/android/launcher2/utils/common/ThreadPool$CancelListener;)V
.end method

.method public abstract setMode(I)Z
.end method
