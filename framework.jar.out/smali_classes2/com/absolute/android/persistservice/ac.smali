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
    .locals 17

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v14, 0x24

    :try_start_1
    new-array v10, v14, [B

    const/4 v14, 0x0

    const/16 v15, 0x24

    invoke-virtual {v4, v10, v14, v15}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v14

    const/16 v15, 0x24

    if-eq v14, v15, :cond_1

    :cond_0
    :goto_0
    if-eqz v9, :cond_3

    const/4 v1, 0x0

    if-nez v7, :cond_4

    :goto_1
    if-nez v5, :cond_5

    :goto_2
    if-nez v4, :cond_6

    :goto_3
    monitor-exit p0

    return-void

    :cond_1
    const/16 v14, 0x18

    :try_start_2
    new-array v11, v14, [B

    const/4 v14, 0x0

    const/16 v15, 0x18

    invoke-virtual {v4, v11, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    const/16 v15, 0x18

    if-ne v14, v15, :cond_0

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v15, "DESede/CBC/PKCS5Padding"

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v11, v0, v15, v14}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v12

    new-instance v6, Ljavax/crypto/CipherInputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-direct {v6, v4, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v8, Ljava/io/ObjectInputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-direct {v8, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/util/Hashtable;

    move-object v9, v0

    if-nez v9, :cond_2

    move-object v7, v8

    move-object v5, v6

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object v7, v8

    move-object v5, v6

    goto :goto_0

    :cond_3
    :try_start_7
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Cannot read data file - unexpected format / corrupt."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_0
    move-exception v10

    move-object v3, v4

    :goto_4
    :try_start_8
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v13

    :goto_5
    const/4 v1, 0x0

    if-nez v7, :cond_7

    :goto_6
    if-nez v5, :cond_8

    :goto_7
    if-nez v3, :cond_9

    :goto_8
    :try_start_9
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v14

    :goto_9
    monitor-exit p0

    throw v14

    :cond_4
    :try_start_a
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->read()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception closing persisted file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in loadNewVersion(). Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v14

    move-object v3, v4

    goto :goto_9

    :cond_5
    :try_start_c
    invoke-virtual {v5}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_2

    :catch_2
    move-exception v14

    goto/16 :goto_2

    :cond_6
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_3

    :catch_3
    move-exception v14

    goto/16 :goto_3

    :cond_7
    :try_start_e
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->read()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_7

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :catch_4
    move-exception v2

    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception closing persisted file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in loadNewVersion(). Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_6

    :cond_8
    :try_start_10
    invoke-virtual {v5}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_7

    :catch_5
    move-exception v14

    goto/16 :goto_7

    :cond_9
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_8

    :catch_6
    move-exception v14

    goto/16 :goto_8

    move-exception v14

    move-object v3, v4

    goto/16 :goto_9

    move-exception v14

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_9

    move-exception v14

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_9

    move-exception v14

    move-object v7, v8

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_9

    :catchall_3
    move-exception v13

    move-object v3, v4

    goto/16 :goto_5

    :catchall_4
    move-exception v13

    move-object v3, v4

    goto/16 :goto_5

    :catchall_5
    move-exception v13

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_5

    :catchall_6
    move-exception v13

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_5

    :catchall_7
    move-exception v13

    move-object v7, v8

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_5

    :catch_7
    move-exception v10

    goto/16 :goto_4

    :catch_8
    move-exception v10

    move-object v3, v4

    goto/16 :goto_4

    :catch_9
    move-exception v10

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_4

    :catch_a
    move-exception v10

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_4

    :catch_b
    move-exception v10

    move-object v7, v8

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_4
.end method

.method private a()[B
    .locals 3

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x18

    new-array v1, v2, [B

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
    .locals 4

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "LENOVO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v0, "Lenovo"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private g()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "0EB8B69D04F2451E8B59C47D"

    const-string/jumbo v1, "0EB8B69D04F2451E8B59C47D"

    return-object v1
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
    .locals 4

    const/4 v3, 0x0

    if-eq p0, p1, :cond_0

    instance-of v1, p1, Lcom/absolute/android/persistservice/ac;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/absolute/android/persistservice/ac;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, v0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    return v3

    :cond_2
    return v3
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
    .locals 25

    monitor-enter p0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ac;->b()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ac;->a()[B

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "power"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string/jumbo v22, "Absolute_PersistedStore"

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1

    const/16 v18, 0x0

    :goto_1
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    const/16 v22, 0x0

    const/16 v23, 0x18

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    const-string/jumbo v22, "DESede/CBC/PKCS5Padding"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v14, Ljavax/crypto/CipherOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-direct {v14, v12, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v16, Ljava/io/ObjectOutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    const/16 v17, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-nez v16, :cond_2

    :goto_2
    if-nez v14, :cond_3

    :goto_3
    if-nez v12, :cond_4

    :goto_4
    if-nez v10, :cond_5

    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v22, :cond_7

    :goto_6
    const/16 v22, 0x1

    monitor-exit p0

    return v22

    :cond_0
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v19

    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to write persisted data to file: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " Exception:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    if-nez v15, :cond_8

    :goto_8
    if-nez v13, :cond_9

    :goto_9
    if-nez v11, :cond_a

    :goto_a
    if-nez v10, :cond_b

    :goto_b
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v22, :cond_d

    :goto_c
    const/16 v22, 0x0

    monitor-exit p0

    return v22

    :cond_1
    const/16 v18, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    :goto_d
    const/4 v8, 0x0

    if-nez v15, :cond_e

    :goto_e
    if-nez v13, :cond_f

    :goto_f
    if-nez v11, :cond_10

    :goto_10
    if-nez v10, :cond_11

    :goto_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0

    if-nez v22, :cond_13

    :goto_12
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v22

    :goto_13
    monitor-exit p0

    throw v22

    :cond_2
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_2

    :catch_1
    move-exception v9

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception closing persisted file: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " in savetoPath(). Exception:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v22

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v11, v12

    goto :goto_13

    :cond_3
    :try_start_d
    invoke-virtual {v14}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_3

    :catch_2
    move-exception v22

    goto/16 :goto_3

    :cond_4
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_4

    :catch_3
    move-exception v22

    goto/16 :goto_4

    :cond_5
    :try_start_f
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v22

    if-nez v22, :cond_6

    :goto_14
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_14

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_6

    :cond_8
    :try_start_10
    invoke-virtual {v15}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_8

    :catch_4
    move-exception v9

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception closing persisted file: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " in savetoPath(). Exception:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_8

    :cond_9
    :try_start_12
    invoke-virtual {v13}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_9

    :catch_5
    move-exception v22

    goto/16 :goto_9

    :cond_a
    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_a

    :catch_6
    move-exception v22

    goto/16 :goto_a

    :cond_b
    :try_start_14
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v22

    if-nez v22, :cond_c

    :goto_15
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_15

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_c

    :cond_e
    :try_start_15
    invoke-virtual {v15}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_e

    :catch_7
    move-exception v9

    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception closing persisted file: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " in savetoPath(). Exception:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_e

    :cond_f
    :try_start_17
    invoke-virtual {v13}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_f

    :catch_8
    move-exception v22

    goto/16 :goto_f

    :cond_10
    :try_start_18
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_10

    :catch_9
    move-exception v22

    goto/16 :goto_10

    :cond_11
    :try_start_19
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v22

    if-nez v22, :cond_12

    :goto_16
    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_12
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_16

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ac;->g:Lcom/absolute/android/persistservice/y;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;ZZ)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_12

    move-exception v22

    move-object v11, v12

    goto/16 :goto_13

    move-exception v22

    move-object v11, v12

    goto/16 :goto_13

    move-exception v22

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_13

    move-exception v22

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_13

    :catchall_3
    move-exception v7

    move-object v11, v12

    goto/16 :goto_d

    :catchall_4
    move-exception v7

    move-object v11, v12

    goto/16 :goto_d

    :catchall_5
    move-exception v7

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_d

    :catchall_6
    move-exception v7

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_d

    :catchall_7
    move-exception v7

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_d

    :catch_a
    move-exception v19

    move-object v11, v12

    goto/16 :goto_7

    :catch_b
    move-exception v19

    move-object v11, v12

    goto/16 :goto_7

    :catch_c
    move-exception v19

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_7

    :catch_d
    move-exception v19

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_7

    :catch_e
    move-exception v19

    move-object/from16 v15, v16

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_7
.end method

.method protected declared-synchronized k(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/absolute/android/persistservice/ac;->d:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v4, "Absolute_PersistedStore"

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ac;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    if-nez v0, :cond_2

    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3
.end method

.method protected declared-synchronized l(Ljava/lang/String;)V
    .locals 15

    const/4 v14, -0x1

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->d()[B

    move-result-object v10

    const-string/jumbo v11, "DESede/CBC/PKCS5Padding"

    const/4 v12, 0x2

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ac;->g()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v12, v11, v13}, Lcom/absolute/android/crypt/Crypt;->getCipher([BILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    new-instance v2, Ljavax/crypto/CipherInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/Hashtable;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v5, :cond_0

    :goto_0
    if-eqz v5, :cond_1

    const/4 v8, 0x0

    if-nez v4, :cond_2

    :goto_1
    if-nez v2, :cond_3

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_4
    iput-object v5, p0, Lcom/absolute/android/persistservice/ac;->c:Ljava/util/Hashtable;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v4

    move-object v1, v2

    :goto_3
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    :goto_4
    const/4 v8, 0x0

    if-nez v3, :cond_4

    :goto_5
    if-nez v1, :cond_5

    :goto_6
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v10

    :goto_7
    monitor-exit p0

    throw v10

    :cond_1
    :try_start_7
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Cannot read data file in old format."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_4

    :cond_2
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->read()I

    move-result v10

    if-ne v10, v14, :cond_2

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v9

    :try_start_9
    iget-object v10, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception closing persisted file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in loadOldVersion(). Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v10

    move-object v3, v4

    move-object v1, v2

    goto :goto_7

    :cond_3
    :try_start_a
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_2

    :cond_4
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->read()I

    move-result v10

    if-ne v10, v14, :cond_4

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_3
    move-exception v9

    :try_start_c
    iget-object v10, p0, Lcom/absolute/android/persistservice/ac;->e:Lcom/absolute/android/persistservice/v;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception closing persisted file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " in loadOldVersion(). Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_5

    :cond_5
    :try_start_d
    invoke-virtual {v1}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_6

    :catch_4
    move-exception v10

    goto/16 :goto_6

    move-exception v10

    move-object v1, v2

    goto/16 :goto_7

    move-exception v10

    move-object v1, v2

    goto/16 :goto_7

    :catchall_4
    move-exception v7

    move-object v1, v2

    goto/16 :goto_4

    :catchall_5
    move-exception v7

    move-object v1, v2

    goto/16 :goto_4

    :catch_5
    move-exception v6

    goto/16 :goto_3

    :catch_6
    move-exception v6

    move-object v1, v2

    goto/16 :goto_3

    :catch_7
    move-exception v6

    move-object v1, v2

    goto/16 :goto_3
.end method
