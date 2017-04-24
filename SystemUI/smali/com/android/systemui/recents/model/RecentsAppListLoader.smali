.class public Lcom/android/systemui/recents/model/RecentsAppListLoader;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsAppListLoader$1;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$2;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$3;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    }
.end annotation


# static fields
.field public static MAX_FREQUENTLY_USED_APPS:I

.field public static SIZE_ICON_CACHE:I

.field public static mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mEmptyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mRawResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mResolveInfoFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# instance fields
.field COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private EXECUTE_COUNT_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mApplicationContext:Landroid/content/Context;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field mFreqAppCount:I

.field private mIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPreloaded:Z

.field private mKioskId:I

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/RecentsAppListLoader;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mKioskId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/model/RecentsAppListLoader;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mKioskId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->removeDrawableCache(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mResolveInfoFilterList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mEmptyList:Ljava/util/ArrayList;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_FREQUENTLY_USED_APPS:I

    const/16 v0, 0x28

    sput v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->SIZE_ICON_CACHE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mKioskId:I

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    iput v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    iput-boolean v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->initLruCache()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Recents-AppListLoader"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->register(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10d0000

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    return-object v0
.end method

.method private initLruCache()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->SIZE_ICON_CACHE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    return-void
.end method

.method private removeDrawableCache(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildAppInfos()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAppInfos(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sortAppInfoList()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFrequentlyUsedAppCount()I
    .locals 3

    const-string/jumbo v0, "RecentsAppListLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFrequentlyUsedAppCount - count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mFreqAppCount:I

    return v0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon(Lcom/android/systemui/recents/views/BaseAppListViewHolder;Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;Z)Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    .locals 4

    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;Lcom/android/systemui/recents/views/BaseAppListViewHolder;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IconTraySettingChangedEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public preload()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->buildAppInfos()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preloadData()V

    return-void
.end method

.method public preloadData()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloaded:Z

    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sortAppInfoList()I
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_FREQUENTLY_USED_APPS:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    iget v1, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->executeCount:I

    if-lez v1, :cond_0

    sget-object v2, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return v0

    :cond_2
    return v3
.end method