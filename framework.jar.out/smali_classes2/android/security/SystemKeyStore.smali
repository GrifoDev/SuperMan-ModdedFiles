.class public Landroid/security/SystemKeyStore;
.super Ljava/lang/Object;
.source "SystemKeyStore.java"


# static fields
.field private static final KEY_FILE_EXTENSION:Ljava/lang/String; = ".sks"

.field private static final SYSTEM_KEYSTORE_DIRECTORY:Ljava/lang/String; = "misc/systemkeys"

.field private static mInstance:Landroid/security/SystemKeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/security/SystemKeyStore;

    invoke-direct {v0}, Landroid/security/SystemKeyStore;-><init>()V

    sput-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/SystemKeyStore;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    return-object v0
.end method

.method private getKeyFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 107
    const-string/jumbo v3, "misc/systemkeys"

    .line 106
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v1, "sysKeystoreDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".sks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v0, "keyFile":Ljava/io/File;
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "keyData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 50
    return-object v5

    .line 52
    :cond_0
    array-length v3, p0

    .line 53
    .local v3, "keyLen":I
    array-length v5, p0

    mul-int/lit8 v0, v5, 0x2

    .line 54
    .local v0, "expectedStringLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_2

    .line 56
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "hexStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "hexStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public deleteKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "keyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 124
    return-void
.end method

.method public generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p1, "numBits"    # I
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p3}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 75
    .local v2, "keyFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 79
    :cond_0
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    .line 80
    .local v5, "skg":Ljavax/crypto/KeyGenerator;
    const-string/jumbo v7, "SHA1PRNG"

    invoke-static {v7}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v6

    .line 81
    .local v6, "srng":Ljava/security/SecureRandom;
    invoke-virtual {v5, p1, v6}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 83
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 84
    .local v4, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 88
    .local v3, "retKey":[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_1

    .line 89
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v7, 0x0

    return-object v7

    .line 92
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 94
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 96
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x180

    .line 98
    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 97
    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-object v3
.end method

.method public generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "numBits"    # I
    .param p2, "algName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/SystemKeyStore;->generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public retrieveKey(Ljava/lang/String;)[B
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 118
    .local v0, "keyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x0

    return-object v1

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/security/SystemKeyStore;->retrieveKey(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
