.class public Lcom/android/dialer/compat/UserManagerSdkCompat;
.super Ljava/lang/Object;
.source "UserManagerSdkCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/support/v4/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
