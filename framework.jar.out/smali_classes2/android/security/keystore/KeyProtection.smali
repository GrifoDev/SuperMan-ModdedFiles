.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mBoundToSecureUserId:J

.field private final mCriticalToDeviceEncryption:Z

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZJZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iput p4, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    invoke-static {p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    invoke-static {p8}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    iput-boolean p9, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    iput-boolean p10, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    iput p11, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v0, p12

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    move-wide/from16 v0, p14

    iput-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZJZLandroid/security/keystore/KeyProtection;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZJZ)V

    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundToSpecificSecureUserId()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPurposes()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    return v0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public isCriticalToDeviceEncryption()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public isDigestsSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method
