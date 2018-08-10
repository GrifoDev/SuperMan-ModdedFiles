.class public final Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;,
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;,
        Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    }
.end annotation


# static fields
.field private static final BLINK_STATE:Ljava/lang/String; = "Blink"

.field private static final COMPLETED_STATE:Ljava/lang/String; = "Completed"

.field private static final LOCKED_STATE:Ljava/lang/String; = "Locked"

.field private static final NORMAL_STATE:Ljava/lang/String; = "Normal"

.field private static final PRENORMAL_STATE:Ljava/lang/String; = "Prenormal"

.field private static final RLC_AES256_IV_SIZE:I = 0x10

.field private static final RLC_AES256_KEY_SIZE:I = 0x20

.field private static final RLC_DELAY_TIME:I = 0x7530

.field private static final RLC_ERR_CERTIFICATE:I = -0x3

.field private static final RLC_ERR_CRYPTO_FUNCTION:I = -0x8

.field private static final RLC_ERR_GENERAL:I = -0x1

.field private static final RLC_ERR_INVALID_ARGUMENT:I = -0x2

.field private static final RLC_ERR_INVALID_TOKEN:I = -0x4

.field private static final RLC_ERR_LOCKSCREEN:I = -0x9

.field private static final RLC_ERR_MAX_FAILURE_COUNT_REACHED:I = -0x7

.field private static final RLC_ERR_SERIALIZATION:I = -0xa

.field private static final RLC_ERR_SERVER_RESULT_FAIL:I = -0x6

.field private static final RLC_ERR_VAULTKEEPER:I = -0x5

.field private static final RLC_FAILCOUNT_FOR_DELAY:I = 0x5

.field private static final RLC_ID_SIZE:I = 0x28

.field private static final RLC_KEY_SIZE:I = 0x20

.field private static final RLC_NONCE_FLAG_VERIFY:I = 0x2

.field private static final RLC_NONCE_FLAG_WRITE:I = 0x1

.field private static final RLC_NONCE_SIZE:I = 0x20

.field private static final RLC_SHA256_SIZE:I = 0x20

.field private static final RLC_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RlcManager"

.field private static mCompleteUnlockingDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager; = null

.field private static mLockSettingsService:Lcom/android/internal/widget/ILockSettings; = null

.field private static mNonceDev:[B = null

.field private static mNonceSvr:[B = null

.field private static mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener; = null

.field private static mRlcId:[B = null

.field private static mRlcKey:[B = null

.field private static final mRlcVaultName:Ljava/lang/String; = "RemoteLockControl"

.field private static mServerCert:[B

.field private static mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# instance fields
.field mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    return v0
.end method

.method static synthetic -get1()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    return-object v0
.end method

.method static synthetic -get2()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x20

    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const/16 v0, 0x28

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    new-array v0, v1, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    const-string/jumbo v0, "RemoteLockControl"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    sput-object p1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    const-string/jumbo v0, "RemoteLockControl"

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;-><init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sput-object p2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    sput-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method

.method private clearRlcData()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    sput-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    :cond_0
    return-void
.end method

.method private deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    :cond_0
    return-object v8

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    move-object v4, v5

    move-object v0, v1

    :cond_4
    :goto_2
    return-object v6

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v7, "Error deserialize"

    const/16 v8, -0xa

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    :goto_7
    throw v7

    :catch_5
    move-exception v2

    goto :goto_6

    :catch_6
    move-exception v2

    goto :goto_7

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v7

    move-object v4, v5

    move-object v0, v1

    goto :goto_5

    :catch_7
    move-exception v3

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v3

    move-object v4, v5

    move-object v0, v1

    goto :goto_3
.end method

.method private getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v6, -0x5

    const/4 v5, 0x0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getRlcVaultData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v6, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "Error from VaultKeeper (readData)"

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v3, v0

    if-nez v3, :cond_2

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    const-class v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    throw v1
.end method

.method private makeDeviceMsg([B[B[B[B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    array-length v5, p2

    add-int/lit8 v3, v5, 0x0

    :cond_0
    if-eqz p3, :cond_1

    array-length v5, p3

    add-int/2addr v3, v5

    :cond_1
    if-eqz p4, :cond_2

    array-length v5, p4

    add-int/2addr v3, v5

    :cond_2
    if-eqz p5, :cond_3

    array-length v5, p5

    add-int/2addr v3, v5

    :cond_3
    if-eqz p6, :cond_4

    array-length v5, p6

    add-int/2addr v3, v5

    :cond_4
    new-array v2, v3, [B

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    :try_start_0
    array-length v5, p2

    const/4 v6, 0x0

    invoke-static {p2, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p2

    add-int/lit8 v4, v5, 0x0

    :cond_5
    if-eqz p3, :cond_6

    array-length v5, p3

    const/4 v6, 0x0

    invoke-static {p3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p3

    add-int/2addr v4, v5

    :cond_6
    if-eqz p4, :cond_7

    array-length v5, p4

    const/4 v6, 0x0

    invoke-static {p4, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p4

    add-int/2addr v4, v5

    :cond_7
    if-eqz p5, :cond_8

    array-length v5, p5

    const/4 v6, 0x0

    invoke-static {p5, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p5

    add-int/2addr v4, v5

    :cond_8
    if-eqz p6, :cond_9

    array-length v5, p6

    const/4 v6, 0x0

    invoke-static {p6, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p6

    add-int/2addr v4, v5

    :cond_9
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->encryptData([B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method private makeResultDev()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v1, -0x5

    const/4 v9, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (readState)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    return-object v9

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "Exception"

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v7

    throw v7
.end method

.method private parameterChecking([B[B[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/16 v5, 0x28

    const/16 v4, 0x20

    const/4 v3, -0x2

    const/4 v2, 0x0

    if-nez p1, :cond_4

    const-string/jumbo v0, "serverCert is null"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eq v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nonceSvr size is wrong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), it should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-eq v0, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rlcId size is wrong("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), it should be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceSvr:[B

    invoke-static {p2, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2
    if-eqz p3, :cond_3

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcId:[B

    invoke-static {p3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->verifyCertChain([B)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "Failed to verify Certificate Chain"

    const/4 v1, -0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    goto :goto_0
.end method

.method private serialize(Ljava/lang/Object;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const/4 v7, 0x0

    new-array v7, v7, [B

    return-object v7

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v4, v5

    move-object v0, v1

    :cond_3
    :goto_2
    return-object v6

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v7, "Error serialize"

    const/16 v8, -0xa

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_4
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_7
    throw v7

    :catch_5
    move-exception v2

    goto :goto_6

    :catch_6
    move-exception v2

    goto :goto_7

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v7

    move-object v4, v5

    move-object v0, v1

    goto :goto_5

    :catch_7
    move-exception v3

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v3

    move-object v4, v5

    move-object v0, v1

    goto :goto_3
.end method

.method private setRemoteLockToLockscreen()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v8, -0x9

    const-string/jumbo v5, "RlcManager"

    const-string/jumbo v6, "setRemoteLockToLockscreen"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v5, :cond_0

    const-string/jumbo v5, "lock_settings"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v5, "getRlcVaultData return null"

    const/16 v6, -0x9

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    new-instance v5, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const-string/jumbo v6, "Locked"

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    const/4 v6, 0x2

    invoke-direct {v5, v6, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-interface {v4, v5, v2}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v4, "Runtime Exception from Lockscreen"

    invoke-direct {p0, v8, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private throwException(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string/jumbo v0, "RlcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindToLockScreen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "bindToLockScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v3, :cond_0

    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v5, 0x2

    invoke-interface {v3, v5, v4}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v3, "Runtime Exception from Lockscreen"

    const/16 v4, -0x9

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public completeBlinking(Z[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v5, -0x5

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeBlinking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v3, p2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passcode hash length is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Blink"

    invoke-virtual {v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write blink with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->unbindFromLockScreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public completeCompleting(Z[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v5, -0x5

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeCompleting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Completed"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public completeDestroying(Z[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v5, -0x5

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeDestroying"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->destroy([B[BLjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (destroy/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public completeLocking(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v5, -0x5

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeLocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v3, p2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passcode hash length is wrong("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    if-nez p4, :cond_3

    const-string/jumbo v3, "noticeMsg is null"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "noticeMsg has nothing"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_4
    if-nez p5, :cond_5

    const-string/jumbo v3, "nophoneNumberticeMsg is null"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "phoneNumber has nothing"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_6
    if-nez p6, :cond_7

    const-string/jumbo v3, "requesterName is null"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_7
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "requesterName has nothing"

    const/4 v4, -0x2

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_8
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Locked"

    invoke-virtual {v3, v4, p2, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    if-eqz v2, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write with passcode/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_9
    invoke-virtual {p0, p4, p5, p6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "setLockscreenData"

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->bindToLockScreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public completeRegistering(Z[B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v7, -0x5

    const-string/jumbo v5, "RlcManager"

    const-string/jumbo v6, "completeRegistering"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v5, :cond_0

    const-string/jumbo v5, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v5, "resultSvr is fail"

    const/4 v6, -0x6

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    const-string/jumbo v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x20

    new-array v2, v5, [B

    const-string/jumbo v5, "Normal"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "Normal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const-string/jumbo v6, "Normal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v5, v2, v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Invalid token"

    const/4 v6, -0x4

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    sget-object v6, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    const-string/jumbo v7, "Normal"

    sget-object v8, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mServerCert:[B

    invoke-virtual {v5, v6, v7, v8, p3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->initialize([BLjava/lang/String;[B[B)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error from VaultKeeper (initialization/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x5

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return-object v3

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v5
.end method

.method public completeUnlocking(Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v9, -0x5

    const-string/jumbo v7, "RlcManager"

    const-string/jumbo v8, "completeUnlocking(passcode)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v7, :cond_0

    const-string/jumbo v7, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getFailureCount()I

    move-result v1

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v7, "Error from VaultKeeper (getNonce)"

    const/4 v8, -0x5

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v4, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->sha256(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v7, "Fail to hash for passcode"

    const/4 v8, -0x8

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    const-string/jumbo v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x20

    new-array v3, v7, [B

    const-string/jumbo v7, "Normal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string/jumbo v8, "Normal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v9, v3, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const-string/jumbo v8, "Normal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v7, v9, v3, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v3, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->hmacSha256([B[B)[B

    move-result-object v2

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v8, "Normal"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setFailureCount(I)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "RlcManager"

    const-string/jumbo v8, "Failed setFailureCount"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    const-string/jumbo v7, "RlcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Incorrect passcode(VaultKeeper-write/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "), current failure count ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v7
.end method

.method public completeUnlocking(Z[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v5, -0x5

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "completeUnlocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v3, "resultSvr is fail"

    const/4 v4, -0x6

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v4, "Normal"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error from VaultKeeper (write/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x5

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeResultDev()[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v3
.end method

.method public encryptData([B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/16 v11, 0x10

    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string/jumbo v7, "RlcManager"

    const-string/jumbo v8, "encryptClientData"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v5, v9, [B

    new-array v4, v11, [B

    const/16 v7, 0x30

    new-array v6, v7, [B

    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    :cond_0
    const-string/jumbo v7, "Invalid clientData"

    const/4 v8, -0x2

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p2, v7, v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-static {v5, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/16 v9, 0x10

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, v6, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithServerPubKey([B[B)[B

    move-result-object v1

    sget-object v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    invoke-virtual {v7, p1, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->ecryptWithAES256CBC([B[B[B)[B

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v7, "encryptData"

    const/4 v8, -0x8

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    array-length v7, v1

    array-length v8, v0

    add-int/2addr v7, v8

    new-array v2, v7, [B

    array-length v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v2, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v1

    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([BB)V

    return-object v2

    :catch_0
    move-exception v3

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([BB)V

    throw v7
.end method

.method public getClientData()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getClientData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No client data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    throw v1
.end method

.method public getFailureCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getFailureCount"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getFailureCount()I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getNoticeMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No notice message in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getPhoneNumber"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No phone number in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getPhoneNumber()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "getRequesterName"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->getRlcVaultData()Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No data in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getNoticeMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "No requester name in Vault"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getRequesterName()Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public prepareBlinking([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, -0x5

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestBlinking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v8

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v8
.end method

.method public prepareCompleting([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, -0x5

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestCompleting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v8

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v8
.end method

.method public prepareDestroying([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, -0x5

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestDestroying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v8

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v8
.end method

.method public prepareLocking([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, -0x5

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestLocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v8

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v8
.end method

.method public prepareRegistering([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, -0x5

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestRegistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCrypto:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$CryptoManager;->getRandom([B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRlcKey:[B

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v8

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v8
.end method

.method public prepareUnlocking([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, -0x5

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "requestUnlocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getNonce()[B

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (getNonce)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mNonceDev:[B

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v8

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v8
.end method

.method public query()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v4, -0x5

    const-string/jumbo v2, "RlcManager"

    const-string/jumbo v3, "query(void)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "Error from VaultKeeper (readState)"

    const/4 v3, -0x5

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public query([B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, -0x5

    const-string/jumbo v0, "RlcManager"

    const-string/jumbo v1, "query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->parameterChecking([B[B[B)V

    sget-object v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readState()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "Error from VaultKeeper (readState)"

    const/4 v1, -0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->makeDeviceMsg([B[B[B[B[B[B)[B
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    return-object v7

    :catch_0
    move-exception v8

    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->clearRlcData()V

    throw v0
.end method

.method public setClientData(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v3, -0x5

    const-string/jumbo v1, "RlcManager"

    const-string/jumbo v2, "setClientData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, ""

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v1, "Error from VaultKeeper (readData)"

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v1, v6

    if-nez v1, :cond_3

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v1, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    if-eqz v10, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error from VaultKeeper (write/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    return-object v8

    :cond_3
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    if-nez v0, :cond_4

    const-string/jumbo v1, "Error deserialize"

    const/16 v2, -0xa

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->getClientData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setClientData(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    throw v7
.end method

.method public setFailureCount(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v3, -0x5

    const-string/jumbo v1, "RlcManager"

    const-string/jumbo v2, "setFailureCount"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v1, "Error from VaultKeeper (readData)"

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    array-length v1, v6

    if-nez v1, :cond_4

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setFailureCount(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error from VaultKeeper (write/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_3
    const/4 v8, 0x1

    return v8

    :cond_4
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    if-nez v0, :cond_2

    const-string/jumbo v1, "Error deserialize"

    const/16 v2, -0xa

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    throw v7
.end method

.method public setLockscreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v3, -0x5

    const-string/jumbo v1, "RlcManager"

    const-string/jumbo v2, "setLockscreenData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const-string/jumbo v1, "One of paratemers should not be null"

    const/4 v2, -0x2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->readData()[B

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v1, "Error from VaultKeeper (readData)"

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_2
    array-length v1, v6

    if-nez v1, :cond_5

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    const-string/jumbo v5, ""

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->serialize(Ljava/lang/Object;)[B

    move-result-object v9

    sget-object v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write([B[B[B)I

    move-result v10

    if-eqz v10, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error from VaultKeeper (write/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_4
    const/4 v8, 0x1

    return v8

    :cond_5
    const-class v1, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;

    if-nez v0, :cond_6

    const-string/jumbo v1, "Error deserialize"

    const/16 v2, -0xa

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setNoticeMessage(Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v0, p2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setPhoneNumber(Ljava/lang/String;)V

    :cond_8
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->setRequesterName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    throw v7
.end method

.method public setRmmTargetDevice()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, -0x5

    const-string/jumbo v4, "RlcManager"

    const-string/jumbo v5, "setRmmtargetdevice"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v4, :cond_0

    const-string/jumbo v4, "Error from VaultKeeper Manager is null object"

    invoke-direct {p0, v6, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "Completed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot set RMM Prenormal state in current state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    :cond_1
    sget-object v4, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    const-string/jumbo v5, "Prenormal"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(Ljava/lang/String;[B[B)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error from VaultKeeper (write prenormal/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x5

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v8

    :catch_0
    move-exception v0

    throw v0
.end method

.method public unbindFromLockScreen()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v3, "RlcManager"

    const-string/jumbo v4, "unbindFromLockScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v3, :cond_0

    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    sget-object v3, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockMonitorCallback:Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    const/4 v5, 0x2

    invoke-interface {v3, v5, v4}, Lcom/android/internal/widget/ILockSettings;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->setRemoteLockToLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v3, "Runtime Exception from Lockscreen"

    const/16 v4, -0x9

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->throwException(ILjava/lang/String;)V

    goto :goto_0
.end method
