.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlockModes:[Ljava/lang/String;

.field private mBoundToSecureUserId:J

.field private mCriticalToDeviceEncryption:Z

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mInvalidatedByBiometricEnrollment:Z

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidWhileOnBody:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyProtection;
    .locals 20

    new-instance v2, Landroid/security/keystore/KeyProtection;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    move-object/from16 v0, p0

    iget v13, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZJZLandroid/security/keystore/KeyProtection;)V

    return-object v2
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    iput-wide p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    return-object p0
.end method

.method public setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    return-object p0
.end method

.method public setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    return-object p0
.end method
