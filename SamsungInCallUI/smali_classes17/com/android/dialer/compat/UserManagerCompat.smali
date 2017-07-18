.class public Lcom/android/dialer/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# static fields
.field private static final PER_USER_RANGE:I = 0x186a0

.field private static final USER_SYSTEM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSystemUser(Landroid/os/UserManager;)Z
    .locals 2

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/dialer/compat/UserManagerSdkCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
