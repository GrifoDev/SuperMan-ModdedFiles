.class public interface abstract Landroid/app/ActivityManager$SemProcessListener;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SemProcessListener"
.end annotation


# virtual methods
.method public abstract onForegroundActivitiesChanged(IIZ)V
.end method

.method public abstract onProcessDied(II)V
.end method

.method public abstract onProcessStateChanged(III)V
.end method
