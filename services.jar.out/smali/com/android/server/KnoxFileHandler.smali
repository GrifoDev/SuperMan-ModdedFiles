.class public Lcom/android/server/KnoxFileHandler;
.super Landroid/content/pm/IPersonaFileHandler$Stub;
.source "KnoxFileHandler.java"


# static fields
.field private static ALIAS_NAME:Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static final FILE_EDK_DE_PATH:Ljava/lang/String; = "knox_edk_de_"

.field public static final FLAG_STORAGE_CE:I = 0x1

.field public static final FLAG_STORAGE_CE_NO_REMOUNT:I = 0x100

.field public static final FLAG_STORAGE_DE:I = 0x10

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final PREFIX_DATA_SYSTEM_USERS_PATH:Ljava/lang/String; = "/data/system/users"

.field static final TAG:Ljava/lang/String; = "KnoxFileHandler"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String; = null

.field static final TIMA_TAG:Ljava/lang/String; = "KnoxFileHandler.tima"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEpm:Lcom/android/server/EnterprisePartitionManager;

.field private final mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/container/key"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v0, "ecryptfsKey"

    sput-object v0, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/pm/IPersonaFileHandler$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-static {p1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    iput-object p1, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FIPS3.0"

    :goto_0
    iput-object v0, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "3.0"

    goto :goto_0
.end method

.method private checkTimaError(II)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "KnoxFileHandler.tima"

    const-string/jumbo v1, "Setting to KNOX_STATE_TIMA_COMPROMISED....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setTimaCompromisedState(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkTimaStatus(I)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KnoxFileHandler.tima"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkTimaStatus() - Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Validation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/KnoxFileHandler;->checkTimaError(II)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertStorageTypeToFlag(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "KnoxFileHandler"

    const-string/jumbo v1, "Not specified storage type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/16 v0, 0x10

    return v0

    :pswitch_3
    const/16 v0, 0x100

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createPartitionInternal(ILjava/lang/String;ZI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/KnoxFileHandler;->generateEcryptfsKey(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v2, p1, p4}, Lcom/android/server/EnterprisePartitionManager;->createPartition(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "KnoxFileHandler"

    const-string/jumbo v3, "Knox persona partition successfully created.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "KnoxFileHandler"

    const-string/jumbo v3, "createPartition : secretkey not saved successfully. Removing partition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->convertStorageTypeToFlag(I)I

    move-result v2

    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/KnoxFileHandler;->removePartition(IZI)Z

    return v4

    :cond_1
    return v4
.end method

.method private deleteEcryptFSKey(IZI)V
    .locals 19

    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey enter"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v12, p2

    :try_start_0
    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "deleteEcryptFSKey-> isTimaEnabled :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v15

    if-eqz v15, :cond_1

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    sget-boolean v15, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "key successfully removed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " from TIMA keyStore"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    if-nez v13, :cond_1

    :try_start_2
    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey :: Null keystore..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_4
    sget-boolean v15, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "key not successfully removed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " from TIMA keyStore"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_5
    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey :: getTimaKeyStore failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v13, :cond_1

    :try_start_6
    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteEcryptFSKey :: Null keystore..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_7
    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v9, :cond_2

    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v15

    if-nez v13, :cond_4

    :try_start_9
    const-string/jumbo v16, "KnoxFileHandler"

    const-string/jumbo v17, "deleteEcryptFSKey :: Null keystore..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v15
    :try_end_9
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_3
    move-exception v6

    :try_start_a
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v9, :cond_2

    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    :try_start_c
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v13

    new-instance v8, Ljava/io/File;

    sget-object v15, Lcom/android/server/KnoxFileHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v9, v10

    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v13, v9, v15}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    sget-boolean v15, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v15, :cond_7

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "key successfully removed : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " from Android keyStore"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v13}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v9, :cond_1

    const-string/jumbo v15, "KnoxFileHandler"

    const-string/jumbo v16, "deleteing key store file."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/security/KeyStoreException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    :catch_5
    move-exception v7

    :try_start_d
    invoke-virtual {v7}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v9, :cond_2

    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_7
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_8
    move-exception v4

    :try_start_f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v9, :cond_2

    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_2

    :catch_9
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_a
    move-exception v3

    :try_start_11
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v9, :cond_2

    :try_start_12
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto/16 :goto_2

    :catch_b
    move-exception v11

    const-string/jumbo v15, "KnoxFileHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to close input stream: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_1
    move-exception v15

    if-eqz v9, :cond_8

    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_8
    :goto_3
    throw v15

    :catch_c
    move-exception v11

    const-string/jumbo v16, "KnoxFileHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed to close input stream: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .locals 7

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->generateSalt()[B

    move-result-object v4

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v5, "HmacSHA256"

    const-string/jumbo v6, "AndroidOpenSSL"

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Error inside generateCMK "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateSalt()[B
    .locals 3

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x20

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private getEcryptfsAliasByType(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "KnoxFileHandler"

    const-string/jumbo v1, "Not specified type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "De"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string/jumbo v2, "KnoxFileHandler"

    const-string/jumbo v3, "Returning key password"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KnoxFileHandler.tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    throw v0

    :catch_1
    move-exception v1

    sget-boolean v4, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "KnoxFileHandler.tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v1
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "N/A"

    iget-object v1, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "TIMAKeyStore"

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "KnoxFileHandler.tima"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    const-string/jumbo v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "FipsTimaKeyStore"

    goto :goto_0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private getTimaStatus()I
    .locals 6

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v4, "3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "KnoxFileHandler.tima"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Tima Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    :try_start_1
    const-string/jumbo v4, "FIPS3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v2

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KnoxFileHandler.tima"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/KnoxFileHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "KnoxFileHandler.tima"

    const-string/jumbo v4, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDirectBootEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isFileSystemEncrypted(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private mountByType(IZIZI)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKey(IZII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v1, p1, v0, p4, p5}, Lcom/android/server/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v1

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/KnoxFileHandler;->checkTimaError(II)V

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private readDeKeyFromFile(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 22

    if-nez p1, :cond_0

    const/16 v20, 0x0

    return-object v20

    :cond_0
    const/4 v14, 0x0

    const/4 v7, 0x0

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v13

    const/16 v20, 0x64

    move/from16 v0, v20

    new-array v14, v0, [B

    invoke-virtual {v8, v14}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    :cond_1
    const/16 v19, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    aget-byte v20, v14, v9

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    aget-byte v20, v14, v9

    const/16 v21, 0x39

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :catch_1
    move-exception v4

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v20, 0x0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v20

    :catch_2
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :catch_3
    move-exception v3

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v20, 0x0

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    return-object v20

    :catch_4
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :catchall_0
    move-exception v20

    :goto_3
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    throw v20

    :catch_5
    move-exception v5

    const/16 v20, 0x0

    return-object v20

    :cond_2
    if-nez v19, :cond_3

    const/16 v20, 0x0

    return-object v20

    :cond_3
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/4 v9, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    aget-byte v20, v14, v9

    aput-byte v20, v17, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v20, 0x5f

    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    if-nez v16, :cond_6

    :cond_5
    const/16 v20, 0x0

    return-object v20

    :cond_6
    move/from16 v0, v16

    new-array v15, v0, [B

    const/4 v9, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v9, v0, :cond_7

    add-int/lit8 v20, v9, 0x5

    aget-byte v20, v14, v20

    aput-byte v20, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    const/4 v2, 0x0

    const/16 v20, 0x10

    :try_start_8
    move/from16 v0, v20

    new-array v10, v0, [B

    fill-array-data v10, :array_0

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const-string/jumbo v21, "AES/CBC/PKCS7Padding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :try_start_9
    const-string/jumbo v20, "AES/CBC/PKCS7Padding"

    const-string/jumbo v21, "AndroidOpenSSL"

    invoke-static/range {v20 .. v21}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v12, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result-object v20

    return-object v20

    :catch_6
    move-exception v4

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v20, "KnoxFileHandler"

    const-string/jumbo v21, "error inside aes decrypt de key"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return-object v20

    :catch_7
    move-exception v4

    move-object v11, v12

    goto :goto_6

    :catchall_1
    move-exception v20

    move-object v7, v8

    goto/16 :goto_3

    :catch_8
    move-exception v3

    move-object v7, v8

    goto/16 :goto_2

    :catch_9
    move-exception v4

    move-object v7, v8

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private removePartitionInternal(IZIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "remove partition failed.., file system not encrypted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    and-int/lit8 v3, p3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/KnoxFileHandler;->deleteEcryptFSKey(IZI)V

    if-eqz p4, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_0
    and-int/lit8 v3, p3, 0x1

    if-ne v3, v5, :cond_2

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/KnoxFileHandler;->deleteEcryptFSKey(IZI)V

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    :goto_2
    return v0

    :cond_3
    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v3, p1, v6}, Lcom/android/server/EnterprisePartitionManager;->removePartition(II)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v3, p1, v5}, Lcom/android/server/EnterprisePartitionManager;->removePartition(II)Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private retrieveEcryptFSKey(IZII)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v6

    move v4, p2

    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveEcryptFSKey-> isTimaEnabled :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v6, :cond_1

    return-object v10

    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-nez v5, :cond_3

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    :try_start_1
    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " entry is null in TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_3

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_3
    sget-boolean v7, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "KnoxFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "key not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in TIMA keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_3

    const-string/jumbo v7, "KnoxFileHandler"

    const-string/jumbo v8, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v7

    if-nez v5, :cond_6

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7
.end method

.method private retrieveEcryptFSKeyForTima20(II)Ljava/lang/String;
    .locals 11

    const/16 v8, 0x20

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v8, [B

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_0
    invoke-interface {v5}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    const-string/jumbo v8, "KnoxFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieveEcryptFSKeyForTima20 errorCode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const/4 v8, -0x1

    if-eq p2, v8, :cond_0

    invoke-interface {v5, p2}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    aget-byte v8, v3, v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-static {v3, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-interface {v5}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_1
    return-object v4
.end method

.method private retrieveEcryptFSPwd(IZI)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "retrieveEcryptFSPwd enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v3, p2

    :try_start_0
    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "retrieveEcryptFSPwd-> isTimaEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_2

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    :try_start_2
    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "retrieveEcryptFSPwd :: Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    const/16 v5, 0x10

    invoke-virtual {v1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    :try_start_3
    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " entry is null in TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_2

    :try_start_5
    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "retrieveEcryptFSPwd :: Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_6
    sget-boolean v5, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/KnoxFileHandler;->ALIAS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in TIMA keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    if-nez v4, :cond_5

    :try_start_7
    const-string/jumbo v6, "KnoxFileHandler"

    const-string/jumbo v7, "retrieveEcryptFSPwd :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    return-object v8
.end method

.method private setFsErrorState(I)V
    .locals 1

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    return-void
.end method

.method private setFsSuccessState(I)V
    .locals 1

    const/16 v0, 0x200

    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    return-void
.end method

.method private setTimaCompromisedState(I)V
    .locals 3

    const-string/jumbo v1, "KnoxFileHandler"

    const-string/jumbo v2, "setTimaCompromisedState is called.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.POLICY_DEVICE_COMPROMISE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private storeEcryptFSKey(I[BZI)Z
    .locals 11

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey enter"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/KnoxFileHandler;->getEcryptfsAliasByType(I)Ljava/lang/String;

    move-result-object v5

    move v2, p3

    sget-boolean v8, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "KnoxFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "storeEcryptFSKey->  isTimaEnabled :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v5, :cond_1

    const/4 v8, 0x0

    return v8

    :cond_1
    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkTimaStatus(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    if-eqz p2, :cond_4

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v8, ""

    invoke-direct {v3, p2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v9

    invoke-virtual {v4, v8, v7, v9}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    sget-boolean v8, Lcom/android/server/KnoxFileHandler;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "KnoxFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Succesfully saved key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " inside TIMA keystore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v6, 0x1

    :goto_0
    if-nez v4, :cond_3

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v6

    :cond_4
    :try_start_1
    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "Illegal argument for TIMA keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_3

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    const-string/jumbo v8, "KnoxFileHandler"

    const-string/jumbo v9, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v8

    if-nez v4, :cond_5

    const-string/jumbo v9, "KnoxFileHandler"

    const-string/jumbo v10, "storeEcryptFSKey :: Null keystore..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v8
.end method

.method private storeEcryptfsKeyForTima20(I[BI)Z
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    const-string/jumbo v3, "KnoxFileHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "storeEcryptfsKeyForTima20 errorCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    invoke-interface {v2, p3, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    :cond_0
    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v6, "storeEcryptfsKeyForTima20 failed returning false"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkStoreDeKey(I)V
    .locals 8

    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/system/users/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "knox_edk_de_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, v7, p1, v7}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKey(IZII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/KnoxFileHandler;->readDeKeyFromFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {p0, p1, v1, v7, v5}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Success to store DE key!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Failed to delete legacy DE key.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "KnoxFileHandler"

    const-string/jumbo v6, "Failed to store DE key.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearLegacyEncryptionKey(IZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/KnoxFileHandler;->removePartitionInternal(IZIZ)Z

    move-result v0

    return v0
.end method

.method public createPartition(ILjava/lang/String;ZI)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v4, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array v0, v4, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/android/server/KnoxFileHandler;->isDirectBootEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v1, p3, v7}, Lcom/android/server/KnoxFileHandler;->createPartitionInternal(ILjava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Failed to create DE storage"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    move-object v1, p2

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "createPartition : password with password"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1, p3, v6}, Lcom/android/server/KnoxFileHandler;->createPartitionInternal(ILjava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Failed to create CE storage"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3, v7}, Lcom/android/server/KnoxFileHandler;->removePartition(IZI)Z

    return v5

    :cond_2
    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "createPartition : success all..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public isEncrypted(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v0

    return v0
.end method

.method public isMounted(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KnoxFileHandler"

    const-string/jumbo v1, "Unmounting failed.., file system not encrypted!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v0

    return v0
.end method

.method public isTimaAvailable()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaStatus()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public migrateEcryptFSKey(IZI)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSPwd(IZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/sec/knox/container/util/KeyManagementUtil;->getEcryptfsKeySkmm1(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z

    move-result v2

    :cond_0
    :goto_0
    const-string/jumbo v3, "KnoxFileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eCryptfs key migration status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Failed to get eCryptfs password OR fekek!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public migrateTimaEcryptFSKey(IZII)Z
    .locals 14

    const/4 v9, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    const/4 v11, 0x2

    move/from16 v0, p4

    if-le v11, v0, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/KnoxFileHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_2

    const/16 v11, 0x10

    new-array v8, v11, [B

    move/from16 v0, p3

    invoke-interface {v10, v0}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v11, 0x0

    aget-byte v11, v7, v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x10

    invoke-static {v7, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    move-object v3, v4

    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/service/tima/ITimaService;->keystoreShutdown()I

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v11

    invoke-virtual {v11, p1, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->getEcryptfsKeySkmm1(ILjava/lang/String;)[B

    move-result-object v6

    const/4 v11, 0x1

    move/from16 v0, p2

    invoke-direct {p0, p1, v6, v0, v11}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :cond_1
    :goto_1
    const-string/jumbo v11, "KnoxFileHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "eCryptfs key migration for tima status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_2
    :try_start_1
    const-string/jumbo v11, "KnoxFileHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "retrieveEcryptFSPwdForTima20 errorCode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/android/server/KnoxFileHandler;->retrieveEcryptFSKeyForTima20(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const/4 v11, 0x1

    move/from16 v0, p2

    invoke-direct {p0, p1, v1, v0, v11}, Lcom/android/server/KnoxFileHandler;->storeEcryptFSKey(I[BZI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    goto :goto_1
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZI)Z

    move-result v0

    return v0
.end method

.method public mountFS(ILjava/lang/String;ZIZI)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/KnoxFileHandler;->isDirectBootEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    and-int/lit8 v0, p6, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v6

    :cond_0
    and-int/lit8 v0, p6, 0x1

    if-ne v0, v7, :cond_1

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v6

    :cond_1
    and-int/lit16 v0, p6, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/KnoxFileHandler;->mountByType(IZIZI)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsErrorState(I)V

    return v6

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->setFsSuccessState(I)V

    return v7
.end method

.method public mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public preMount()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0}, Lcom/android/server/EnterprisePartitionManager;->preMount()Z

    move-result v0

    return v0
.end method

.method public removePartition(IZI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/KnoxFileHandler;->removePartitionInternal(IZIZ)Z

    move-result v0

    return v0
.end method

.method public syncFS(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/EnterprisePartitionManager;->syncFS(II)Z

    move-result v0

    return v0
.end method

.method public unmount(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0}, Lcom/android/server/KnoxFileHandler;->unmount(II)Z

    move-result v0

    return v0
.end method

.method public unmount(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/KnoxFileHandler;->isFileSystemEncrypted(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "KnoxFileHandler"

    const-string/jumbo v4, "Unmounting failed.., file system not encrypted!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    and-int/lit8 v3, p2, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/EnterprisePartitionManager;->unmount(II)Z

    move-result v0

    :cond_1
    const/4 v1, 0x1

    and-int/lit8 v3, p2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Lcom/android/server/EnterprisePartitionManager;->unmount(II)Z

    move-result v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxFileHandler;->checkStoreDeKey(I)V

    if-eqz v0, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public unmountOldContainer(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/KnoxFileHandler;->mEpm:Lcom/android/server/EnterprisePartitionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/EnterprisePartitionManager;->unmountOldContainer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
