.class public Lcom/samsung/android/security/CCManager;
.super Ljava/lang/Object;
.source "CCManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isMdfDisabled()Z
.end method

.method public static native isMdfEnabled()Z
.end method

.method public static native isMdfEnforced()Z
.end method

.method public static native isMdfReady()Z
.end method

.method public static native isMdfSupported()Z
.end method

.method public static native updateMdfStatus()I
.end method

.method public static native updateMdfVersion()Ljava/lang/String;
.end method
