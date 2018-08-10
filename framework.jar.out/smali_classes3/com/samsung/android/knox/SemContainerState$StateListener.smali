.class public interface abstract Lcom/samsung/android/knox/SemContainerState$StateListener;
.super Ljava/lang/Object;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onContainerCreated(Landroid/content/Context;I)V
.end method

.method public abstract onContainerEnabled(Landroid/content/Context;I)V
.end method

.method public abstract onContainerRemoved(Landroid/content/Context;I)V
.end method

.method public abstract onContainerStarted(Landroid/content/Context;I)V
.end method

.method public abstract onContainerStopped(Landroid/content/Context;I)V
.end method
