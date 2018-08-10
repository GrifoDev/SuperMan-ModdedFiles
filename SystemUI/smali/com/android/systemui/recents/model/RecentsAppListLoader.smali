.class public Lcom/android/systemui/recents/model/RecentsAppListLoader;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsAppListLoader$1;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$2;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$3;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$4;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$5;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;
    }
.end annotation


# static fields
.field public static MAX_RECOMMENDATION_APPS_COUNT:I

.field public static SIZE_ICON_CACHE:I

.field public static mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
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

.field public static mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
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
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private EXECUTE_COUNT_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mApplicationContext:Landroid/content/Context;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBuildAppInfosRunnable:Ljava/lang/Runnable;

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

.field mIconHelper:Landroid/content/pm/PackageIconHelper;

.field private mIsPreloading:Z

.field private mKioskId:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

.field mPm:Landroid/content/pm/PackageManager;

.field private mPreloadDataRunnable:Ljava/lang/Runnable;

.field private mPreloadLock:Ljava/lang/Object;

.field mRecommendationAppCount:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;

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
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_RECOMMENDATION_APPS_COUNT:I

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

    iput v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    iput-boolean v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_RECOMMENDATION_APPS_COUNT:I

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

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/content/pm/PackageIconHelper;->getInstance()Landroid/content/pm/PackageIconHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    return-void
.end method

.method private addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_1

    :cond_0
    return-object v8

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v5, v6, p2, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemIconWidth:I

    if-ge v5, v6, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->isLiveIcon(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemIconDpi:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10d0000

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
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

.method private isLiveIcon(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageIconHelper;->supportLiveIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private removeDrawableCache(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildAppInfos()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearDrawableCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public getAppInfos(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sortAppInfoList(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

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

.method public getRecommendationAppCount()I
    .locals 3

    const-string/jumbo v0, "RecentsAppListLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFrequentlyUsedAppCount - count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    return v0
.end method

.method public isPreloaded()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public loadAppInfoData(Lcom/android/systemui/recents/model/AppInfo;)V
    .locals 3

    iget-object v1, p1, Lcom/android/systemui/recents/model/AppInfo;->key:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/model/AppInfo;->notifyDataLoaded(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;Lcom/android/systemui/recents/model/AppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IconChangedEvent;)V
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
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sortAppInfoList(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_RECOMMENDATION_APPS_COUNT:I

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/AppInfo;

    iget v3, v0, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    if-nez v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return v1

    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/recents/model/AppInfo;->isDisabled(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/AppInfo;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v4
.end method
