.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
    }
.end annotation


# static fields
.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;

.field static mIsCanceled:Z

.field private static final permissions:[Ljava/lang/String;


# instance fields
.field action:I

.field currentOS:I

.field mExportSessionTime:Ljava/lang/String;

.field mOption:I

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mSource:Ljava/lang/String;

.field final maxClient:I

.field private salt:[B

.field final support5G:Z

.field final timeout:I

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljavax/crypto/Cipher;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic -get1()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic -get2()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic -set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method static synthetic -set1(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupport5G:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->maxClient:I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultTimeOut:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->timeout:I

    return-void
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 20

    const-string/jumbo v15, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    const-string/jumbo v15, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v4, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v13, 0x0

    :try_start_0
    new-instance v14, Ljava/io/FileWriter;

    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "Writing the JSON"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_0

    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v15, "/data/misc/wifi_hostapd/backup.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_2

    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "Backup failed!, There is no conf file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v10

    :goto_1
    :try_start_3
    const-string/jumbo v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "FileWriter exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_0

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v15

    :goto_2
    if-eqz v13, :cond_1

    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v15

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_2
    new-instance v5, Ljava/io/File;

    const-string/jumbo v15, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_3

    :try_start_6
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    new-instance v18, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    move-wide/from16 v0, v16

    move-object/from16 v2, v18

    invoke-static {v15, v0, v1, v11, v2}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    :cond_3
    return-void

    :catch_4
    move-exception v7

    const-string/jumbo v15, "WifiApBackupRestore"

    const-string/jumbo v16, "err"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :catchall_1
    move-exception v15

    move-object v13, v14

    goto :goto_2

    :catch_5
    move-exception v10

    move-object v13, v14

    goto/16 :goto_1
.end method

.method public createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    const/4 v6, 0x0

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v16, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v13, v0, :cond_0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v16, "SSID"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    const-string/jumbo v16, "hidden"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    if-nez v3, :cond_6

    const-string/jumbo v16, "use_security"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "passphrase"

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v16, v0

    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    const-string/jumbo v16, "band"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    :goto_2
    const-string/jumbo v16, "channel"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getTimeoutValueFromPreference(Landroid/content/Context;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "allow"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v8

    if-eqz v8, :cond_a

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual {v15}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v15}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v5

    move-object v6, v7

    :goto_4
    :try_start_2
    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "JSONException enountered.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v16, 0x0

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_5
    return-object v16

    :cond_4
    :try_start_4
    const-string/jumbo v16, "hidden"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    move-object v6, v7

    :goto_6
    :try_start_5
    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "READ loadApConfigurationOldVer() : IOException"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v16, 0x0

    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_7
    return-object v16

    :cond_6
    :try_start_7
    const-string/jumbo v16, "use_security"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "passphrase"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v16

    move-object v6, v7

    :goto_8
    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_9
    throw v16

    :cond_8
    :try_start_9
    const-string/jumbo v16, "band"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v16, "allowed_devices_name"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v16, "allowed_devices"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string/jumbo v16, "hotspot"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_b

    :try_start_a
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_b
    :goto_a
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16

    :catch_2
    move-exception v4

    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_3
    move-exception v4

    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_4
    move-exception v4

    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_5
    move-exception v4

    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catchall_1
    move-exception v16

    goto/16 :goto_8

    :catch_6
    move-exception v5

    goto/16 :goto_4

    :catch_7
    move-exception v4

    goto/16 :goto_6
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0daa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0daa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutValueFromPreference(Landroid/content/Context;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    const-string/jumbo v2, "ACTION"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    return-void

    :cond_0
    sput-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "request backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "request restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public readJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v5

    move-object v6, v7

    :goto_1
    :try_start_3
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readJSON exception.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_0
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v4, v5

    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception on closing.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_4
    :try_start_6
    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readJSON IOEx.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception on closing.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v1

    const-string/jumbo v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception on closing.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v8

    :goto_5
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    throw v8

    :catch_5
    move-exception v1

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception on closing.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_1
    return-object v11

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_5

    :catchall_2
    move-exception v8

    move-object v4, v5

    move-object v6, v7

    goto :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v6, v7

    goto/16 :goto_1

    :catch_8
    move-exception v1

    move-object v6, v7

    goto/16 :goto_4

    :catch_9
    move-exception v1

    move-object v4, v5

    move-object v6, v7

    goto/16 :goto_4
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 31

    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    new-instance v24, Ljava/io/File;

    const-string/jumbo v27, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v28

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    new-instance v30, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-static {v11, v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    const-string/jumbo v27, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->readJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    if-eqz v22, :cond_6

    :try_start_2
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v19, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string/jumbo v27, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string/jumbo v27, "hotspot"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v27, "SSID"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v27, "hidden"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_5

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    const-string/jumbo v27, "channel"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v27, 0x4

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    const/16 v27, 0xe

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_1
    :goto_2
    const-string/jumbo v27, "allow"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const-string/jumbo v27, "use_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Ljava/util/BitSet;->set(I)V

    :goto_3
    if-eqz v6, :cond_2

    const-string/jumbo v27, "passphrase"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_2
    const-string/jumbo v27, "timeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setTimeout(ILandroid/content/Context;)V

    const-string/jumbo v27, "allowed_devices_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    const-string/jumbo v27, "allowed_devices_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const-string/jumbo v27, "allowed_devices"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v26

    if-eqz v18, :cond_a

    const/4 v13, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_a

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "Whitelist MAC invalid. QUIT!!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v23, 0x0

    return-void

    :catch_0
    move-exception v14

    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "FOS ioexception "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const/16 v27, 0x0

    :try_start_3
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_3

    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_5
    return-void

    :catch_2
    move-exception v14

    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "FOS ioexception "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception v27

    if-eqz v11, :cond_4

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    throw v27

    :catch_3
    move-exception v14

    const-string/jumbo v28, "WifiApBackupRestore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "FOS ioexception "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    const/16 v27, 0x0

    :try_start_6
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v10

    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "JSON EXCEeption enountered.."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    if-nez v23, :cond_b

    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "SCLOUD RESTORE Fail!!.."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    :cond_7
    const/16 v27, 0x1

    :try_start_7
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v23

    goto :goto_7

    :cond_b
    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "restore - complete!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public setTimeout(ILandroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
