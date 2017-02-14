.class public final Landroid/os/SemSeLinux;
.super Ljava/lang/Object;
.source "SemSeLinux.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnforced()Z
    .locals 1

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    return v0
.end method
