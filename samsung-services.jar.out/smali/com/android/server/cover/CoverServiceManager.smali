.class Lcom/android/server/cover/CoverServiceManager;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverServiceManager$1;,
        Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;,
        Lcom/android/server/cover/CoverServiceManager$H;,
        Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;,
        Lcom/android/server/cover/CoverServiceManager$SViewCoverBaseServiceInfo;,
        Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;
    }
.end annotation


# static fields
.field private static final ACTION_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.cover.CoverService"

.field private static final LED_COVER:Landroid/content/ComponentName;

.field private static final LED_COVER_CLASS:Ljava/lang/String; = "com.sec.android.cover.ledcover.LedCoverService"

.field private static final LED_COVER_PACKAGE:Ljava/lang/String; = "com.sec.android.cover.ledcover"

.field private static final MAX_BIND_HISTORY:I = 0xa

.field private static final META_DATA_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.cover.service"

.field private static final PERMISSION_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.BIND_COVER_SERVICE"

.field private static final SYSTEM_UI_COVER:Landroid/content/ComponentName;

.field private static final SYSTEM_UI_COVER_CLASS:Ljava/lang/String; = "com.android.systemui.cover.SViewCoverService"

.field private static final SYSTEM_UI_COVER_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBindHistory:[Ljava/lang/String;

.field private mBindHistoryIdx:I

.field private final mBindingTimestamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mCoverServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverStateProvider:Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

.field private mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/cover/CoverServiceManager$H;

.field private mIsUserSwitching:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRegisterBroadcast:Z

.field private mWakeLockRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/CoverServiceManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/CoverServiceManager;)Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/CoverServiceManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cover/CoverServiceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/cover/CoverServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cover/CoverServiceManager;->mIsUserSwitching:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverServiceManager;IZZ)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->addCoverService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/cover/CoverServiceManager;Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->containsBindingServiceLocked(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/CoverServiceManager;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->updateCoverService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->findCoverServiceByComponentLocked(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->addBindingServiceLocked(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/CoverServiceManager;Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/cover/CoverServiceManager;Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->reconnectCoverService(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sec.android.cover.ledcover"

    const-string/jumbo v2, "com.sec.android.cover.ledcover.LedCoverService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.cover.SViewCoverService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    iput v3, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    iput-boolean v3, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    new-instance v0, Lcom/android/server/cover/CoverServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverServiceManager$1;-><init>(Lcom/android/server/cover/CoverServiceManager;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/cover/CoverServiceManager$OnCoverStateProvider;

    new-instance v0, Lcom/android/server/cover/CoverServiceManager$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/cover/CoverServiceManager$H;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "CoverServiceManager"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->queryInstalledCoverServices()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    return-void
.end method

.method private addBindingServiceLocked(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addCoverService(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    sget-object v8, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "addCoverService : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.cover.CoverService"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v9

    return v11

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    :try_start_1
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v8, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-nez v1, :cond_1

    iget-object v10, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v10, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addCoverService : Cover Type("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") is already added"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_2
    monitor-exit v9

    return v6
.end method

.method private bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "bindCoverServiceLocked : component is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->containsBindingServiceLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v6

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    new-instance v0, Lcom/android/server/cover/CoverServiceManager$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/cover/CoverServiceManager$2;-><init>(Lcom/android/server/cover/CoverServiceManager;I)V

    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindCoverServiceLocked : type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    const v4, 0x1000005

    invoke-virtual {v3, v2, v0, v4, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->addBindingServiceLocked(Landroid/content/ComponentName;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "binding:cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method

.method private containsBindingServiceLocked(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
    .locals 3

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private findCoverServiceByComponentLocked(Landroid/content/ComponentName;)I
    .locals 4

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    return v3
.end method

.method private getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;
    .locals 3

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    return-object v0

    :sswitch_0
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->refreshCoverServicesLocked()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object v0

    :sswitch_0
    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPredefinedCoverServiceNameLocked : return because of nfc smart cover supporting nfc authentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method private getSystemUICoverService(I)Landroid/content/ComponentName;
    .locals 2

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getSystemUICoverService : return because of nfc smart cover supporting nfc authentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object v0
.end method

.method private getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.android.permission.BIND_COVER_SERVICE"

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") has no permission"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") has no meta data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "com.samsung.android.cover.service"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") has wrong cover type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") of service("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") is duplicated  with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    sget-boolean v7, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVerifiedCoverService : component: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    return-object v5
.end method

.method private handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/cover/CoverServiceManager$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v2, Lcom/android/server/cover/CoverServiceManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverServiceManager$3;-><init>(Lcom/android/server/cover/CoverServiceManager;)V

    iput-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/cover/CoverServiceManager$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isShouldNotBindCoverService(IZ)Z
    .locals 4

    const/4 v3, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShouldNotBindCoverService : not support cover type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isShouldNotBindCoverService : return because of test mode for nfc smart cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isShouldRebindCoverServiceLocked(Lcom/samsung/android/cover/CoverState;Landroid/content/ComponentName;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/cover/CoverServiceManager;->isShouldNotBindCoverService(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method private queryInstalledCoverServices()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.cover.CoverService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private queryIntentService(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v0, 0xc0084

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private reconnectCoverService(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverServiceManager$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    invoke-static {v1, v3, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/CoverServiceManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private refreshCoverServicesLocked()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->queryInstalledCoverServices()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerBroadcastReceiver(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    if-nez v0, :cond_0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    :cond_0
    return-void
.end method

.method private removeAllCoverServiceLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private removeBindingServiceLocked(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    return-void
.end method

.method private toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x6

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private unbindCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unbindCoverServiceLocked : info is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get1(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding:cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get2(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " could not be unbound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/CoverServiceManager;->mRegisterBroadcast:Z

    :cond_0
    return-void
.end method

.method private updateBindHistoryLocked(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    array-length v1, v2

    iget v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    aput-object v0, v2, v3

    :cond_0
    iget v2, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-lt v2, v1, :cond_1

    iput v5, p0, Lcom/android/server/cover/CoverServiceManager;->mBindHistoryIdx:I

    :cond_1
    return-void
.end method

.method private updateCoverService(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    sget-object v5, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.cover.CoverService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v6

    return v8

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :cond_2
    monitor-exit v6

    return v8

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static verifySystemFeature(Landroid/content/Context;I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    return v0

    :sswitch_1
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v0

    return v0

    :sswitch_2
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    return v0

    :sswitch_3
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    return v0

    :sswitch_4
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    return v0

    :sswitch_5
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNfcLedCover()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_5
        0x8 -> :sswitch_1
        0xb -> :sswitch_4
        0x64 -> :sswitch_0
        0xff -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method bindCoverService(IZ)V
    .locals 6

    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindCoverService : type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverServiceManager;->isShouldNotBindCoverService(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverServiceManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverServiceManager;->getSystemUICoverService(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    monitor-exit v4

    return-void

    :cond_5
    :try_start_2
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    if-eqz v9, :cond_0

    const-string/jumbo v9, " Cover Services: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v9, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v9, " Active Cover Service: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v12

    throw v9

    :cond_1
    :try_start_1
    const-string/jumbo v9, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v9, " Binding Cover Service: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v13, " : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v10, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v13, "ms ago"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string/jumbo v9, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v9, " Bind history:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v14, v13

    :goto_3
    if-ge v9, v14, :cond_4

    aget-object v5, v13, v9

    if-eqz v5, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v9, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    return-void
.end method

.method isBindingCoverService()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method onCoverAppStateChanged(Z)I
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    sget-object v3, Lcom/android/server/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->-get0(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    monitor-exit v4

    return v2
.end method

.method switchCoverService(II)V
    .locals 5

    sget-object v2, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchCoverService : type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/cover/CoverServiceManager;->mIsUserSwitching:Z

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method unbindActiveCoverService(I)V
    .locals 5

    sget-object v2, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbindActiveCoverService : type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)V

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method unbindCoverService(I)V
    .locals 5

    sget-object v2, Lcom/android/server/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbindCoverService : type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->removeAllCoverServiceLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    invoke-direct {p0}, Lcom/android/server/cover/CoverServiceManager;->unregisterBroadcastReceiver()V

    return-void
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/cover/CoverServiceManager;->isShouldRebindCoverServiceLocked(Lcom/samsung/android/cover/CoverState;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {p0, v2, v6}, Lcom/android/server/cover/CoverServiceManager;->bindCoverService(IZ)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    iget-object v2, p0, Lcom/android/server/cover/CoverServiceManager;->mHandler:Lcom/android/server/cover/CoverServiceManager$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/cover/CoverServiceManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
