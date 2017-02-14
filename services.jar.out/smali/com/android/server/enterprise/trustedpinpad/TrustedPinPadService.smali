.class public Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;
.super Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;
.source "TrustedPinPadService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DBG:Z = true

.field private static final KNOX_TRUSTED_PINPAD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_TRUSTED_PINPAD"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsTimaVersion30:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "TrustedPinPadService Service"

    sput-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string/jumbo v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TIMA_SERVICE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TrustedPinPadService Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getCertificates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCertificates - TIMA version does not support Trusted Pin Pad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCertificates - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSecretDimensions(Lcom/samsung/android/knox/ContextInfo;)[I
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in getSecretDimensions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSecretDimensions - TIMA version does not support Trusted Pin Pad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSecretDimensions - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public launchTrustedPinPad(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in launchTrustedPinPad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "launchTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "launchTrustedPinPad - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p4, :cond_1

    return-object v2
.end method

.method public loadTrustedPinPad(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public setPin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)[B
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setPin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPin - TIMA version does not include Trusted Pin Pad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPin - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p3, :cond_1

    return-object v2
.end method

.method public setSecretImage(Lcom/samsung/android/knox/ContextInfo;[BIILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unloadTrustedPinPad(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
