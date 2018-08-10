.class public Lcom/android/server/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;,
        Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/SyntheticPasswordManager$PasswordData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default-password"

.field private static final DEVICE_SUPPORT_KNOX_SDP:Z = true

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_SDP_MASTER_KEY:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SP_BLOB_INFO_FILED_LENGTH:I = 0x3

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_BLOB_RESERVED_FILED_LENGTH:I = 0x10

.field private static final SP_BLOB_TOTAL_HEADER_LENGTH:I = 0x13

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_LATEST:B = 0x3t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION_V2:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V3:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordManager.SDP"

.field private static final TARGET_ANDROID_KEYSTORE:B = 0x1t

.field private static final TARGET_TIMA_KEYSTORE:B = 0x2t

.field protected static final hexArray:[C

.field private static final mSecureModeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# instance fields
.field private mSdpManagerService:Lcom/android/server/SdpManagerService;

.field private mStorage:Lcom/android/server/LockSettingsStorage;

.field private mSyntheticPasswordSecret:Lcom/android/server/SyntheticPasswordSecret;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic -get2()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic -get3()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    return-object v0
.end method

.method static synthetic -get4()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic -get5()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static synthetic -wrap0(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SyntheticPasswordManager;->DEBUG:Z

    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    const-string/jumbo v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    const-string/jumbo v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    const-string/jumbo v0, "sdp-master-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->mSecureModeCache:Landroid/util/SparseArray;

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Lcom/android/server/LockSettingsStorage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/SyntheticPasswordSecret;->getInstance()Lcom/android/server/SyntheticPasswordSecret;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mSyntheticPasswordSecret:Lcom/android/server/SyntheticPasswordSecret;

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/SyntheticPasswordManager;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/server/SyntheticPasswordManager;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private static cacheSecureMode(II)V
    .locals 5

    invoke-static {p0, p1}, Lcom/android/server/SyntheticPasswordMdfpp;->cacheSecureMode(II)V

    sget-boolean v0, Lcom/android/server/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SyntheticPasswordManager.SDP"

    const-string/jumbo v1, "Cache - [ Secure Mode : %d, UserId : %d ]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private computePasswordToken(Ljava/lang/String;Lcom/android/server/SyntheticPasswordManager$PasswordData;)[B
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    const/16 v1, 0x4000

    invoke-virtual {p0, p1, v0, v1, v6}, Lcom/android/server/SyntheticPasswordManager;->pbkdf2(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    shl-int v3, v1, v0

    iget-byte v0, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v4, v1, v0

    iget-byte v0, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v5, v1, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/SyntheticPasswordManager;->scrypt(Ljava/lang/String;[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private createSecdiscardable(JI)[B
    .locals 7

    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    const-string/jumbo v2, "secdis"

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-object v3
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)V
    .locals 13

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v2

    if-nez v2, :cond_0

    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/server/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlobSpecific(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->computeP0()[B

    move-result-object v4

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v11

    array-length v2, v11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v7, v2, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v7, v3

    const/4 v2, 0x1

    aput-byte p3, v7, v2

    array-length v2, v11

    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-static {v11, v3, v7, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v6, "spblob"

    move-object v5, p0

    move-wide v8, p1

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void

    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0
.end method

.method private createSyntheticPasswordBlobSpecific(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)V
    .locals 17

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->computeP0()[B

    move-result-object v4

    :goto_0
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->isUnifiedKeyStoreSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v9, v2, [[B

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;->getAAD()[B

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v9, v5

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJB[[B)[B

    move-result-object v15

    :goto_2
    array-length v2, v15

    add-int/lit8 v2, v2, 0x13

    new-array v11, v2, [B

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-byte v2, v11, v3

    const/4 v2, 0x1

    aput-byte p3, v11, v2

    const/4 v2, 0x2

    aput-byte v8, v11, v2

    const/4 v2, 0x3

    const/16 v3, 0x13

    const/4 v5, 0x0

    invoke-static {v11, v2, v3, v5}, Ljava/util/Arrays;->fill([BIIB)V

    array-length v2, v15

    const/4 v3, 0x0

    const/16 v5, 0x13

    invoke-static {v15, v3, v11, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v10, "spblob"

    move-object/from16 v9, p0

    move-wide/from16 v12, p1

    move/from16 v14, p8

    invoke-direct/range {v9 .. v14}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    new-array v9, v2, [[B

    move-object/from16 v2, p0

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJB[[B)[B

    move-result-object v15

    goto :goto_2
.end method

.method public static decode([B)[B
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v1

    return-object v1
.end method

.method private static deleteSecureMode(I)V
    .locals 5

    invoke-static {p0}, Lcom/android/server/SyntheticPasswordMdfpp;->deleteSecureMode(I)V

    sget-boolean v0, Lcom/android/server/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SyntheticPasswordManager.SDP"

    const-string/jumbo v1, "Delete - [ Secure Mode : X, UserId : %d ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .locals 1

    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    return-void
.end method

.method private fakeUid(I)I
    .locals 1

    const v0, 0x186a0

    add-int/2addr v0, p1

    return v0
.end method

.method private generateAAD([B)[B
    .locals 2

    const-string/jumbo v0, "KeyEncryptionKey"

    const-string/jumbo v1, "ForAuthenticationData"

    invoke-static {p1, v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalise([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private generateAppId([B)[B
    .locals 2

    const-string/jumbo v0, "KeyEncryptionKey"

    const-string/jumbo v1, "ForApplicationId"

    invoke-static {p1, v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalise([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateHandle()J
    .locals 6

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    return-wide v0
.end method

.method private getHandleName(J)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "%s%x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "synthetic_password_"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLockSettings()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<",
            "Lcom/android/internal/widget/ILockSettings;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->sLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->sLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->sLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSdpManagerService()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional",
            "<",
            "Lcom/android/server/SdpManagerService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private static getSecureMode(I)I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/android/server/SyntheticPasswordMdfpp;->getSecureMode(I)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string/jumbo v2, "SyntheticPasswordManager.SDP"

    const-string/jumbo v3, "Secure mode for user %d = %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SyntheticPasswordManager.SDP"

    const-string/jumbo v3, "Get - [ Secure Mode : %d, UserId : %d ]"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SyntheticPasswordManager.SDP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Secure mode indeterminable for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1
    invoke-static {p0}, Lcom/android/server/SyntheticPasswordManager;->updateSecureMode(I)I

    move-result v1

    goto :goto_0
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isMdfppMode(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSpecificProcessRequired(I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordManager;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s;

    invoke-direct {v1, p1}, Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUnifiedKeyStoreSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_KNOX_SUPPORT_UKS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyntheticPasswordManager"

    const-string/jumbo v2, "Unified KeyStore is supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "SyntheticPasswordManager"

    const-string/jumbo v2, "Unified KeyStore is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_SyntheticPasswordManager_18746(ILcom/android/internal/widget/ILockSettings;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/internal/widget/ILockSettings;->getSecureMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$-com_android_server_SyntheticPasswordManager_53765(ILcom/android/server/SdpManagerService;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->isEnterpriseUser(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private loadEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "e0"

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-set0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B

    const-string/jumbo v1, "p1"

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-set1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadSecdiscardable(JI)[B
    .locals 1

    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .locals 2

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .locals 4

    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToGkInput([B)[B
    .locals 3

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToGkInput([BI)[B
    .locals 2

    if-lez p2, :cond_0

    const-string/jumbo v0, "KeyEncryptionKey"

    const-string/jumbo v1, "ForUserAuthentication"

    invoke-static {p1, v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalise([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v0

    return-object v0
.end method

.method private saveEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 7

    const-wide/16 v4, 0x0

    const-string/jumbo v2, "e0"

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v3

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    const-string/jumbo v2, "p1"

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v3

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .locals 7

    const-string/jumbo v2, "handle"

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method protected static secureRandom(I)[B
    .locals 2

    :try_start_0
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v3, 0x1

    new-array v3, v3, [[B

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v1

    array-length v2, p1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v0, v2, [B

    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .locals 17

    invoke-static/range {p7 .. p7}, Lcom/android/server/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->isSpecificProcessRequired(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/SyntheticPasswordManager;->unwrapSyntheticPasswordBlobSpecific(JB[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    return-object v4

    :cond_1
    const-string/jumbo v4, "spblob"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p7

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v14

    if-nez v14, :cond_2

    const/4 v4, 0x0

    return-object v4

    :cond_2
    const/4 v4, 0x0

    aget-byte v16, v14, v4

    const/4 v4, 0x2

    move/from16 v0, v16

    if-eq v0, v4, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Unknown blob version"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v4, 0x1

    aget-byte v4, v14, v4

    move/from16 v0, p3

    if-eq v4, v0, :cond_4

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Invalid blob type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_5

    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    array-length v5, v14

    const/4 v6, 0x2

    invoke-static {v14, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    move-object/from16 v0, p4

    invoke-static {v4, v5, v0}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v15

    :goto_0
    if-nez v15, :cond_6

    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fail to decrypt SP for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    array-length v5, v14

    const/4 v6, 0x2

    invoke-static {v14, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v15

    goto :goto_0

    :cond_6
    new-instance v8, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v8}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v8, v1}, Lcom/android/server/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User is not escrowable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_7
    invoke-virtual {v8, v15}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_8

    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Upgrade v1 SP blob for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)V

    :cond_8
    return-object v8

    :cond_9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8, v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-set2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method private unwrapSyntheticPasswordBlobSpecific(JB[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .locals 25

    const-string/jumbo v4, "spblob"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p7

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v20

    if-nez v20, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    const/4 v4, 0x0

    aget-byte v23, v20, v4

    const/4 v4, 0x1

    move/from16 v0, v23

    if-lt v0, v4, :cond_1

    const/4 v4, 0x3

    move/from16 v0, v23

    if-le v0, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Unknown blob version"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v4, 0x1

    aget-byte v4, v20, v4

    move/from16 v0, p3

    if-eq v4, v0, :cond_3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Invalid blob type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_4

    const/4 v8, 0x1

    const/16 v21, 0x2

    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    array-length v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, v20

    invoke-static {v0, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    move-object/from16 v0, p4

    invoke-static {v4, v5, v0}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v22

    :goto_0
    if-nez v22, :cond_7

    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fail to decrypt SP for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_4
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_5

    const/4 v4, 0x2

    aget-byte v8, v20, v4

    const/16 v21, 0x13

    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    array-length v5, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v5, v1, v8}, Lcom/android/server/SyntheticPasswordManager;->decryptSPBlobV1(Ljava/lang/String;[B[BB)[B

    move-result-object v22

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    aget-byte v8, v20, v4

    const/16 v21, 0x13

    invoke-static/range {p7 .. p7}, Lcom/android/server/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    array-length v4, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    const/4 v4, 0x1

    new-array v9, v4, [[B

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;->getAAD()[B

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v9, v7

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B

    move-result-object v22

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    array-length v4, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    const/4 v4, 0x0

    new-array v9, v4, [[B

    move-object/from16 v4, p0

    move-object/from16 v7, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B

    move-result-object v22

    goto/16 :goto_0

    :cond_7
    new-instance v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move/from16 v0, p7

    invoke-direct {v14, v0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;-><init>(I)V

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_a

    invoke-virtual {v14}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v14, v1}, Lcom/android/server/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User is not escrowable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    :goto_1
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_9

    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Upgrade v2 SP blob for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move/from16 v13, p3

    move-object/from16 v15, p4

    move-wide/from16 v16, p5

    move/from16 v18, p7

    move-object/from16 v19, p8

    invoke-direct/range {v10 .. v19}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlobSpecific(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)V

    :cond_9
    return-object v14

    :cond_a
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v14, v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-set2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method private static updateSecureMode(I)I
    .locals 6

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->getLockSettings()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s$1;

    invoke-direct {v2, p0}, Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s$1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/SyntheticPasswordManager;->cacheSecureMode(II)V

    const-string/jumbo v1, "SyntheticPasswordManager.SDP"

    const-string/jumbo v2, "Secure mode updated for user %d [ Mode : %d ]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;

    invoke-virtual {v9}, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;->getAppId()[B

    move-result-object v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->isMdfppMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/android/server/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SyntheticPasswordManager"

    const-string/jumbo v1, "User is not escrowable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)V

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public clearSidForUser(I)V
    .locals 4

    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v5, -0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_1

    :cond_0
    const/16 p3, -0x1

    const-string/jumbo p2, "default-password"

    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/android/server/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v21

    const/4 v5, -0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_2

    const-string/jumbo v5, "SyntheticPasswordManager.SDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected condition while get secure mode for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    move/from16 v0, p5

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->cacheSecureMode(II)V

    :cond_2
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v8

    move/from16 v0, p3

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->create(II)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/SyntheticPasswordManager;->passwordTokenToGkInput([BI)[B

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v5, v6, v7, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "SyntheticPasswordManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v5

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v13

    const-string/jumbo v6, "pwd"

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v7

    move-object/from16 v5, p0

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->generateAppId([B)[B

    move-result-object v12

    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->generateAAD([B)[B

    move-result-object v4

    :goto_1
    new-instance v16, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12, v4}, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([B[B[B)V

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v11, p4

    move/from16 v15, p5

    invoke-direct/range {v7 .. v16}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)V

    return-wide v8

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v12

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .locals 8

    const/4 v0, 0x0

    new-array v6, v0, [[B

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ[[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs createSPBlob(Ljava/lang/String;[B[BJB[[B)[B
    .locals 8

    packed-switch p6, :pswitch_data_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Make sure of input parameter"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ[[B)[B

    move-result-object v7

    :goto_0
    return-object v7

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mSyntheticPasswordSecret:Lcom/android/server/SyntheticPasswordSecret;

    invoke-virtual {v0, p1}, Lcom/android/server/SyntheticPasswordSecret;->generateAndSaveSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[BJ[[B)[B

    move-result-object v7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createTokenBasedSyntheticPassword([BI)J
    .locals 8

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v2

    invoke-static {p2}, Lcom/android/server/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/SyntheticPasswordManager;->generateAppId([B)[B

    move-result-object v1

    :goto_0
    invoke-static {p2}, Lcom/android/server/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/SyntheticPasswordManager;->generateAAD([B)[B

    move-result-object v0

    :goto_1
    new-instance v4, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1, v0}, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([B[B[B)V

    iget-object v5, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v2

    :cond_1
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [[B

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs decryptSPBlob(Ljava/lang/String;[B[BB[[B)[B
    .locals 4

    packed-switch p4, :pswitch_data_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Make sure of input parameter"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B[[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager;->mSyntheticPasswordSecret:Lcom/android/server/SyntheticPasswordSecret;

    invoke-virtual {v2, p1}, Lcom/android/server/SyntheticPasswordSecret;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1, v1, p2, p3, p5}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B[[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected decryptSPBlobV1(Ljava/lang/String;[B[BB)[B
    .locals 4

    packed-switch p4, :pswitch_data_0

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Make sure of input parameter"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager;->mSyntheticPasswordSecret:Lcom/android/server/SyntheticPasswordSecret;

    invoke-virtual {v2, p1}, Lcom/android/server/SyntheticPasswordSecret;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-static {p1, v1, p2, p3}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroyEscrowData(I)V
    .locals 4

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "e0"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->isUnifiedKeyStoreSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mSyntheticPasswordSecret:Lcom/android/server/SyntheticPasswordSecret;

    invoke-virtual {v0, p1}, Lcom/android/server/SyntheticPasswordSecret;->removeSecretKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public existsHandle(JI)Z
    .locals 1

    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(JI)I
    .locals 5

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    return v1
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSecureMode(JI)I
    .locals 5

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "SyntheticPasswordManager.SDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSecureMode: encountered empty password data for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->-get0(Lcom/android/server/SyntheticPasswordManager$PasswordData;)I

    move-result v1

    return v1
.end method

.method public hasEscrowData(I)Z
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "e0"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSidForUser(I)Z
    .locals 4

    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method native nativeScrypt([B[BIIII)[B
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v1

    invoke-interface {p1, p3, v2, v2, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to create new SID for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    return-void
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p4}, Lcom/android/server/SyntheticPasswordManager;->getSecureMode(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v3, "SyntheticPasswordManager.SDP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected condition while get secure mode for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {p4, v2}, Lcom/android/server/SyntheticPasswordManager;->cacheSecureMode(II)V

    :cond_0
    invoke-static {p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->create(I)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v4

    invoke-interface {p1, p4, p2, v3, v4}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SyntheticPasswordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p4}, Lcom/android/server/SyntheticPasswordManager;->clearSidForUser(I)V

    :goto_0
    invoke-direct {p0, v1, p4}, Lcom/android/server/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v3, p4}, Lcom/android/server/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/server/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_0
.end method

.method protected pbkdf2(Ljava/lang/String;[BII)[B
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/android/server/SyntheticPasswordCrypto;->PBKDF2([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public removePendingToken(JI)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected scrypt(Ljava/lang/String;[BIIII)[B
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/SyntheticPasswordManager;->nativeScrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public setLockSettings(Lcom/android/internal/widget/ILockSettings;)V
    .locals 0

    sput-object p1, Lcom/android/server/SyntheticPasswordManager;->sLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method

.method protected sidFromPasswordHandle([B)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p4, :cond_0

    const-string/jumbo p4, "default-password"

    :cond_0
    new-instance v31, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    const-string/jumbo v4, "pwd"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->getSecureMode()I

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/SyntheticPasswordManager;->passwordTokenToGkInput([BI)[B

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v30

    if-nez v30, :cond_3

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v29 .. v29}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v4

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v9, v9}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v28 .. v28}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const-string/jumbo v12, "pwd"

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v13

    move-object/from16 v11, p0

    move-wide/from16 v14, p2

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    :cond_1
    :goto_0
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v16

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->generateAppId([B)[B

    move-result-object v15

    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->isMdfppMode()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->generateAAD([B)[B

    move-result-object v10

    :goto_2
    new-instance v19, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;

    move-object/from16 v0, v19

    invoke-direct {v0, v9, v15, v10}, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([B[B[B)V

    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move/from16 v18, p5

    invoke-direct/range {v11 .. v19}, Lcom/android/server/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move/from16 v26, p5

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v31

    :cond_2
    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fail to re-enroll user password for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_4

    new-instance v4, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v29 .. v29}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v31

    :cond_4
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v31

    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v15

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v14}, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/android/server/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->generateAppId([B)[B

    move-result-object v9

    :goto_0
    invoke-static/range {p5 .. p5}, Lcom/android/server/SyntheticPasswordManager;->isMdfppMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->generateAAD([B)[B

    move-result-object v4

    :goto_1
    new-instance v13, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;

    const/4 v5, 0x0

    invoke-direct {v13, v5, v9, v4}, Lcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([B[B[B)V

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move/from16 v12, p5

    invoke-direct/range {v5 .. v13}, Lcom/android/server/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJILcom/android/server/SyntheticPasswordMdfpp$KeyingMaterial;)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v5

    iput-object v5, v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    iget-object v5, v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v5, :cond_3

    iget-object v0, v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v20, p5

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    iput-object v5, v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v5, v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v5, v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_0
    :goto_2
    return-object v14

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v9

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v5, v14, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_2
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p5}, Lcom/android/server/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v4

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v5

    move-object v0, p1

    move v1, p5

    move-wide v2, p3

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v7

    if-nez v7, :cond_3

    new-instance v8, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    invoke-interface {p1, p5, v4, v4, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    invoke-direct {p0, v4, p5}, Lcom/android/server/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to re-enroll SP handle for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v8

    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    new-instance v8, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    goto :goto_0

    :cond_4
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0
.end method
