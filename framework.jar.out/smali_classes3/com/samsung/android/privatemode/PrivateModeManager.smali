.class public Lcom/samsung/android/privatemode/PrivateModeManager;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final CANCELLED:I = 0x3

.field private static final DEBUG:Z

.field public static final ERROR_INTERNAL:I = 0x15

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "PrivateMode Service is not running!"

.field public static final MOUNTED:I = 0x1

.field public static final PREPARED:I = 0x0

.field private static final PRIVATE_PATH:Ljava/lang/String; = "/storage/Private"

.field public static final PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field private static final TAG:Ljava/lang/String; = "PPS_PrivateModeManager"

.field public static final UNMOUNTED:I = 0x2

.field private static levelPrivatemode:I

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsServiceBind:Z

.field private static mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private static mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

.field private static sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;


# instance fields
.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/privatemode/IPrivateModeClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    return p0
.end method

.method static synthetic -set1(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/privatemode/PrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/privatemode/PrivateModeManager;->DEBUG:Z

    .line 88
    sput-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    .line 90
    sput-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    .line 92
    sput-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    .line 98
    sput-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 102
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/privatemode/PrivateModeManager;->levelPrivatemode:I

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 176
    sput-object p1, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->bindPrivateModeManager()V

    .line 174
    return-void
.end method

.method private declared-synchronized bindPrivateModeManager()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 182
    :try_start_0
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v1, :cond_0

    .line 183
    const-string/jumbo v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "bindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Lcom/samsung/android/privatemode/PrivateModeManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/privatemode/PrivateModeManager$2;-><init>(Lcom/samsung/android/privatemode/PrivateModeManager;)V

    iput-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.personalpage.service"

    const-string/jumbo v3, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string/jumbo v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "bindService: OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 181
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v1

    .line 129
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 130
    :cond_0
    :try_start_0
    const-string/jumbo v0, "PPS_PrivateModeManager"

    const-string/jumbo v2, "getInstance: context or client is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 131
    return-object v3

    .line 133
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.sec.feature.secretmode_service"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    const-string/jumbo v0, "PPS_PrivateModeManager"

    const-string/jumbo v2, "getInstance: Not support Private Mode"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 135
    return-object v3

    .line 138
    :cond_2
    :try_start_2
    sput-object p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    .line 139
    sput-object p1, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 141
    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    if-nez v0, :cond_4

    .line 142
    new-instance v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    .line 167
    :cond_3
    :goto_0
    const-string/jumbo v0, "PPS_PrivateModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 145
    :cond_4
    :try_start_3
    sget-boolean v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v0, :cond_5

    .line 146
    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 147
    sget-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/privatemode/PrivateModeManager$1;

    invoke-direct {v2}, Lcom/samsung/android/privatemode/PrivateModeManager$1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 164
    :cond_5
    :try_start_4
    new-instance v0, Lcom/samsung/android/privatemode/PrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/privatemode/PrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/PrivateModeManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/PrivateModeListener;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/samsung/android/privatemode/PrivateModeListener;

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    monitor-enter v1

    .line 119
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 120
    :cond_0
    :try_start_0
    const-string/jumbo v0, "PPS_PrivateModeManager"

    const-string/jumbo v2, "getInstance: context or listener is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 121
    return-object v3

    .line 123
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isKnoxMode(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 405
    const/4 v3, -0x1

    .line 408
    .local v3, "knoxVersion":I
    :try_start_0
    const-string/jumbo v5, "isKnoxMode"

    invoke-static {p0, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 410
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "true"

    const-string/jumbo v6, "isKnoxMode"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    const/4 v3, 0x2

    .line 419
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    const/4 v3, 0x1

    .line 423
    :cond_1
    if-lez v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string/jumbo v5, "PPS_PrivateModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not call getKnoxInfoForApp."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string/jumbo v5, "PPS_PrivateModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not call com.samsung.android.knox.SemPersonaManager;."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isM2PActivating()Z
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 392
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrivateMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 379
    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 380
    return v1

    .line 382
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isReady(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateModeReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-boolean v0, Lcom/samsung/android/privatemode/PrivateModeManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 252
    const-string/jumbo v1, "PPS_PrivateModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :goto_1
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_1
    const-string/jumbo v1, "PPS_PrivateModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private unBindPrivateModeManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    const-string/jumbo v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "unBindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_0
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 233
    const-string/jumbo v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "unbindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/PrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 235
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    .line 236
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unBindPrivateModeManager"

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 107
    const-string/jumbo v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "====== binderDied ====="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    const-string/jumbo v1, "PPS_PrivateModeManager"

    const-string/jumbo v2, "binderDied, onStateChange : ERROR_INTERNAL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v1, Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;
    .locals 5
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v4, 0x0

    .line 268
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v2, :cond_0

    .line 269
    const-string/jumbo v2, "registerClient"

    const-string/jumbo v3, "PrivateMode Service is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 270
    return-object v4

    .line 273
    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const-string/jumbo v2, "registerClient"

    const-string/jumbo v3, "Private Mode ON!!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 275
    return-object v4

    .line 278
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v1, "info":Landroid/os/Bundle;
    const-string/jumbo v2, "package_name"

    sget-object v3, Lcom/samsung/android/privatemode/PrivateModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/privatemode/IPrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 281
    .end local v1    # "info":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerClient"

    invoke-direct {p0, v2, v0, v4}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 284
    return-object v4
.end method

.method public registerClient(Lcom/samsung/android/privatemode/PrivateModeListener;)Landroid/os/IBinder;
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/privatemode/PrivateModeListener;

    .prologue
    const/4 v2, 0x0

    .line 259
    if-nez p1, :cond_0

    .line 260
    const-string/jumbo v0, "registerClient"

    const-string/jumbo v1, "listener is null"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 261
    return-object v2

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/privatemode/PrivateModeListener;->getClient()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 321
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v2, :cond_0

    .line 322
    const-string/jumbo v2, "unregisterClient"

    const-string/jumbo v3, "PrivateMode Service is not running!"

    invoke-direct {p0, v2, v5, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 323
    return v4

    .line 326
    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, "retVal":Z
    :try_start_0
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/privatemode/IPrivateModeManager;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v1

    .line 328
    .local v1, "retVal":Z
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2}, Lcom/samsung/android/privatemode/IPrivateModeManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 329
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->unBindPrivateModeManager()V

    .line 338
    :goto_0
    return v1

    .line 334
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    .line 335
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v1    # "retVal":Z
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterClient"

    invoke-direct {p0, v2, v0, v5}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 342
    return v4
.end method

.method public unregisterClient(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 292
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v2, :cond_0

    .line 293
    const-string/jumbo v2, "unregisterClient"

    const-string/jumbo v3, "PrivateMode Service is not running!"

    invoke-direct {p0, v2, v5, v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 294
    return v4

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 298
    .local v1, "retVal":Z
    :try_start_0
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/privatemode/IPrivateModeManager;->unRegisterClient(Landroid/os/IBinder;Z)Z

    move-result v1

    .line 299
    .local v1, "retVal":Z
    sget-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2}, Lcom/samsung/android/privatemode/IPrivateModeManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 300
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->unBindPrivateModeManager()V

    .line 309
    :goto_0
    return v1

    .line 305
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mIsServiceBind:Z

    .line 306
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/privatemode/PrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v1    # "retVal":Z
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterClient"

    invoke-direct {p0, v2, v0, v5}, Lcom/samsung/android/privatemode/PrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 313
    return v4
.end method
