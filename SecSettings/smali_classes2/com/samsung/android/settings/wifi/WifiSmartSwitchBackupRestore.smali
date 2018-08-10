.class public Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiSmartSwitchBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field static final actionStrings:[Ljava/lang/String;

.field static mIsCanceled:Z

.field private static final mPermissions:[Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field isIgnoreSupportFeature:Z

.field mExportSessionTime:Ljava/lang/String;

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;

.field xmlNewConf:Ljava/lang/String;

.field xmlOldConf:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "START"

    aput-object v1, v0, v2

    const-string/jumbo v1, "FINISH"

    aput-object v1, v0, v3

    const-string/jumbo v1, "CANCEL"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "SOURCE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ACTION"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    if-eqz v4, :cond_0

    const-string/jumbo v5, "GearHostManager"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    sput-boolean v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    sput-boolean v7, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    const-string/jumbo v5, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "WifiSmartSwitchBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request backup - isIgnoreSupportFeature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v5, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WifiSmartSwitchBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request restore - isIgnoreSupportFeature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->isIgnoreSupportFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
