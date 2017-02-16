.class public Lcom/samsung/android/privatemode/SemPrivateModeManager;
.super Ljava/lang/Object;
.source "SemPrivateModeManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;
    }
.end annotation


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field private static final DEBUG:Z

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "PrivateMode Service is not running!"

.field private static final PRIVATE_PATH:Ljava/lang/String; = "/storage/Private"

.field public static final PROPERTY_KEY:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field public static final STATE_CANCELLED:I = 0x3

.field public static final STATE_ERROR_INTERNAL:I = 0x15

.field public static final STATE_MOUNTED:I = 0x1

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_NORMAL_TO_PRIVATE:I = 0x2

.field public static final STATE_PREPARED:I = 0x0

.field public static final STATE_PRIVATE:I = 0x1

.field public static final STATE_UNMOUNTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PPS_SemPrivateModeManager"

.field private static levelPrivatemode:I

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mIsServiceBind:Z

.field private static mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private static mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

.field private static sInstance:Lcom/samsung/android/privatemode/SemPrivateModeManager;


# instance fields
.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/privatemode/IPrivateModeClient;
    .locals 1

    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mIsServiceBind:Z

    return p0
.end method

.method static synthetic -set1(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/privatemode/SemPrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->DEBUG:Z

    .line 186
    sput-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    .line 194
    sput-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    .line 201
    sput-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mContext:Landroid/content/Context;

    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mIsServiceBind:Z

    .line 224
    sput-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 242
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->levelPrivatemode:I

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 365
    sput-object p1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mHandler:Landroid/os/Handler;

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->bindPrivateModeManager()V

    .line 363
    return-void
.end method

.method private declared-synchronized bindPrivateModeManager()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 376
    :try_start_0
    sget-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v1, :cond_0

    .line 377
    const-string/jumbo v1, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "bindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v1, Lcom/samsung/android/privatemode/SemPrivateModeManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager$3;-><init>(Lcom/samsung/android/privatemode/SemPrivateModeManager;)V

    iput-object v1, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.personalpage.service"

    const-string/jumbo v3, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 417
    sget-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const-string/jumbo v1, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "bindService: OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 375
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/SemPrivateModeManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;

    monitor-enter v1

    .line 313
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 314
    :cond_0
    :try_start_0
    const-string/jumbo v0, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "getInstance: context or client is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 315
    return-object v3

    .line 317
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.sec.feature.secretmode_service"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    const-string/jumbo v0, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "getInstance: Not support Private Mode"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 319
    return-object v3

    .line 322
    :cond_2
    :try_start_2
    sput-object p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mContext:Landroid/content/Context;

    .line 325
    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    if-nez v0, :cond_4

    .line 326
    new-instance v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/privatemode/SemPrivateModeManager;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    .line 351
    :cond_3
    :goto_0
    const-string/jumbo v0, "PPS_SemPrivateModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/privatemode/SemPrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/SemPrivateModeManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 329
    :cond_4
    :try_start_3
    sget-boolean v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mIsServiceBind:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v0, :cond_5

    .line 330
    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 331
    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/privatemode/SemPrivateModeManager$2;

    invoke-direct {v2}, Lcom/samsung/android/privatemode/SemPrivateModeManager$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 348
    :cond_5
    :try_start_4
    new-instance v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/privatemode/SemPrivateModeManager;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->sInstance:Lcom/samsung/android/privatemode/SemPrivateModeManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)Lcom/samsung/android/privatemode/SemPrivateModeManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;

    monitor-enter v1

    .line 287
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 288
    :cond_0
    :try_start_0
    const-string/jumbo v0, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "getInstance: context or listener is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 289
    return-object v3

    .line 292
    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/android/privatemode/SemPrivateModeManager$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/privatemode/SemPrivateModeManager$1;-><init>(Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)V

    sput-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 299
    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-static {p0, v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/SemPrivateModeManager;
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

.method public static getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 604
    const-string/jumbo v0, "/storage/Private"

    return-object v0
.end method

.method public static getState()I
    .locals 5

    .prologue
    .line 663
    const/4 v1, 0x0

    .line 666
    .local v1, "ret":I
    const-string/jumbo v2, "sys.samsung.personalpage.mode"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    const/4 v1, 0x1

    .line 677
    :cond_0
    :goto_0
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getState(ret) :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return v1

    .line 670
    :cond_1
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    const/4 v1, 0x2

    goto :goto_0

    .line 672
    :cond_2
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isKnoxMode(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 688
    const/4 v3, -0x1

    .line 691
    .local v3, "knoxVersion":I
    :try_start_0
    const-string/jumbo v5, "isKnoxMode"

    invoke-static {p0, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 693
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

    .line 694
    const/4 v3, 0x2

    .line 702
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    const/4 v3, 0x1

    .line 706
    :cond_1
    const-string/jumbo v5, "PPS_SemPrivateModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKnoxMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    if-lez v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string/jumbo v5, "PPS_SemPrivateModeManager"

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

    .line 696
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v1

    .line 697
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string/jumbo v5, "PPS_SemPrivateModeManager"

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

.method public static isPrivateModeReady(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 550
    sget v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->levelPrivatemode:I

    if-gez v2, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.secretmode_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->levelPrivatemode:I

    .line 552
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isReady: getSystemFeatureLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/privatemode/SemPrivateModeManager;->levelPrivatemode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isReady: levelPrivatemode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/privatemode/SemPrivateModeManager;->levelPrivatemode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 559
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 560
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    const-string/jumbo v3, "isReady: AFW_CL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v5

    .line 563
    :cond_1
    sget v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->levelPrivatemode:I

    if-le v2, v6, :cond_7

    .line 564
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 565
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    const-string/jumbo v3, "isReady: private mode does not support in KNOX mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return v5

    .line 568
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    const-string/jumbo v3, "isReady: private mode does not support in Emergency(UltraPowerSaving, Emergency) mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v5

    .line 573
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 574
    .local v0, "lockType":I
    if-nez v0, :cond_4

    .line 575
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    const-string/jumbo v3, "isReady: Has no locktype"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v5

    .line 578
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    const-string/jumbo v3, "isReady: Current User is not Owner User(guest mode)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v5

    .line 583
    :cond_5
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 584
    const-string/jumbo v2, "PPS_SemPrivateModeManager"

    const-string/jumbo v3, "isReady: AFW_BYOD"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return v5

    .line 587
    :cond_6
    return v6

    .line 589
    .end local v0    # "lockType":I
    :cond_7
    return v5
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 615
    const/4 v1, 0x0

    .line 617
    .local v1, "isMouted":Z
    if-nez p0, :cond_0

    .line 618
    const-string/jumbo v4, "PPS_SemPrivateModeManager"

    const-string/jumbo v5, "isPrivateStorageMounted: context is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v7

    .line 622
    :cond_0
    const-string/jumbo v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 624
    .local v2, "mStorageMgr":Landroid/os/storage/StorageManager;
    sget-boolean v4, Lcom/samsung/android/privatemode/SemPrivateModeManager;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 625
    const-string/jumbo v4, "PPS_SemPrivateModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPrivateStorageMounted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 629
    const-string/jumbo v4, "PPS_SemPrivateModeManager"

    const-string/jumbo v5, "isKnoxMode : return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return v7

    .line 633
    :cond_2
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "sys.samsung.personalpage.mode"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    const-string/jumbo v4, "PPS_SemPrivateModeManager"

    const-string/jumbo v5, "PROPERTY_KEY_PRIVATE_MODE[0] : return false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v7

    .line 638
    :cond_3
    if-eqz v2, :cond_4

    .line 640
    :try_start_0
    const-string/jumbo v4, "/storage/Private"

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v4, "PPS_SemPrivateModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVolumeState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    .line 643
    const/4 v1, 0x1

    .line 649
    .end local v3    # "status":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 451
    sget-boolean v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 452
    const-string/jumbo v1, "PPS_SemPrivateModeManager"

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

    .line 450
    :goto_1
    return-void

    .line 452
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

    .line 454
    :cond_1
    const-string/jumbo v1, "PPS_SemPrivateModeManager"

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

    .line 429
    const-string/jumbo v1, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "unBindPrivateModeManager called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :try_start_0
    sget-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 432
    const-string/jumbo v1, "PPS_SemPrivateModeManager"

    const-string/jumbo v2, "unbindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sget-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 434
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mIsServiceBind:Z

    .line 435
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unBindPrivateModeManager"

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public registerListener(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;
    .locals 5
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v4, 0x0

    .line 484
    sget-object v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v2, :cond_0

    .line 485
    const-string/jumbo v2, "registerClient"

    const-string/jumbo v3, "PrivateMode Service is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 486
    return-object v4

    .line 489
    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 490
    const-string/jumbo v2, "registerClient"

    const-string/jumbo v3, "Private Mode ON!!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 491
    return-object v4

    .line 494
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v1, "info":Landroid/os/Bundle;
    const-string/jumbo v2, "package_name"

    sget-object v3, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/privatemode/IPrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 497
    .end local v1    # "info":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerClient"

    invoke-direct {p0, v2, v0, v4}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 500
    return-object v4
.end method

.method public registerListener(Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)Landroid/os/IBinder;
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

    .prologue
    const/4 v2, 0x0

    .line 467
    if-nez p1, :cond_0

    .line 468
    const-string/jumbo v0, "registerClient"

    const-string/jumbo v1, "listener is null"

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 469
    return-object v2

    .line 472
    :cond_0
    sget-object v0, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-virtual {p0, v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->registerListener(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 515
    sget-object v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-nez v2, :cond_0

    .line 516
    const-string/jumbo v2, "unregisterListener"

    const-string/jumbo v3, "PrivateMode Service is not running!"

    invoke-direct {p0, v2, v5, v3}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 517
    return v4

    .line 520
    :cond_0
    const/4 v1, 0x0

    .line 521
    .local v1, "retVal":Z
    :try_start_0
    sget-object v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/privatemode/IPrivateModeManager;->unRegisterClient(Landroid/os/IBinder;Z)Z

    move-result v1

    .line 522
    .local v1, "retVal":Z
    sget-object v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;

    invoke-interface {v2}, Lcom/samsung/android/privatemode/IPrivateModeManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 523
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mIsServiceBind:Z

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->unBindPrivateModeManager()V

    .line 532
    :goto_0
    return v1

    .line 528
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mIsServiceBind:Z

    .line 529
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/privatemode/SemPrivateModeManager;->mService:Lcom/samsung/android/privatemode/IPrivateModeManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    .end local v1    # "retVal":Z
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterListener"

    invoke-direct {p0, v2, v0, v5}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 536
    return v4
.end method
