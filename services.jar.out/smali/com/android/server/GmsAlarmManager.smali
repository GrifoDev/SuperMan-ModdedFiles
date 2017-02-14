.class public Lcom/android/server/GmsAlarmManager;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$1;,
        Lcom/android/server/GmsAlarmManager$GmsHandler;,
        Lcom/android/server/GmsAlarmManager$NetworkReceiver;,
        Lcom/android/server/GmsAlarmManager$ScreenReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_check_gms_network"

.field private static final CHINA_MODE:Ljava/lang/String; = "China"

.field private static final CONFIGUPDATER_PKG:Ljava/lang/String; = "com.google.android.configupdater"

.field private static final GMS_PKG:Ljava/lang/String; = "com.google.android.gms"

.field private static final MSG_CHECK_NETWORK:I = 0x1

.field private static final MSG_DISABLE_GMS_NETWORK:I = 0x2

.field private static final MSG_ENABLE_GMS_NETWORK:I = 0x3

.field private static final PLAY_STORE_PKG:Ljava/lang/String; = "com.android.vending"

.field private static final TAG:Ljava/lang/String; = "GmsAlarmManager"

.field private static final TIME_DELAY:J = 0xea60L

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private isChinaMode:Z

.field private isGmsNetWorkLimt:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConfigupdaterUid:I

.field private mContext:Landroid/content/Context;

.field private mGmsPkgUid:I

.field private mGoogleNetWork:Z

.field private mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mScreenOffChange:Z

.field private mScreenOn:Z

.field private mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

.field private mVendingUid:I

.field private mWaitCheckNetWork:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/GmsAlarmManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/GmsAlarmManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/GmsAlarmManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/GmsAlarmManager;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChnSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->cancelAlarm()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/GmsAlarmManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v7, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    iput v7, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    iput v7, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    iput-boolean v8, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v8, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    iput-boolean v6, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    iput-boolean v6, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    iput-boolean v6, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    iput-boolean v8, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v3, Lcom/android/server/GmsAlarmManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/GmsAlarmManager$1;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const-string/jumbo v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    const-string/jumbo v3, "com.google.android.configupdater"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    const-string/jumbo v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GMS_PACKAGE_UID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    if-eq v3, v7, :cond_0

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "GmsAlarmManager"

    invoke-direct {v3, v4, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v3, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/GmsAlarmManager$GmsHandler;

    sget-object v4, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    new-instance v3, Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    new-instance v3, Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.samsung.android.server.action_check_gms_network"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v6, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.server.action_check_gms_network"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NameNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private checkActiveNet()Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkGoogleNetwork(Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkGoogleNetwork :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/16 v5, 0xbb8

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v5, 0xbb8

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v5, "HEAD"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string/jumbo v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkGoogleNetwork :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x9d0c

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return v5

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_0
    return v8

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v5
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private isChn()Z
    .locals 2

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isChnSim()Z
    .locals 5

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccid ---- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string/jumbo v2, "8986"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "8985"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private sendCheckNetWorkDelay()V
    .locals 6

    const-string/jumbo v0, "GmsAlarmManager"

    const-string/jumbo v1, "send check network delay message"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    :cond_1
    return-void
.end method

.method private setGmsNetWorkAllow(Z)V
    .locals 5

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGmsNetworkAllow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "GmsAlarmManager"

    const-string/jumbo v3, "failed to get NetworkManagementService instance"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public doDump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "  <GmsAlarmManager>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isChinaMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGmsPkgUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVendingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConfigupdaterUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWaitCheckNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoogleNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGmsNetWorkLimt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOffChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isGmsAlarm(Landroid/app/PendingIntent;)Z
    .locals 2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.vending"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.android.configupdater"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method maxTriggerTime(JJJ)J
    .locals 7

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    sub-long v0, p3, p1

    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p3

    return-wide v2

    :cond_1
    move-wide v0, p5

    goto :goto_0
.end method

.method public schedulingGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/GmsAlarmManager;->isGmsAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v0, :cond_5

    const-string/jumbo v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "schedulingGmsAlarms:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    move-wide v12, v8

    :goto_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v0, v12

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    return-void

    :cond_3
    move-wide v12, v2

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, v8

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :goto_1
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    iget-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    :goto_2
    iput-wide v10, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    :cond_5
    return-void

    :cond_6
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_1

    :cond_7
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v10, v0, v4

    goto :goto_2

    :cond_8
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/GmsAlarmManager;->maxTriggerTime(JJJ)J

    move-result-wide v10

    goto :goto_2
.end method

.method public skipGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/GmsAlarmManager;->isGmsAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipGmsAlarms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method
