.class Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
.super Ljava/lang/Object;
.source "WifiApBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiApBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHotspotEnabled:Z

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x8

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    const-string/jumbo v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model name.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private loadWifiApConfig(Ljava/lang/String;)Z
    .locals 14

    const/16 v13, 0xe

    const/16 v11, 0x8

    const/4 v12, 0x3

    const-string/jumbo v9, "WifiApBackupRestore"

    const-string/jumbo v10, "loadWifiApConfig.."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    iput-boolean v9, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-le v9, v13, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-boolean v9, v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    if-eqz v9, :cond_9

    :cond_0
    :goto_0
    if-ne v8, v12, :cond_1

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ge v9, v13, :cond_b

    const/4 v9, 0x0

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_1
    :goto_1
    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v9, v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    const/16 v10, 0x15

    if-le v9, v10, :cond_d

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v9, :cond_3

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v9, v11, :cond_d

    :cond_3
    const-string/jumbo v9, "TMO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x8

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_4
    :goto_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v0}, Ljava/util/BitSet;->set(I)V

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, "WifiApBackupRestore"

    const-string/jumbo v10, "Both models are same"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Result of setWifiApConfiguration.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_7

    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_3
    move-object v5, v6

    :cond_8
    :goto_4
    return v7

    :cond_9
    :try_start_3
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v5, v6

    :goto_5
    :try_start_4
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v8, v12, :cond_a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadApConfigurationOldVer(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    :cond_a
    if-eqz v5, :cond_8

    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const/4 v9, 0x1

    :try_start_6
    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    move-object v5, v6

    :goto_6
    if-eqz v5, :cond_c

    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_c
    :goto_7
    throw v9

    :cond_d
    :try_start_8
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v9, :cond_4

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in loadWifiApConfig.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v3

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception in loadWifiApConfig.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_1
    move-exception v9

    goto :goto_6

    :catch_4
    move-exception v4

    goto/16 :goto_5
.end method


# virtual methods
.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    goto :goto_0
.end method

.method encrypt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 18

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v14, v14, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    if-nez v14, :cond_5

    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v10

    move-object v5, v6

    move-object v8, v9

    :cond_0
    :goto_0
    const/4 v12, 0x0

    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    :goto_1
    if-eqz v8, :cond_6

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_6

    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_2
    :try_start_4
    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, -0x1

    if-eqz v10, :cond_1

    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Everything OK?0:1 - ret"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v14, v14, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v3, v4

    move-object v10, v11

    goto :goto_0

    :cond_6
    if-eqz v10, :cond_7

    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v13, -0x1

    goto :goto_3

    :catch_2
    move-exception v7

    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ioexception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v10, :cond_a

    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_d
    :goto_6
    throw v14

    :catch_3
    move-exception v7

    const-string/jumbo v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ioexception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    goto :goto_6

    :catchall_1
    move-exception v14

    move-object v8, v9

    goto :goto_5

    :catchall_2
    move-exception v14

    move-object v5, v6

    move-object v8, v9

    goto :goto_5

    :catchall_3
    move-exception v14

    move-object v3, v4

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v8, v9

    goto/16 :goto_2

    :catch_5
    move-exception v2

    move-object v5, v6

    move-object v8, v9

    goto/16 :goto_2

    :catch_6
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateEncryptSalt()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3, v5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get0()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    goto :goto_0
.end method

.method public generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v1

    return-object v1
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
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

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B

    move-result-object v6

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

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
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

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

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

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-set1(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get1()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    return-object v2
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method loadApConfigurationOldVer(Ljava/lang/String;)Z
    .locals 14

    const/16 v12, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-instance v6, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    iput-boolean v10, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v11, 0xe

    if-le v10, v11, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-boolean v10, v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    if-eqz v10, :cond_7

    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v10, v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    const/16 v11, 0x15

    if-le v10, v11, :cond_8

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-eqz v10, :cond_1

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-le v10, v12, :cond_8

    :cond_1
    const-string/jumbo v10, "TMO"

    sget-object v11, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x8

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_2
    :goto_1
    const-string/jumbo v10, "0"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_a

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_b

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    const-string/jumbo v10, "WifiApBackupRestore"

    const-string/jumbo v11, " conf changed to wpa2 from wpa"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Result of setWifiApConfiguration from OldVer.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_4
    move-object v5, v6

    :cond_6
    :goto_5
    return v8

    :cond_7
    :try_start_3
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v5, v6

    :goto_6
    :try_start_4
    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadApConfigurationOldVer() : IOException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    :try_start_6
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v10, :cond_2

    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    move-object v5, v6

    :goto_7
    if-eqz v5, :cond_9

    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    :goto_8
    throw v10

    :cond_a
    const/4 v10, 0x3

    if-ne v7, v10, :cond_3

    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    goto/16 :goto_2

    :cond_b
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v3

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception is.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_3
    move-exception v3

    const-string/jumbo v11, "WifiApBackupRestore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception is.."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_1
    move-exception v10

    goto :goto_7

    :catch_4
    move-exception v4

    goto/16 :goto_6
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 10

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "wifi_wpaconf.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "softap.conf"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    :cond_1
    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string/jumbo v7, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "makeXML exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, -0x1

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method public permissionCheck()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->-get2()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method readXML(Ljava/lang/String;)I
    .locals 16

    const/4 v11, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v6, Ljava/io/FileReader;

    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "wifi_wpaconf.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    const/4 v7, 0x0

    const-string/jumbo v12, ""

    const-string/jumbo v2, ""

    :goto_0
    const/4 v13, 0x1

    if-eq v9, v13, :cond_7

    const/4 v13, 0x2

    if-ne v9, v13, :cond_2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v7, 0x1

    :cond_1
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    :cond_2
    const/4 v13, 0x4

    if-ne v9, v13, :cond_5

    if-eqz v7, :cond_4

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] model : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v10

    move-object v5, v6

    :goto_2
    :try_start_2
    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "runtimeException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, -0x1

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    return v11

    :cond_4
    if-eqz v7, :cond_1

    :try_start_4
    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] xmlConf : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v5, v6

    :goto_4
    :try_start_5
    const-string/jumbo v13, "WifiApBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "read XML Error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v11, -0x1

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    return v11

    :cond_5
    const/4 v13, 0x3

    if-ne v9, v13, :cond_1

    :try_start_7
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_6

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_6
    if-eqz v7, :cond_1

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v13

    if-eqz v13, :cond_1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_7
    if-eqz v6, :cond_8

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    move-object v5, v6

    goto/16 :goto_3

    :catch_3
    move-exception v4

    return v11

    :catch_4
    move-exception v4

    return v11

    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v5, :cond_9

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_9
    throw v13

    :catch_5
    move-exception v4

    return v11

    :catchall_1
    move-exception v13

    move-object v5, v6

    goto :goto_5

    :catch_6
    move-exception v10

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto :goto_4
.end method

.method public run()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "intent is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string/jumbo v22, "SAVE_PATH"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SESSION_KEY"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "EXPORT_SESSION_TIME"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SECURITY_LEVEL"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[BACKUP] path : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", action : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", mSource : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " sessionTime : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " securityLevel : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v21

    if-nez v21, :cond_1

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Permission Error."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    :cond_2
    const-string/jumbo v21, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-nez v21, :cond_3

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "There is no conf file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    if-nez v21, :cond_4

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "There is no networks to backup"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_4
    :try_start_0
    new-instance v20, Landroid/os/StatFs;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v6, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v4, v0

    mul-long v14, v6, v4

    cmp-long v21, v14, v8

    if-gez v21, :cond_5

    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "freeSpaceInBytes : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", confSize : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v0, v8

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_5
    new-instance v12, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "softap.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "/data/misc/wifi/softap.conf"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "softap.conf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "encrypt fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->makeXML(Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "makeXML fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_7
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Action is CANCEL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Sending Response FAIL"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string/jumbo v22, "SAVE_PATH"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SESSION_KEY"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SECURITY_LEVEL"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[RESTORE] path : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", action : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", mSource : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->permissionCheck()Z

    move-result v21

    if-nez v21, :cond_c

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "PErmission ERROR"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string/jumbo v21, "WifiApBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setWifiApEnabled ..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const/16 v16, 0x0

    :cond_e
    if-eqz v13, :cond_f

    const-wide/16 v22, 0x3e8

    :try_start_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    const/16 v21, 0xa

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getModelName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->readXML(Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "xml parsing error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :catch_1
    move-exception v11

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "Exception while turning off MHS"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void

    :cond_10
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->getFileSize(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_13

    new-instance v12, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "temp.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "temp.conf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->encrypt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "decrypt fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_11
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "temp.conf"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->loadWifiApConfig(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "WifiConfig loaded fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_12
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "WifiConfig loaded success"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v21, "WifiApBackupRestore"

    const-string/jumbo v22, "can\'t read file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->sendResponse(III)V

    return-void
.end method

.method sendResponse(III)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "sendResponse.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "WifiApBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",rs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",isCancelled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    if-nez v2, :cond_3

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "EXPORT_SESSION_TIME"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string/jumbo v2, "RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "ERR_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "REQ_SIZE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SOURCE"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "SmartSwitch"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mHotspotEnabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->wm:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
