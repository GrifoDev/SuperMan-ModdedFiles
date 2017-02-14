.class Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;
.super Ljava/lang/Object;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Encryption"
.end annotation


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mSalt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private securityPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/KiesLocationReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->streamCrypt(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->this$0:Lcom/samsung/android/settings/KiesLocationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;-><init>(Lcom/samsung/android/settings/KiesLocationReceiver;)V

    return-void
.end method

.method private decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v5

    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x0

    const/16 v11, 0x400

    :try_start_2
    new-array v2, v11, [B

    :goto_0
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v5, v2, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v9, v10

    move-object v6, v7

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_3
    if-eqz v9, :cond_2

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :goto_4
    return-object p2

    :cond_3
    move-object v9, v10

    move-object v6, v7

    :cond_4
    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    :goto_6
    if-eqz v9, :cond_2

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_8
    if-eqz v5, :cond_8

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_8
    :goto_9
    if-eqz v9, :cond_9

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_9
    :goto_a
    throw v11

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception v11

    move-object v9, v10

    goto :goto_7

    :catchall_2
    move-exception v11

    move-object v9, v10

    move-object v6, v7

    goto :goto_7

    :catch_a
    move-exception v4

    goto :goto_1

    :catch_b
    move-exception v4

    move-object v9, v10

    goto :goto_1
.end method

.method private decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x10

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    if-eq v1, v3, :cond_0

    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "read bytes not equals to block size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    new-array v3, v5, [B

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v5, :cond_1

    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "read bytes not equals to 16"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherInputStream;

    iget-object v4, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    :cond_3
    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method private encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 16

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v11, 0x400

    new-array v2, v11, [B

    :goto_0
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v6, v2, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v9, v10

    move-object v5, v6

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_3
    if-eqz v9, :cond_2

    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :goto_4
    return-object p2

    :cond_3
    move-object v9, v10

    move-object v5, v6

    :cond_4
    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    :goto_6
    if-eqz v9, :cond_2

    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_8
    if-eqz v7, :cond_8

    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_8
    :goto_9
    if-eqz v9, :cond_9

    :try_start_c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_9
    :goto_a
    throw v11

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception v11

    move-object v5, v6

    goto :goto_7

    :catchall_2
    move-exception v11

    move-object v9, v10

    move-object v5, v6

    goto :goto_7

    :catch_a
    move-exception v4

    goto :goto_1

    :catch_b
    move-exception v4

    move-object v5, v6

    goto :goto_1
.end method

.method private encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    if-ne p2, v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateEncryptSalt()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    :cond_1
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0
.end method

.method private generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v1, 0x3e8

    const/16 v4, 0x100

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method private generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private streamCrypt(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "KiesLocationReceiver"

    const-string/jumbo v3, "security password is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method
