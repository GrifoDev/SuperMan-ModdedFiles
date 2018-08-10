.class final Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureData"
.end annotation


# instance fields
.field private final DEFAULT_ITER_COUNT:I

.field private final DEFAULT_KEY_LENGTH:I

.field private final DEFAULT_SALT_IV_SIZE:I

.field private mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private mEncryptedData:[B

.field private mIV:[B

.field private final mLock:Ljava/lang/Object;

.field private mSalt:[B

.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 3

    const/16 v2, 0x10

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->DEFAULT_SALT_IV_SIZE:I

    const/16 v1, 0x80

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->DEFAULT_KEY_LENGTH:I

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->DEFAULT_ITER_COUNT:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    new-array v1, v2, [B

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-array v1, v2, [B

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mSalt:[B

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mSalt:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method private generateKey([C)Ljavax/crypto/spec/SecretKeySpec;
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mSalt:[B

    const/16 v7, 0x3e8

    const/16 v8, 0x80

    invoke-direct {v5, p1, v6, v7, v8}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    const-string/jumbo v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_0
    move-exception v0

    :goto_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to generate the data of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public decryptAndGet([C)[B
    .locals 8

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "password should not be null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Please encrypt and save data first."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->generateKey([C)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit v5

    return-object v1

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v4, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not decrypt the data of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fail to decrypt the data of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public encryptAndSave([C[B)V
    .locals 8

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "password should not be null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "data that will be encrypted should not be null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    monitor-exit v5

    return-void

    :cond_2
    :try_start_2
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->generateKey([C)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-direct {v4, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    iput-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-void

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    const-string/jumbo v4, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not encrypt the data of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fail to encrpyt the data of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v7, v7, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
