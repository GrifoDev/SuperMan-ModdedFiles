.class public interface abstract Lcom/samsung/android/knox/SemContainerState$EventListener;
.super Ljava/lang/Object;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# static fields
.field public static final CONTAINER_MODE_LAUNCHER:I = 0x1

.field public static final CONTAINER_MODE_PERSONAL:I


# virtual methods
.method public abstract onContainerModeChanged(Landroid/content/Context;II)V
.end method

.method public abstract onLockScreenVisivilityChanged(Landroid/content/Context;IZ)V
.end method
