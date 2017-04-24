.class public Lcom/samsung/android/settings/wifi/WifiBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field static mIsCanceled:Z

.field private static final mPermissions:[Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field isIgnoreSupportFeature:Z

.field mExportSessionTime:Ljava/lang/String;

.field mOption:I

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field mWifiEnabledForSCloud:Z

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiBackupRestore;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->salt:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

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

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mPermissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    return-void
.end method


# virtual methods
.method CheckWifiState(Landroid/content/Context;)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiEnabledForSCloud:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    if-nez v1, :cond_2

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v3, "WifiBackupRestore"

    const-string/jumbo v4, ">>>>> WIFI ON <<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v6

    :cond_3
    const-string/jumbo v3, "WifiBackupRestore"

    const-string/jumbo v4, ">>>>> Failed to WIFI ON <<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    return v7
.end method

.method RestoreWifiState(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiEnabledForSCloud:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    return-void
.end method

.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 16

    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "backup "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    const-string/jumbo v12, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "There is no conf file"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->CheckWifiState(Landroid/content/Context;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Could not enable Wi-Fi"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :cond_1
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    const/16 v12, 0x3d

    iput v12, v10, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "OPTION"

    const/4 v13, 0x2

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "PATH"

    const-string/jumbo v13, "/data/misc/wifi/temp.conf"

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "IGNORE_SUPPORT_FEATURE"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Cloud BACK UP !!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    const-string/jumbo v12, "/data/misc/wifi/temp.conf"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    new-instance v13, Lcom/samsung/android/settings/wifi/WifiBackupRestore$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v12, v14, v15, v9, v13}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    :goto_0
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v12, 0x105

    iput v12, v7, Landroid/os/Message;->what:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "PATH"

    const-string/jumbo v13, "/data/misc/wifi/temp.conf"

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Delete temp.conf file successful."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    return-void

    :cond_2
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Failed to write networks"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "err"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    return-void

    :cond_3
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "There are no networks to write"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v12, "WifiBackupRestore"

    const-string/jumbo v13, "Failed to delete temp.conf file"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b1227

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

    const v1, 0x7f0b1227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "SOURCE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ACTION"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    if-eqz v3, :cond_0

    const-string/jumbo v4, "GearHostManager"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    sput-boolean v5, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    sput-boolean v6, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    const-string/jumbo v4, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request backup - isIgnoreSupportFeature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v4, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WifiBackupRestore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request restore - isIgnoreSupportFeature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 15

    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "restore "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->CheckWifiState(Landroid/content/Context;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Could not enable Wi-Fi"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :cond_0
    new-instance v9, Ljava/io/File;

    const-string/jumbo v11, "/data/misc/wifi_share_profile/temp.conf"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/samsung/android/settings/wifi/WifiBackupRestore$2;

    move-object/from16 v0, p3

    invoke-direct {v14, p0, v0}, Lcom/samsung/android/settings/wifi/WifiBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/WifiBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v7, v12, v13, v11, v14}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v11, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "restore - complete! "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    const-string/jumbo v11, "/data/misc/wifi_share_profile/temp.conf"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/16 v11, 0x3d

    iput v11, v8, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "OPTION"

    const/4 v12, 0x3

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "PATH"

    const-string/jumbo v12, "/data/misc/wifi_share_profile/temp.conf"

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "IGNORE_SUPPORT_FEATURE"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "RESTORE - success"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v11, 0x105

    iput v11, v4, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "PATH"

    const-string/jumbo v12, "/data/misc/wifi_share_profile/temp.conf"

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Delete temp.conf file successful."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v5

    goto/16 :goto_0

    :catch_1
    move-exception v5

    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-void

    :catch_2
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v11

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v11

    :catch_3
    move-exception v5

    goto :goto_3

    :cond_4
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Failed to read networks"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/WifiBackupRestore;->RestoreWifiState(Landroid/content/Context;)V

    return-void

    :cond_5
    const-string/jumbo v11, "WifiBackupRestore"

    const-string/jumbo v12, "Failed to delete temp.conf file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
