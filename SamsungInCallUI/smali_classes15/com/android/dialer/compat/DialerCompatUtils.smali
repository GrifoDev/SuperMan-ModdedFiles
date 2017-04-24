.class public final Lcom/android/dialer/compat/DialerCompatUtils;
.super Ljava/lang/Object;
.source "DialerCompatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCallsCachedPhotoUriCompatible()Z
    .locals 1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    return v0
.end method
