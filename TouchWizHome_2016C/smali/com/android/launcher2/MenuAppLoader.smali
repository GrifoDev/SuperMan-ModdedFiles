.class public Lcom/android/launcher2/MenuAppLoader;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppLoader$BindListener;,
        Lcom/android/launcher2/MenuAppLoader$AppInfo;,
        Lcom/android/launcher2/MenuAppLoader$LoadJob;,
        Lcom/android/launcher2/MenuAppLoader$JobListener;,
        Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final DEBUG_LOADER:Z = true

.field private static final DEFAULT_APP_COUNT:I = 0x32

.field private static final DEFAULT_FOLDER_COUNT:I = 0xa

.field private static final GOOGLE_VOICE_SEARCH:Landroid/content/ComponentName;

.field private static final NEW_APP_DETECTING_TRESHOLD:I = 0x9c4

.field private static final PREFERRED_REFRESH_DISTANCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MenuAppLoader"

.field private static final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsLoaded:Z

.field public static nonUninstallableApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static nonUninstallableWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAbortLoader:Z

.field private mAllItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private mFolderLock:Lcom/android/launcher2/FolderLock;

.field private mHandler:Landroid/os/Handler;

.field private final mIsSafeMode:Z

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private mLoadJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/MenuAppLoader$LoadJob;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/utils/common/Future",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

.field private mTitleIconInfoPool:Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.agoda.mobile.consumer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.bombshells_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.izsoft.canimalsabc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.contractkiller2_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.NamcoBandaiGames.DoodleFit2.Samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.dragonslayer_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.oceanhouse_media.booklcjustmeandmymomlite_app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.moleskine.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.pdfreaderpro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "air.com.adobe.pstouch.oem1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.namcobandaigames.rocketfox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.sesame.apps.elmocalls.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ea.tetrisfree_na"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.fuzzypeach.worldfactbook_tab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ikonet.vhb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.virtualofficepro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "kr.co.rightbrain.RetailMode.Galaxy_TAB3_8_DCT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->GOOGLE_VOICE_SEARCH:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;-><init>(Lcom/android/launcher2/MenuAppLoader$1;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mTitleIconInfoPool:Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getThreadPool()Lcom/android/launcher2/utils/common/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mFolderLock:Lcom/android/launcher2/FolderLock;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    const-string v0, "MenuAppLoader"

    const-string v1, "MenuAppLoader mPkgMgr null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static IsLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/MenuAppLoader;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/MenuAppLoader;->mIsLoaded:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuAppLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuAppLoader;Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    return-void
.end method

.method private cancelAllJobs()V
    .locals 4

    const-string v1, "MenuAppLoader"

    const-string v2, "cancel loading Jobs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/utils/common/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/launcher2/utils/common/Future;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private createApp(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/AppItem;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppLoader;->createApp(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/MenuAppLoader$AppInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method private createApp(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/MenuAppLoader$AppInfo;)Lcom/android/launcher2/AppItem;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/MenuAppLoader;->createApp(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/MenuAppLoader$AppInfo;Lcom/android/launcher2/MenuView$ViewType;)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method private createApp(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/MenuAppLoader$AppInfo;Lcom/android/launcher2/MenuView$ViewType;)Lcom/android/launcher2/AppItem;
    .locals 22

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p2

    invoke-direct {v5, v11, v0}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    const/16 v16, 0x1

    :goto_0
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SM-T310X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v16, 0x1

    :cond_0
    new-instance v6, Lcom/android/launcher2/AppItem;

    move/from16 v0, v16

    invoke-direct {v6, v11, v0}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/android/launcher2/AppItem;->mDirty:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p2

    invoke-virtual {v4, v11, v0}, Lcom/android/launcher2/PkgResCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    if-eqz p3, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->screen:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->cell:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    move-object/from16 v0, p4

    if-ne v0, v4, :cond_2

    :cond_1
    sget v4, Lcom/android/launcher2/PkgResCache;->LOAD_TITLE:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v6, v1, v2, v4}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    const/4 v13, 0x1

    :cond_2
    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->hidden:Z

    iput-boolean v4, v6, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v13, :cond_8

    sget v9, Lcom/android/launcher2/PkgResCache;->LOAD_ICON:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v4, Lcom/android/launcher2/MenuAppLoader$LoadJob;

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->urgent:Z

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher2/MenuAppLoader$LoadJob;-><init>(Lcom/android/launcher2/MenuAppLoader;Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;IZ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    iget-boolean v4, v6, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iget-wide v4, v6, Lcom/android/launcher2/AppItem;->mCreateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x9c4

    sub-long v18, v18, v20

    cmp-long v4, v4, v18

    if-lez v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/android/launcher2/AppItem;->setNeetToIconVI(Z)V

    :cond_4
    sget-boolean v4, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_5

    const-string v4, "MenuAppLoader"

    const-string v5, "createApp package(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v6, :cond_6

    monitor-enter p0

    :try_start_1
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    iget-object v7, v6, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-direct {v5, v7, v0}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    return-object v6

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_8
    sget v9, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_9
    sget v4, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v6, v1, v2, v4}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v4

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/AppFolderingSpr;->getFolderIdIfAvail(Ljava/lang/String;Lcom/android/launcher2/AppItem;)J

    move-result-wide v14

    const-wide/16 v4, -0x1

    cmp-long v4, v14, v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12, v6}, Lcom/android/launcher2/AppFolderItem;->loadItem(Lcom/android/launcher2/AppItem;)V

    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/customer/TMO;->supportHomeFolderAdapt()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/customer/TMO;->getAppsFolderID()J

    move-result-wide v14

    const-wide/16 v4, -0x1

    cmp-long v4, v14, v4

    if-lez v4, :cond_3

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v4

    invoke-virtual {v6}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/customer/TMO;->isInstalledByTmobile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "MenuAppLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add to TMO folder:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "item:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual {v12, v6}, Lcom/android/launcher2/AppFolderItem;->loadItem(Lcom/android/launcher2/AppItem;)V

    goto/16 :goto_2

    :cond_b
    const/4 v4, -0x1

    iput v4, v6, Lcom/android/launcher2/AppItem;->mScreen:I

    const/4 v4, -0x1

    iput v4, v6, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_3

    :cond_c
    const/4 v4, -0x1

    iput v4, v6, Lcom/android/launcher2/AppItem;->mScreen:I

    const/4 v4, -0x1

    iput v4, v6, Lcom/android/launcher2/AppItem;->mCell:I

    goto/16 :goto_2

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method private createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .locals 4

    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    :goto_0
    iget-wide v2, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v2, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v1, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget v1, p1, Lcom/android/launcher2/AppItem;->mColor:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v2, v1, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_1
    iput-wide v2, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getApps()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/launcher2/MenuAppLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    if-nez v1, :cond_2

    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    iput-wide p1, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mFolderLock:Lcom/android/launcher2/FolderLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mFolderLock:Lcom/android/launcher2/FolderLock;

    const-string v3, "menu_locked_items"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/AppFolderItem;->setIsLockFolder(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mFolderLock:Lcom/android/launcher2/FolderLock;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/FolderLock;->lockFolder(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    iput-boolean v4, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/AppFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    goto :goto_0
.end method

.method private isInPreferredRange(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshItems(Ljava/util/ArrayList;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Lcom/android/launcher2/PkgResCache$TitleIconInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-boolean v7, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->isPromise()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_3
    iget-object v7, v1, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v7, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v2, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v8, v1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v7, v8, p2, v9}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v7}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v1, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_1
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v7, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move v0, v4

    :goto_2
    if-eqz v0, :cond_4

    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v7, 0x2

    iput v7, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v8, v1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v8, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v7, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v7, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p2}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->reset()V

    goto :goto_0

    :cond_5
    iget-object v7, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v7, v1, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    iget-object v7, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_8

    move v0, v4

    :goto_3
    goto :goto_2

    :cond_8
    move v0, v5

    goto :goto_3
.end method

.method private setBadgeCount(Lcom/android/launcher2/AppItem;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    new-instance v1, Lcom/android/launcher2/BadgeCache$CacheKey;

    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher2/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Lcom/android/launcher2/BadgeCache$CacheKey;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    return-void
.end method

.method private setTitleAndIcon(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mTitleIconInfoPool:Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->get()Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2, v0, p2, v1, p4}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;I)V

    sget v2, Lcom/android/launcher2/PkgResCache;->LOAD_ICON:I

    and-int/2addr v2, p4

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    iput-object v2, p1, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_0
    sget v2, Lcom/android/launcher2/PkgResCache;->LOAD_TITLE:I

    and-int/2addr v2, p4

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mTitleIconInfoPool:Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->recycle(Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    return-void

    :cond_2
    iget-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method private submitTask(ZLcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/launcher2/utils/common/ThreadPool$Job",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Lcom/android/launcher2/utils/common/FutureListener",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher2/utils/common/ThreadPool;->submitUrgent(Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)Lcom/android/launcher2/utils/common/Future;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/android/launcher2/utils/common/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->mLoadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher2/utils/common/ThreadPool;->submit(Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)Lcom/android/launcher2/utils/common/Future;

    move-result-object v0

    goto :goto_0
.end method

.method private updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;IILcom/android/launcher2/compat/UserHandleCompat;Ljava/util/List;Landroid/content/ContentResolver;Z)Lcom/android/launcher2/AppItem;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "JJIIZ",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Z)",
            "Lcom/android/launcher2/AppItem;"
        }
    .end annotation

    const/16 v20, 0x0

    if-eqz p1, :cond_e

    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/launcher2/AppItem;

    move-object/from16 v20, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v20, :cond_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p15, :cond_3

    const-string v4, "MenuAppLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SdCard not Ready-Invalid package: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " (check again later)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getLauncherModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p12

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher2/LauncherModel;->putPendingPackages(Lcom/android/launcher2/compat/UserHandleCompat;Ljava/lang/String;)V

    new-instance v21, Lcom/android/launcher2/AppItem;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v22

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    move-object/from16 v0, p9

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move/from16 v0, p10

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/AppItem;->mColor:I

    monitor-enter p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v21

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v20, v21

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, p11, 0x2

    if-nez v4, :cond_2

    and-int/lit8 v4, p11, 0x4

    if-nez v4, :cond_2

    :cond_1
    and-int/lit8 v4, p11, 0x20

    if-eqz v4, :cond_c

    :cond_2
    if-nez v20, :cond_19

    and-int/lit8 v4, p11, 0x4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/launcher2/XmlBackup;->isWillRestored(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v14

    move-object/from16 v20, v21

    :goto_2
    if-nez p15, :cond_0

    const-string v4, "MenuAppLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SdCard not Ready-Invalid package: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " (check again later)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getLauncherModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p12

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher2/LauncherModel;->putPendingPackages(Lcom/android/launcher2/compat/UserHandleCompat;Ljava/lang/String;)V

    new-instance v20, Lcom/android/launcher2/AppItem;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    move-object/from16 v0, p9

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move/from16 v0, p10

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher2/AppItem;->mColor:I

    monitor-enter p0

    :try_start_8
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v20

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v0, p12

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v10, :cond_0

    :try_start_9
    iget v4, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const/16 v19, 0x1

    :goto_3
    iget v4, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    const/4 v15, 0x1

    :goto_4
    if-nez v19, :cond_7

    if-nez v15, :cond_7

    iget v4, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    const/16 v18, 0x1

    :goto_5
    if-eqz v15, :cond_8

    new-instance v21, Lcom/android/launcher2/AppItem;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v22

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    move-object/from16 v0, p9

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move/from16 v0, p10

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/AppItem;->mColor:I

    monitor-enter p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v21

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0

    move-object/from16 v20, v21

    :cond_4
    :goto_6
    :try_start_d
    sget-boolean v4, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "MenuAppLoader"

    const-string v5, "title(%s) pkgName(%s) appInfo.flags(%d) "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v27, 0x0

    aput-object p9, v9, v27

    const/16 v27, 0x1

    aput-object v23, v9, v27

    const/16 v27, 0x2

    iget v0, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v9, v27

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v14

    goto/16 :goto_2

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_5

    :catchall_2
    move-exception v4

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v4
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_0

    :cond_8
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    if-eqz v4, :cond_4

    if-eqz v18, :cond_4

    new-instance v21, Lcom/android/launcher2/AppItem;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_1

    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v22

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    move-object/from16 v0, p9

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move/from16 v0, p10

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/AppItem;->mColor:I

    monitor-enter p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_0

    :try_start_12
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v21

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    move-object/from16 v0, p12

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_0

    move-object/from16 v20, v21

    goto/16 :goto_6

    :catchall_3
    move-exception v4

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v4
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_0

    :catchall_4
    move-exception v4

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v4

    :cond_9
    new-instance v20, Lcom/android/launcher2/AppItem;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mTitleIconInfoPool:Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->get()Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    move-result-object v25

    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mUsePackageIcon:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0, v9}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V

    and-int/lit8 v4, p11, 0x4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1}, Lcom/android/launcher2/XmlBackup;->getRestoreDummyInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v27

    invoke-virtual {v4, v5, v0, v9, v1}, Lcom/android/launcher2/PkgResCache;->cachePackageInstallInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :goto_7
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_a
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_b

    const-string v4, ""

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    :cond_b
    move/from16 v0, p10

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher2/AppItem;->mColor:I

    move/from16 v0, p11

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher2/AppItem;->status:I

    monitor-enter p0

    :try_start_17
    sget-object v4, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v5, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v20

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    move-object/from16 v0, p12

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    :cond_c
    :goto_8
    if-eqz v20, :cond_e

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/AppItem;->mId:J

    const-wide/16 v28, -0x1

    cmp-long v4, v4, v28

    if-nez v4, :cond_e

    move-wide/from16 v0, p2

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher2/AppItem;->mId:J

    move/from16 v0, p6

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v0, p7

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v0, p8

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    move-object/from16 v0, p12

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v16

    if-eqz v16, :cond_1a

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppFolderItem;->loadItem(Lcom/android/launcher2/AppItem;)V

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/AppItem;

    if-eqz v13, :cond_e

    iget-object v4, v13, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_e

    check-cast v13, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v13}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    :cond_e
    move-object/from16 v4, v20

    goto/16 :goto_1

    :cond_f
    and-int/lit8 v4, p11, 0x20

    if-nez v4, :cond_10

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_10

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_10
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "icon"

    aput-object v5, v6, v4

    and-int/lit8 v4, p11, 0x20

    if-eqz v4, :cond_15

    const-string v7, "(restored & 32) = 32 AND intent like ?"

    :goto_a
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%component="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/%"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object/from16 v4, p14

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_12

    :try_start_18
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_16

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "title"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v4, "icon"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-eqz v12, :cond_11

    array-length v4, v12

    if-lez v4, :cond_11

    const/4 v4, 0x0

    array-length v5, v12

    invoke-static {v12, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v9

    iget v9, v9, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v4, v5, v9}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :cond_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_12
    :goto_b
    and-int/lit8 v4, p11, 0x20

    if-eqz v4, :cond_13

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_14

    :cond_13
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput-boolean v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mUsePackageIcon:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0, v9}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_7

    :cond_15
    const-string v7, "(restored & 2) = 2 AND intent like ?"

    goto/16 :goto_a

    :cond_16
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_2
    move-exception v14

    :try_start_19
    const-string v4, "MenuAppLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_5
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v27

    invoke-virtual {v4, v5, v0, v9, v1}, Lcom/android/launcher2/PkgResCache;->cachePackageInstallInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_7

    :catchall_6
    move-exception v4

    :try_start_1a
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    throw v4

    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/launcher2/AppItem;->status:I

    new-instance v24, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v24 .. v24}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v4, 0x7

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    move-wide/from16 v0, p2

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-object/from16 v0, p13

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    const/4 v4, -0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    const/4 v4, -0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/launcher2/AppItem;->mCell:I

    goto/16 :goto_9
.end method

.method private updateOrCreateFolder(JIILjava/lang/String;I)Lcom/android/launcher2/AppFolderItem;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p3, v0, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    iput p4, v0, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iput-object p5, v0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    iput p6, v0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    :cond_0
    return-object v0
.end method

.method private declared-synchronized updatePackageActivities(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v9

    sget-object v11, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    iget-object v4, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v11, v7, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/launcher2/MenuAppLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p3

    invoke-virtual {v11, v4, v0}, Lcom/android/launcher2/PkgResCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v11, 0x5

    iput v11, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v12, v7, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v12, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_1
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v5}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v13, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p3

    invoke-direct {v13, v4, v0}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/AppItem;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v12

    iput-wide v12, v7, Lcom/android/launcher2/AppItem;->mId:J

    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/android/launcher2/AppItem;->mDirty:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v8, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p3

    invoke-virtual {v12, v4, v0}, Lcom/android/launcher2/PkgResCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    sget v12, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v5, v1, v12}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    const/4 v12, 0x0

    iput-object v12, v7, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v12, 0x2

    iput v12, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v12, v7, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v12, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v12, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->isPromise()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    iput v12, v7, Lcom/android/launcher2/AppItem;->status:I

    new-instance v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v10}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v12, 0x7

    iput v12, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v12, v7, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v12, v10, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    const-string v12, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "appsUpdated(), id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v7, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", title: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v11, v3}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public abortLoader()V
    .locals 2

    const-string v0, "MenuAppLoader"

    const-string v1, "abortLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    return-void
.end method

.method public getPAIcachePackage(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v0, v1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppItem;->hasStatusFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized loadAllItems(I)Ljava/util/Map;
    .locals 79
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v7, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "MenuAppLoader"

    const-string v8, "loadAllItems"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v52

    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x3c

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v7, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v7}, Lcom/android/launcher2/PkgResCache;->clearActivityInfoCache()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v48, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    move-object/from16 v0, v48

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v48

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v50

    sget-boolean v7, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v7, :cond_1

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "profiles : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    move/from16 v66, p1

    const-wide v70, 0x7fffffffffffffffL

    const-wide/high16 v68, -0x8000000000000000L

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    const/4 v8, 0x0

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.launcher2.SYSTEM_READY"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v10}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_5

    const/16 v23, 0x1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v54

    sget-object v7, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "screen ASC, title ASC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/customer/TMO;->getAppsFolderID()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v24

    const/16 v42, 0x0

    if-eqz v34, :cond_9

    :try_start_3
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_9

    const/4 v7, -0x1

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v7, :cond_9

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v40, Lcom/android/launcher2/MenuAppLoader$AppInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v40

    invoke-direct {v0, v7}, Lcom/android/launcher2/MenuAppLoader$AppInfo;-><init>(Lcom/android/launcher2/MenuAppLoader$1;)V

    const-string v7, "_id"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v40

    iput-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    const-string v7, "folderId"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v40

    iput-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-eqz v7, :cond_2

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    cmp-long v7, v10, v24

    if-nez v7, :cond_2

    const/16 v42, 0x1

    :cond_2
    const-string v7, "screen"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, v40

    iput v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->screen:I

    const-string v7, "cell"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, v40

    iput v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->cell:I

    const-string v7, "hidden"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, v40

    iput-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->hidden:Z

    const-string v7, "title"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v40

    iput-object v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->title:Ljava/lang/String;

    const-string v7, "componentName"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v40

    iput-object v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->component:Ljava/lang/String;

    const-string v7, "color"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, v40

    iput v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->color:I

    const-string v7, "profileId"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v10, v7

    move-object/from16 v0, v40

    iput-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->serialNumber:J

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->screen:I

    move/from16 v0, v66

    if-ne v7, v0, :cond_7

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, v40

    iput-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->urgent:Z

    const-string v7, "restored"

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v34

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, v40

    iput v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->restored:I

    move-object/from16 v0, v40

    iget-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->urgent:Z

    if-eqz v7, :cond_3

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    move-wide/from16 v0, v68

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v68

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    move-wide/from16 v0, v70

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v70

    :cond_3
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->component:Ljava/lang/String;

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->component:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->serialNumber:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    if-eqz v34, :cond_4

    :try_start_4
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    :catchall_2
    move-exception v7

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->serialNumber:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_9
    if-eqz v34, :cond_a

    :try_start_8
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_a
    if-nez v42, :cond_b

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/customer/TMO;->disableAppsFolderAdapt()V

    :cond_b
    new-instance v76, Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    move-object/from16 v0, v76

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/MenuAppLoader$AppInfo;

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    cmp-long v8, v10, v70

    if-ltz v8, :cond_c

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    cmp-long v8, v10, v68

    if-gtz v8, :cond_c

    const/4 v8, 0x1

    move-object/from16 v0, v31

    iput-boolean v8, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->urgent:Z

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/launcher2/MenuAppLoader;->mIsLoaded:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v56

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v72

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v74

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v8

    if-nez v8, :cond_f

    const-wide/16 v10, 0x64

    cmp-long v8, v74, v10

    if-gez v8, :cond_e

    :cond_f
    const/4 v8, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v67

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v33

    sget-boolean v8, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v8, :cond_10

    const-string v8, "MenuAppLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "user : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v67 .. v67}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    const-string v10, "com.sec.android.app.launcher.prefs"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v49

    const-string v8, "MenuView.ViewType"

    sget-object v10, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v49

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v77

    if-eqz v33, :cond_e

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_e

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v74

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/MenuAppLoader$AppInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v67

    move-object/from16 v3, v31

    move-object/from16 v4, v77

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/MenuAppLoader;->createApp(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/MenuAppLoader$AppInfo;Lcom/android/launcher2/MenuView$ViewType;)Lcom/android/launcher2/AppItem;

    goto :goto_5

    :cond_11
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v7, "MenuAppLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LoadJob size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLoadJobs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/launcher2/MenuAppLoader$LoadJob;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v10, :cond_1c

    :cond_12
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v58

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v73, Ljava/util/HashMap;

    invoke-direct/range {v73 .. v73}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v78

    :cond_13
    :goto_7
    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/MenuAppLoader$AppInfo;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v7, :cond_1d

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    if-nez v7, :cond_15

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v37

    invoke-static {v7, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    if-nez v7, :cond_16

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v7, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/MenuAppLoader;->cancelAllJobs()V

    const/16 v28, 0x0

    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v46

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGameHome()Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v46, :cond_18

    invoke-virtual/range {v46 .. v46}, Lcom/android/launcher2/Launcher;->initGameHomeManager()V

    :cond_18
    if-eqz v46, :cond_19

    if-nez v23, :cond_19

    invoke-virtual/range {v46 .. v46}, Lcom/android/launcher2/Launcher;->getLauncherModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/LauncherModel;->registerSystemReadyReceiver(Landroid/content/Context;)V

    :cond_19
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderMultiSelection()Z

    move-result v7

    if-eqz v7, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->updateHiddenAddButtonInAppFolder(Ljava/util/Map;)V

    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAllItems; aborted: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Query PkgMgr for all main intents: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v54, v52

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Query AppOrder database table: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v56, v54

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v56, v52

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Create AppItem for all main intents: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v58, v56

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v58, v52

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Merge AppOrder and PkgMgr data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v60, v58

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v60, v52

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Normalize items and update DB: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v62, v60

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " / "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v62, v52

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    if-eqz v28, :cond_32

    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAllItems:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v7

    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher2/AppFolderingSpr;->setDisableLoader(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_1b
    monitor-exit p0

    return-object v28

    :cond_1c
    :try_start_b
    invoke-virtual/range {v45 .. v45}, Lcom/android/launcher2/MenuAppLoader$LoadJob;->isUrgent()Z

    move-result v10

    new-instance v11, Lcom/android/launcher2/MenuAppLoader$JobListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v11, v0, v1}, Lcom/android/launcher2/MenuAppLoader$JobListener;-><init>(Lcom/android/launcher2/MenuAppLoader;Lcom/android/launcher2/MenuAppLoader$LoadJob;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v10, v1, v11}, Lcom/android/launcher2/MenuAppLoader;->submitTask(ZLcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)V

    goto/16 :goto_6

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v7

    :cond_1d
    const/16 v43, 0x0

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->serialNumber:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v73

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/compat/UserHandleCompat;

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v7

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->serialNumber:J

    invoke-virtual {v7, v10, v11}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v20

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->serialNumber:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v73

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->component:Ljava/lang/String;

    if-eqz v7, :cond_1f

    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->component:Ljava/lang/String;

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    move-object/from16 v0, v31

    iget v14, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->screen:I

    move-object/from16 v0, v31

    iget v15, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->cell:I

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->hidden:Z

    move/from16 v16, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->color:I

    move/from16 v18, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->restored:I

    move/from16 v19, v0

    move-object/from16 v8, p0

    move-object/from16 v22, v6

    invoke-direct/range {v8 .. v23}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;IILcom/android/launcher2/compat/UserHandleCompat;Ljava/util/List;Landroid/content/ContentResolver;Z)Lcom/android/launcher2/AppItem;

    move-result-object v43

    if-nez v43, :cond_13

    new-instance v36, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v36 .. v36}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v7, 0x5

    move-object/from16 v0, v36

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    move-object/from16 v0, v36

    iput-object v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    move-object/from16 v0, v36

    iput-wide v10, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1f
    const/16 v41, 0x1

    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/launcher2/MenuAppLoader$AppInfo;

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    move-object/from16 v0, v29

    iget-wide v12, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->folderId:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_20

    const/16 v41, 0x0

    :cond_21
    if-nez v41, :cond_22

    move-object/from16 v0, v31

    iget-wide v12, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    move-object/from16 v0, v31

    iget v14, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->screen:I

    move-object/from16 v0, v31

    iget v15, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->cell:I

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->color:I

    move/from16 v17, v0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateFolder(JIILjava/lang/String;I)Lcom/android/launcher2/AppFolderItem;

    move-result-object v43

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v43

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    move-object v7, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_22
    const-string v7, "MenuAppLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget-object v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] is empty - app load"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v36, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v36 .. v36}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v7, 0x5

    move-object/from16 v0, v36

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    move-object/from16 v0, v31

    iget-wide v10, v0, Lcom/android/launcher2/MenuAppLoader$AppInfo;->id:J

    move-object/from16 v0, v36

    iput-wide v10, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_23
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_24
    :goto_a
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_24

    move-object/from16 v0, v26

    iget-boolean v7, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v7, :cond_25

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_25
    move-object/from16 v0, v26

    instance-of v7, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v7, :cond_24

    move-object/from16 v0, v26

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_24

    move-object/from16 v0, v26

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/AppItem;

    if-eqz v27, :cond_26

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    move-object/from16 v0, v27

    iget-wide v10, v0, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/launcher2/AppItem;->mDirty:Z

    :cond_26
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    new-instance v39, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v39 .. v39}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v7, 0x5

    move-object/from16 v0, v39

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/launcher2/AppItem;->mId:J

    move-object/from16 v0, v39

    iput-wide v10, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_27
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_28

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v38

    invoke-static {v7, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v51

    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    sget-object v7, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_29
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/launcher2/AppItem;->mId:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_29

    if-eqz v51, :cond_29

    invoke-virtual/range {v51 .. v51}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v10

    move-object/from16 v0, v43

    iput-wide v10, v0, Lcom/android/launcher2/AppItem;->mId:J

    const/4 v8, 0x1

    move-object/from16 v0, v43

    iput-boolean v8, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_4
    move-exception v7

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_2a
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/Utilities;->getApplyScreenGridApps(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2c

    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->MENU_GRID_CHANGE_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/4 v10, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0, v8, v10}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/launcher2/Utilities;->setApplyScreenGridApps(Landroid/content/Context;Z)V

    :goto_c
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2b
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, v43

    iget-boolean v7, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v7, :cond_2b

    new-instance v64, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v64 .. v64}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v10, :cond_2d

    const/4 v7, 0x0

    move-object/from16 v0, v64

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    :goto_e
    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/launcher2/AppItem;->mId:J

    move-object/from16 v0, v64

    iput-wide v10, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v7, :cond_30

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v10, v7, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_f
    move-object/from16 v0, v64

    iput-wide v10, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    move-object/from16 v0, v64

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/launcher2/AppItem;->mCell:I

    move-object/from16 v0, v64

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    move-object/from16 v0, v43

    iget-boolean v7, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    move-object/from16 v0, v64

    iput-boolean v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v64

    iput-object v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v64

    iput-object v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    const/4 v7, 0x0

    move-object/from16 v0, v43

    iput-boolean v7, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    move-object/from16 v0, v65

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2c
    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/4 v10, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0, v8, v10}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    goto/16 :goto_c

    :cond_2d
    const/4 v7, 0x3

    move-object/from16 v0, v64

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v64

    iput-object v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    goto :goto_e

    :cond_2e
    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v10, :cond_2f

    const/4 v7, 0x4

    :goto_10
    move-object/from16 v0, v64

    iput v7, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    goto :goto_e

    :cond_2f
    const/4 v7, 0x1

    goto :goto_10

    :cond_30
    const-wide/16 v10, -0x1

    goto :goto_f

    :cond_31
    invoke-interface/range {v65 .. v65}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_8

    :cond_32
    const-string v7, "MenuAppLoader"

    const-string v8, "loadAllItems: allItems is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_9
.end method

.method public declared-synchronized refreshAllApps(ILcom/android/launcher2/MenuAppLoader$BindListener;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mTitleIconInfoPool:Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->get()Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget v11, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    sub-int/2addr v11, p1

    invoke-direct {p0, v11}, Lcom/android/launcher2/MenuAppLoader;->isInPreferredRange(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iget v11, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ne v11, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v8, v9}, Lcom/android/launcher2/MenuAppLoader;->refreshItems(Ljava/util/ArrayList;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Ljava/util/List;)V

    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/MenuAppLoader$BindListener;->bind()V

    invoke-direct {p0, v1, v8, v9}, Lcom/android/launcher2/MenuAppLoader;->refreshItems(Ljava/util/ArrayList;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Ljava/util/List;)V

    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/MenuAppLoader$BindListener;->bind()V

    invoke-direct {p0, v3, v8, v9}, Lcom/android/launcher2/MenuAppLoader;->refreshItems(Ljava/util/ArrayList;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Ljava/util/List;)V

    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/MenuAppLoader$BindListener;->bind()V

    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mTitleIconInfoPool:Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;

    invoke-virtual {v10, v8}, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->recycle(Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    iget-boolean v10, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v10, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v10, v9}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v10, "MenuAppLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refreshAllApps; aborted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", refresh time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    iget-object v0, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v4, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v5, v0, p2}, Lcom/android/launcher2/PkgResCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v5, 0x5

    iput v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-object v5, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    iget-wide v6, v4, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v6, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iput-object p2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v5, "MenuAppLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is no package to remove in mApps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method updateBadgeCounts(Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BadgeCache$CacheKey;

    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    new-instance v7, Lcom/android/launcher2/PkgResCache$CacheKey;

    iget-object v8, v1, Lcom/android/launcher2/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/launcher2/BadgeCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-direct {v7, v8, v9}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v5, v0, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    if-eq v5, v3, :cond_0

    iput v3, v0, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_1
    return-object v4
.end method

.method protected updateHiddenAddButtonInAppFolder(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    const-string v7, "com.sec.android.app.launcher.prefs"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "AppFolderNames"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    aget-object v4, v1, v3

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/launcher2/AppFolderItem;->setHiddenAddButton(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, p2, v1, p3}, Lcom/android/launcher2/MenuAppLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method updatePackageAvailability(Landroid/content/Context;Ljava/lang/String;ZLcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 6

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p2, v2, p4}, Lcom/android/launcher2/MenuAppLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-boolean v4, v0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    iget-object v4, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lcom/android/launcher2/PkgResCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
