.class public abstract Lcom/absolute/android/persistservice/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected c:Ljava/util/Hashtable;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/absolute/android/persistservice/v;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/absolute/android/persistservice/y;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 8

    const/4 v7, -0x1

    const/16 v5, 0x24

    const/16 v6, 0x18

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x24

    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v3, 0x24

    invoke-virtual {v4, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v1

    if-eq v1, v5, :cond_0

    move-object v0, v2

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :goto_1
    if-nez v2, :cond_5

    :goto_2
    if-nez v4, :cond_6

    :goto_3
    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0x18

    :try_start_2
    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v5, 0x18

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-eq v3, v6, :cond_1

    move-object v0, v2

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    const-string/jumbo v5, "DESede/CBC/PKCS5Padding"

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v3, v5, v6}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v4, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v2, v3

    goto :goto_0

    :cond_3
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v3, "Cannot read data file - unexpected format / corrupt."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_4
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_5
    if-nez v2, :cond_7

    :goto_6
    if-nez v3, :cond_8

    :goto_7
    if-nez v4, :cond_9

    :goto_8
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception closing persisted file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in loadNewVersion(). Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :cond_5
    :try_start_a
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :cond_7
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v1

    if-ne v1, v7, :cond_7

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :catch_4
    move-exception v1

    :try_start_d
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception closing persisted file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in loadNewVersion(). Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    :cond_8
    :try_start_e
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_7

    :cond_9
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catchall_6
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_5

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_4

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4

    :catch_a
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4
.end method

.method private a()[B
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()[B
    .locals 3

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LENOVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "Lenovo"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private g()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0EB8B69D04F2451E8B59C47D"

    const-string/jumbo v0, "0EB8B69D04F2451E8B59C47D"

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/absolute/android/persistservice/y;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    return-void
.end method

.method protected abstract c()V
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/ac;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/absolute/android/persistservice/ac;

    if-eqz v0, :cond_1

    nop

    nop

    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2

    :cond_2
    return v2
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/ac;->k(Ljava/lang/String;)V

    return-void
.end method

.method public abstract i(Ljava/lang/String;)Z
.end method

.method protected declared-synchronized j(Ljava/lang/String;)Z
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->a()[B

    move-result-object v5

    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string/jumbo v7, "Absolute_PersistedStore"

    invoke-virtual {v0, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x24

    invoke-virtual {v6, v8, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v8, 0x0

    const/16 v9, 0x18

    invoke-virtual {v6, v5, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v8, 0x1

    const-string/jumbo v9, "DESede/CBC/PKCS5Padding"

    invoke-static {v5, v8, v9, v4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, v6, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    iget-object v3, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v4, :cond_5

    :goto_2
    if-nez v5, :cond_6

    :goto_3
    if-nez v6, :cond_7

    :goto_4
    if-nez v7, :cond_8

    :cond_0
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v1, :cond_9

    :goto_6
    monitor-exit p0

    return v2

    :cond_1
    :try_start_7
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    :goto_7
    :try_start_8
    iget-object v7, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to write persisted data to file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-nez v3, :cond_a

    :goto_8
    if-nez v4, :cond_b

    :goto_9
    if-nez v5, :cond_c

    :goto_a
    if-nez v6, :cond_d

    :cond_2
    :goto_b
    :try_start_9
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v0, :cond_e

    :goto_c
    monitor-exit p0

    return v1

    :cond_3
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    :goto_d
    if-nez v3, :cond_f

    :goto_e
    if-nez v4, :cond_10

    :goto_f
    if-nez v6, :cond_11

    :goto_10
    if-nez v7, :cond_12

    :cond_4
    :goto_11
    :try_start_a
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    if-nez v2, :cond_13

    :goto_12
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_c
    iget-object v3, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception closing persisted file: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " in savetoPath(). Exception:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :cond_6
    :try_start_d
    invoke-virtual {v5}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :cond_7
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_4

    :catch_3
    move-exception v1

    goto/16 :goto_4

    :cond_8
    :try_start_f
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    :cond_9
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_6

    :cond_a
    :try_start_10
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_8

    :catch_4
    move-exception v0

    :try_start_11
    iget-object v3, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception closing persisted file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in savetoPath(). Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_8

    :cond_b
    :try_start_12
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto/16 :goto_9

    :cond_c
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_a

    :catch_6
    move-exception v0

    goto/16 :goto_a

    :cond_d
    :try_start_14
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_b

    :cond_e
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_c

    :cond_f
    :try_start_15
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_e

    :catch_7
    move-exception v2

    :try_start_16
    iget-object v3, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception closing persisted file: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " in savetoPath(). Exception:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_e

    :cond_10
    :try_start_17
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_f

    :catch_8
    move-exception v2

    goto/16 :goto_f

    :cond_11
    :try_start_18
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_10

    :catch_9
    move-exception v2

    goto/16 :goto_10

    :cond_12
    :try_start_19
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_11

    :cond_13
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_d

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v6, v3

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto/16 :goto_d

    :catchall_4
    move-exception v1

    move-object v4, v3

    move v11, v0

    move-object v0, v1

    move v1, v11

    goto/16 :goto_d

    :catchall_5
    move-exception v1

    move-object v4, v5

    move v11, v0

    move-object v0, v1

    move v1, v11

    goto/16 :goto_d

    :catchall_6
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto/16 :goto_d

    :catchall_7
    move-exception v0

    move v1, v2

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_d

    :catch_a
    move-exception v0

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v7

    goto/16 :goto_7

    :catch_b
    move-exception v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v7

    move v11, v0

    move-object v0, v2

    move v2, v11

    goto/16 :goto_7

    :catch_c
    move-exception v2

    move-object v4, v3

    move-object v5, v6

    move-object v6, v7

    move v11, v0

    move-object v0, v2

    move v2, v11

    goto/16 :goto_7

    :catch_d
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v11, v0

    move-object v0, v2

    move v2, v11

    goto/16 :goto_7

    :catch_e
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto/16 :goto_7
.end method

.method protected declared-synchronized k(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "Absolute_PersistedStore"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ac;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method protected declared-synchronized l(Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v3, "DESede/CBC/PKCS5Padding"

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v3, Ljavax/crypto/CipherInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :goto_1
    if-nez v3, :cond_3

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    iput-object v0, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_4
    if-nez v2, :cond_4

    :goto_5
    if-nez v3, :cond_5

    :goto_6
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Cannot read data file in old format."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception closing persisted file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " in loadOldVersion(). Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_9
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_4
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->read()I

    move-result v1

    if-ne v1, v5, :cond_4

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    :catch_3
    move-exception v1

    :try_start_b
    iget-object v2, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception closing persisted file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in loadOldVersion(). Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :cond_5
    :try_start_c
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_6

    :catch_4
    move-exception v1

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3
.end method
