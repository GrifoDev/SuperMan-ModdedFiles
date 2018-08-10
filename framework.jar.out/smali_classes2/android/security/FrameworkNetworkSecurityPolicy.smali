.class public Landroid/security/FrameworkNetworkSecurityPolicy;
.super Llibcore/net/NetworkSecurityPolicy;
.source "FrameworkNetworkSecurityPolicy.java"


# instance fields
.field private final mCleartextTrafficPermitted:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Llibcore/net/NetworkSecurityPolicy;-><init>()V

    iput-boolean p1, p0, Landroid/security/FrameworkNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    return-void
.end method


# virtual methods
.method public isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/FrameworkNetworkSecurityPolicy;->mCleartextTrafficPermitted:Z

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/security/FrameworkNetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method
