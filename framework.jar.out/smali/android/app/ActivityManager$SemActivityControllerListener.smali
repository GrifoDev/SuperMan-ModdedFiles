.class public interface abstract Landroid/app/ActivityManager$SemActivityControllerListener;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SemActivityControllerListener"
.end annotation


# virtual methods
.method public abstract onActivityResuming(Ljava/lang/String;)Z
.end method

.method public abstract onActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
.end method

.method public abstract onAppCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
.end method

.method public abstract onAppEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract onAppNotResponding(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract onSystemNotResponding(Ljava/lang/String;)I
.end method
