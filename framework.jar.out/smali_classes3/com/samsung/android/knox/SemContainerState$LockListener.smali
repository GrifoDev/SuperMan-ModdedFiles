.class public interface abstract Lcom/samsung/android/knox/SemContainerState$LockListener;
.super Ljava/lang/Object;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LockListener"
.end annotation


# virtual methods
.method public abstract onAdminLocked(Landroid/content/Context;I)V
.end method

.method public abstract onAdminUnlocked(Landroid/content/Context;I)V
.end method

.method public abstract onLicenseActivated(Landroid/content/Context;I)V
.end method

.method public abstract onLicenseExpired(Landroid/content/Context;I)V
.end method

.method public abstract onUserLocked(Landroid/content/Context;I)V
.end method

.method public abstract onUserUnlocked(Landroid/content/Context;I)V
.end method
