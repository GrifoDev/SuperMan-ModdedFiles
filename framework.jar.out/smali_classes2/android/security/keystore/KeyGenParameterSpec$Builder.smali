.class public final Landroid/security/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAttestationChallenge:[B

.field private mBlockModes:[Ljava/lang/String;

.field private mCertificateNotAfter:Ljava/util/Date;

.field private mCertificateNotBefore:Ljava/util/Date;

.field private mCertificateSerialNumber:Ljava/math/BigInteger;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private mDigests:[Ljava/lang/String;

.field private mEncryptionPaddings:[Ljava/lang/String;

.field private mInvalidatedByBiometricEnrollment:Z

.field private mKeySize:I

.field private mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private mPurposes:I

.field private mRandomizedEncryptionRequired:Z

.field private mSignaturePaddings:[Ljava/lang/String;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mUid:I

.field private mUniqueIdIncluded:Z

.field private mUserAuthenticationRequired:Z

.field private mUserAuthenticationValidWhileOnBody:Z

.field private mUserAuthenticationValidityDurationSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUid:I

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iput-object v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "keystoreAlias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keystoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    return-void
.end method


# virtual methods
.method public build()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 25

    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUid:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v24, v0

    invoke-direct/range {v1 .. v24}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZI[BZZZ)V

    return-object v1
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method public setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    return-object p0
.end method

.method public varargs setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    return-object p0
.end method

.method public setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    return-object p0
.end method

.method public setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object p0
.end method

.method public varargs setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    return-object p0
.end method

.method public setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    return-object p0
.end method

.method public setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    return-object p0
.end method

.method public setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    return-object p0
.end method

.method public setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    return-object p0
.end method

.method public setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public varargs setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public setUid(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUid:I

    return-object p0
.end method

.method public setUniqueIdIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    return-object p0
.end method

.method public setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    return-object p0
.end method

.method public setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    return-object p0
.end method

.method public setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    return-object p0
.end method
