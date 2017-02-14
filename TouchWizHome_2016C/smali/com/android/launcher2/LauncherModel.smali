.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;,
        Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field public static final BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

.field public static final CHECK_CHANGED_COMPONENT_EXITST:Ljava/lang/String; = "checkChangedComponentVersion"

.field protected static final COUNT_MAX:I = 0x6

.field private static final CSC_FILE_EXTRA_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace_extra.xml"

.field protected static final DEBUGGABLE:Z

.field protected static final DEBUG_LOADERS:Z = true

.field private static final FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = "current_sec_theme_package_festival_enabled"

.field protected static final ITEMS_CHUNK:I = 0x6

.field private static final MYPLACE_APPWIDGET_CLASS_NAME:Ljava/lang/String; = "com.sec.android.widgetapp.locationwidget.LocationWidgetRm"

.field private static final MYPLACE_APPWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.widgetapp.locationwidget"

.field private static final MYPLACE_SURFACEWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.widgetapp.locationwidget"

.field private static final SPLANNER_APPWIDGET_CLASS_NAME_FOR_MONTHWIDGET:Ljava/lang/String; = "com.android.calendar.widget.MonthWidgetProvider"

.field private static final SPLANNER_APPWIDGET_CLASS_NAME_FOR_TODAYWIDGET:Ljava/lang/String; = "com.android.calendar.widget.TodayWidgetProvider"

.field private static final SPLANNER_APPWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"

.field private static final SPLANNER_SURFACEWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.widgetapp.SPlannerAppWidget"

.field public static final SURFACE_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET.themename"

.field private static final TAG:Ljava/lang/String; = "Launcher.Model"

.field private static final TAG_EXTRAAPPS:Ljava/lang/String; = "extraapps"

.field private static final TAG_EXTRAFOTA_FOLDER_ITEM:Ljava/lang/String; = "folder"

.field private static final TAG_EXTRAFOTA_HOME_ITEM:Ljava/lang/String; = "home"

.field private static final TAG_EXTRAFOTA_VERSION:Ljava/lang/String; = "version"

.field public static final WEATHER_APPWIDGET_CLASS_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.appwidget.WeatherAppWidget"

.field public static final WEATHER_APPWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.daemonapp"

.field protected static final allAppsThread:Landroid/os/HandlerThread;

.field protected static final appsHandler:Landroid/os/Handler;

.field private static isRootBadgeFeautre:Z

.field static final sAddedHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field public static sBgWidgetProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static sCellCountX:I

.field protected static sCellCountY:I

.field protected static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field protected static final sHomeFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sHomeItemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final sWorker:Landroid/os/Handler;

.field protected static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field protected volatile mAllAppsLoaded:Z

.field protected final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field protected volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigMccWhenLoaded:I

.field private volatile mConfigMncWhenLoaded:I

.field private mFolderLock:Lcom/android/launcher2/FolderLock;

.field protected mHandler:Lcom/android/launcher2/DeferredHandler;

.field private final mHomeLoader:Lcom/android/launcher2/HomeLoader;

.field protected final mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private volatile mLocaleWhenLoaded:Ljava/lang/String;

.field protected final mLock:Ljava/lang/Object;

.field protected final mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

.field protected final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field protected volatile mRefreshRequired:Z

.field private volatile mRequireRefreshAll:Z

.field protected final mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

.field protected volatile mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    sput-boolean v2, Lcom/android/launcher2/LauncherModel;->isRootBadgeFeautre:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.stk"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.android.stk2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "all-apps"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->allAppsThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/launcher2/LauncherModel;->allAppsThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->allAppsThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->appsHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    new-instance v1, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v1, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    new-instance v1, Lcom/android/launcher2/HomeLoader;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    new-instance v1, Lcom/android/launcher2/MenuAppLoader;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-static {v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    invoke-static {v0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFestivalPageCountFromDb()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Landroid/content/Intent;ILandroid/content/ComponentName;Landroid/content/pm/PackageManager;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getRestoredItemInfo(Landroid/content/Context;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Landroid/content/Intent;ILandroid/content/ComponentName;Landroid/content/pm/PackageManager;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/FolderLock;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/LauncherModel;[B)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/BadgeCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherModel;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnly(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherModel;->removeUnRestoredHomeItems(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherModel;->removeUnRestoredAppsItems(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRequireRefreshAll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mRequireRefreshAll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->checkAndChangeCallApp()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->checkAppShortcut()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->extraUpdateByFota()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method public static addBulkItemToDatabase(Landroid/content/Context;[Landroid/content/ContentValues;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/launcher2/LauncherModel$9;-><init>(Landroid/content/ContentResolver;Z[Landroid/content/ContentValues;)V

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "ChangeTphoneMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addHomeItem item container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher2/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    iget v3, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setTargetCell(I)V

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutHotseat;->setTargetCell(I)V

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayoutHotseat;->reapplyIconViewStyles(Z)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v3, v2, v7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v3, v2, v8

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v6, v2, v7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v6, v2, v8

    goto :goto_0

    :cond_2
    const-string v2, "ChangeTphoneMode"

    const-string v3, "cellHome is null. addHomeItem return false."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZZ)Landroid/content/ContentValues;
    .locals 22

    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v0, p5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p6

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    const-wide/16 v6, -0x65

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    if-gez p4, :cond_0

    move-object/from16 v0, p0

    instance-of v5, v0, Lcom/android/launcher2/Launcher;

    if-eqz v5, :cond_0

    move-object/from16 v5, p0

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_0
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v6

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/launcher2/HomeItem;->mId:J

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: HomeItem id ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") passed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "addItemToDatabase already exists."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string v5, "_id"

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_2

    sget-object v6, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    const-string v6, "HSFO"

    const/4 v7, 0x0

    sget-object v8, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v10, -0x64

    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    const-string v6, "IWAR"

    const-string v7, "Home_Background_Longpress"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_5
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "intent"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    if-lez v5, :cond_7

    const-string v5, "festival"

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    if-eqz p8, :cond_8

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v20

    :cond_8
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    new-instance v4, Lcom/android/launcher2/LauncherModel$10;

    move-object/from16 v5, v18

    move/from16 v6, p7

    move-object/from16 v7, v20

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel$10;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    const-string v12, "WGAD"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_9
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZZ)Landroid/content/ContentValues;

    return-void
.end method

.method static addItemToItemList(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 4

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: HomeItem id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "addItemToDatabase already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/LauncherModel$36;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V
    .locals 12

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Apps_Icon_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p5

    if-ne v2, v0, :cond_2

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p6

    if-eq v2, v0, :cond_3

    :cond_2
    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Widget_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_3
    :goto_1
    const-string v11, "moveItemInDatabase"

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v11}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "IWAR"

    const-string v5, "Home_Icon_Longpress"

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method private addShortcutHomeOnly(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnly(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)V

    return-void
.end method

.method private declared-synchronized addShortcutHomeOnly(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)V
    .locals 62

    monitor-enter p0

    :try_start_0
    sget-object v61, Lcom/android/launcher2/InstallShortcutReceiver;->sAddItemLock:Ljava/lang/Object;

    monitor-enter v61
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x3

    :try_start_1
    new-array v0, v4, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    check-cast v36, Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->getLastItemScreen(Landroid/content/Context;)I

    move-result v43

    const/16 v45, -0x1

    const/16 v44, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v4, 0x0

    aget v22, v38, v4

    const/4 v4, 0x1

    aget v23, v38, v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getBriefingScreenCount()I

    move-result v6

    sub-int v60, v4, v6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v60, v60, -0x1

    :cond_0
    move/from16 v0, v60

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v53

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFestivalPageCountFromDb()I

    move-result v4

    sub-int v53, v53, v4

    const-wide/16 v6, -0x64

    move/from16 v0, v43

    invoke-static {v5, v6, v7, v0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v50

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v0, v43

    if-ne v0, v6, :cond_1

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v61
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    const/16 v54, 0x0

    if-eqz p1, :cond_3

    const/16 v47, 0x0

    :goto_1
    :try_start_3
    sget-object v4, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v47

    if-ge v0, v4, :cond_3

    sget-object v4, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    aget-object v4, v4, v47

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v54, 0x1

    :cond_3
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    if-nez v54, :cond_7

    move/from16 v45, v53

    :cond_4
    :goto_2
    if-nez v44, :cond_5

    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxPageCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dbMaxScreen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", screenMaxIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    move/from16 v0, v45

    if-eq v0, v4, :cond_10

    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   state 0, emptyScreen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    aput v45, v46, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v46, v4

    const/4 v4, 0x2

    const/4 v6, 0x0

    aput v6, v46, v4

    :cond_5
    :goto_3
    const/4 v4, 0x0

    aget v29, v46, v4

    const/4 v4, 0x1

    aget v30, v46, v4

    const/4 v4, 0x2

    aget v31, v46, v4

    const/16 v33, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, v5

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move-object/from16 v32, p3

    move-object/from16 v34, p5

    invoke-direct/range {v25 .. v34}, Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;IIILcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)V

    monitor-exit v61
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :cond_6
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_1

    :cond_7
    const-wide/16 v40, -0x64

    move/from16 v9, v43

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v48, 0x0

    :try_start_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v54, :cond_b

    if-eqz p1, :cond_b

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v57

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v57

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_b

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ";"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_b

    move-object/from16 v0, v42

    array-length v4, v0

    const/4 v6, 0x4

    if-ne v4, v6, :cond_b

    const/4 v4, 0x0

    aget-object v4, v42, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    const/4 v4, 0x1

    aget-object v4, v42, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v4, 0x2

    aget-object v4, v42, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/4 v4, 0x3

    aget-object v4, v42, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    const-wide/16 v6, 0x0

    cmp-long v4, v40, v6

    if-lez v4, :cond_8

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->onlyFindFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v8

    if-eqz v8, :cond_b

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/LauncherModel;->addShortcutToFolderHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/HomeFolderItem;ILcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)Z

    move-result v4

    if-eqz v4, :cond_b

    monitor-exit v61

    goto/16 :goto_4

    :cond_8
    const-wide/16 v6, -0x64

    cmp-long v4, v40, v6

    if-nez v4, :cond_d

    if-lez v9, :cond_b

    move/from16 v0, v53

    if-gt v9, v0, :cond_b

    if-ltz v37, :cond_b

    move/from16 v0, v37

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    if-ltz v39, :cond_b

    move/from16 v0, v39

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v56, v0

    const/4 v4, 0x0

    aput v37, v56, v4

    const/4 v4, 0x1

    aput v39, v56, v4

    const-wide/16 v6, -0x64

    invoke-static {v5, v6, v7, v9}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v59

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ne v9, v6, :cond_9

    move-object/from16 v0, v59

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v59

    invoke-static {v5, v0, v1, v2, v9}, Lcom/android/launcher2/LauncherModel;->buildOccupiedCellList(Landroid/content/Context;IILjava/util/ArrayList;I)[[Z

    move-result-object v52

    aget-object v4, v52, v37

    aget-boolean v4, v4, v39

    if-nez v4, :cond_c

    const/16 v48, 0x1

    :cond_b
    :goto_6
    if-eqz v48, :cond_e

    new-instance v44, Landroid/graphics/Point;

    invoke-direct/range {v44 .. v44}, Landroid/graphics/Point;-><init>()V

    move/from16 v0, v37

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Point;->x:I

    move/from16 v0, v39

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    aput v9, v46, v4

    const/4 v4, 0x1

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Point;->x:I

    aput v6, v46, v4

    const/4 v4, 0x2

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Point;->y:I

    aput v6, v46, v4

    goto/16 :goto_2

    :cond_c
    const/16 v48, 0x0

    goto :goto_6

    :cond_d
    const-wide/16 v6, -0x65

    cmp-long v4, v40, v6

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v51

    if-eqz v51, :cond_b

    invoke-virtual/range {v51 .. v51}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move-object v11, v5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move v14, v9

    move-object/from16 v17, p3

    move-object/from16 v19, p5

    invoke-direct/range {v10 .. v19}, Lcom/android/launcher2/LauncherModel;->addShortcutToHotseatHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;ILcom/android/launcher2/HomeView;Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)Z

    move-result v4

    if-eqz v4, :cond_b

    monitor-exit v61

    goto/16 :goto_4

    :cond_e
    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v50

    move/from16 v3, v43

    invoke-static {v5, v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->buildOccupiedCellList(Landroid/content/Context;IILjava/util/ArrayList;I)[[Z

    move-result-object v24

    new-instance v19, Landroid/graphics/Point;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, v5

    move/from16 v25, p4

    invoke-direct/range {v17 .. v25}, Lcom/android/launcher2/LauncherModel;->findEmptyCellHomeOnly(Landroid/content/Context;Landroid/graphics/Point;IIII[[ZZ)Landroid/graphics/Point;

    move-result-object v44

    if-eqz v44, :cond_f

    const/4 v4, 0x0

    aput v43, v46, v4

    const/4 v4, 0x1

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Point;->x:I

    aput v6, v46, v4

    const/4 v4, 0x2

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Point;->y:I

    aput v6, v46, v4

    goto/16 :goto_2

    :cond_f
    move/from16 v0, v43

    move/from16 v1, v53

    if-ge v0, v1, :cond_4

    add-int/lit8 v45, v43, 0x1

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {v36 .. v36}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v51

    add-int/lit8 v55, v53, 0x1

    if-nez v51, :cond_12

    const-string v4, "Launcher.Model"

    const-string v6, "   state 1, launcher is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v55, 0x1

    invoke-static {v5, v4}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    :cond_11
    :goto_7
    const/4 v4, 0x0

    aput v55, v46, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v46, v4

    const/4 v4, 0x2

    const/4 v6, 0x0

    aput v6, v46, v4

    goto/16 :goto_3

    :cond_12
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_13

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_13

    const-string v4, "Launcher.Model"

    const-string v6, "   state 2, insert FestivalPage"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v58, Lcom/android/launcher2/LauncherModel$16;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    move/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$16;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;I)V

    :goto_8
    if-eqz v58, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_13
    const-string v4, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   state 3, screen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v58, Lcom/android/launcher2/LauncherModel$17;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$17;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8
.end method

.method private addShortcutHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;IIILcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static/range {p1 .. p3}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v13, p9

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZLcom/android/launcher2/BaseItem$Type;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v9, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v7, :cond_3

    const/16 v18, 0x0

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v17

    instance-of v7, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_0

    move-object/from16 v20, v17

    check-cast v20, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v18, 0x1

    :cond_1
    if-eqz v18, :cond_3

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_2

    const-string v4, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addShortcutHomeOnly() duplicated skipped, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cellX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cellY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-wide/16 v10, -0x64

    iput-wide v10, v9, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move/from16 v0, p4

    iput v0, v9, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    move/from16 v0, p5

    iput v0, v9, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    move/from16 v0, p6

    iput v0, v9, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    iget-wide v10, v9, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget v12, v9, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v13, v9, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v14, v9, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    move-object/from16 v8, p1

    move/from16 v15, p8

    invoke-static/range {v8 .. v15}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    if-eqz p7, :cond_2

    new-instance v19, Lcom/android/launcher2/LauncherModel$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher2/LauncherModel$15;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/HomeShortcutItem;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_2

    const-string v4, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addShortcutHomeOnly() failed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cellX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cellY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addShortcutToFolderHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/HomeFolderItem;ILcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)Z
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static/range {p1 .. p3}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZLcom/android/launcher2/BaseItem$Type;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iput-wide v8, v7, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move/from16 v0, p5

    iput v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget-wide v8, v7, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v11, v7, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v12, v7, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    move-object/from16 v6, p1

    move/from16 v13, p7

    invoke-static/range {v6 .. v13}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v8, v7, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    new-instance v14, Lcom/android/launcher2/LauncherModel$14;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v14, p0, v0, v7, v1}, Lcom/android/launcher2/LauncherModel$14;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeShortcutItem;I)V

    invoke-virtual {p0, v14}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addShortcutToFolderHomeOnly() failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", folder id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", screen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addShortcutToHotseatHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;ILcom/android/launcher2/HomeView;Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static/range {p1 .. p3}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZLcom/android/launcher2/BaseItem$Type;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v7

    if-eqz v7, :cond_0

    const-wide/16 v8, -0x65

    iput-wide v8, v7, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move/from16 v0, p4

    iput v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget-wide v8, v7, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget v2, v7, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v9, v2}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v14, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-wide v8, v7, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v11, v7, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v12, v7, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    new-instance v15, Lcom/android/launcher2/LauncherModel$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v15, v0, v14, v7, v1}, Lcom/android/launcher2/LauncherModel$18;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/CellLayoutHotseat;Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/Hotseat;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addShortcutToHotseatHomeOnly() failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", screen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static buildOccupiedCellList(Landroid/content/Context;IILjava/util/ArrayList;I)[[Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;I)[[Z"
        }
    .end annotation

    filled-new-array/range {p1 .. p2}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v1, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    move v12, v1

    :goto_0
    add-int v15, v1, v6

    if-ge v12, v15, :cond_0

    move/from16 v0, p1

    if-ge v12, v0, :cond_0

    move v13, v2

    :goto_1
    add-int v15, v2, v7

    if-ge v13, v15, :cond_1

    move/from16 v0, p2

    if-ge v13, v0, :cond_1

    aget-object v15, v4, v12

    const/16 v16, 0x1

    aput-boolean v16, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const-string v14, "com.sec.android.app.launcher.prefs"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v14, "tempScreen"

    const/4 v15, -0x1

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move/from16 v0, p4

    if-ne v14, v0, :cond_4

    const-string v14, "tempCellX"

    const/4 v15, -0x1

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v14, "tempCellY"

    const/4 v15, -0x1

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v14, "tempSpanX"

    const/4 v15, -0x1

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v14, "tempSpanY"

    const/4 v15, -0x1

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    move v12, v8

    :goto_2
    add-int v14, v8, v10

    if-ge v12, v14, :cond_4

    move/from16 v0, p1

    if-ge v12, v0, :cond_4

    move v13, v9

    :goto_3
    add-int v14, v9, v11

    if-ge v13, v14, :cond_3

    move/from16 v0, p2

    if-ge v13, v0, :cond_3

    aget-object v14, v4, v12

    const/4 v15, 0x1

    aput-boolean v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method private changeDialerAppInDb()V
    .locals 13

    const/4 v12, 0x0

    const/16 v10, -0x65

    invoke-direct {p0, v12, v10}, Lcom/android/launcher2/LauncherModel;->checkDialerExist(ZI)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gtz v10, :cond_0

    const-string v10, "Launcher.Model"

    const-string v11, "changeDialerAppInDb : Oem Dialer does not exist in Hotseat"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v10, 0x1

    const/16 v11, -0x64

    invoke-direct {p0, v10, v11}, Lcom/android/launcher2/LauncherModel;->checkDialerExist(ZI)J

    move-result-wide v2

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v9, v2, v3}, Lcom/android/launcher2/LauncherModel;->fillContentValues(Landroid/content/ContentValues;J)V

    invoke-direct {p0, v4, v6, v7}, Lcom/android/launcher2/LauncherModel;->fillContentValues(Landroid/content/ContentValues;J)V

    invoke-static {v6, v7, v12}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v2, v3, v12}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v4, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v10, "Launcher.Model"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeHomeItem(Lcom/android/launcher2/HomeView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/HomeView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, p1, v9}, Lcom/android/launcher2/LauncherModel;->removeHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherModel;->addHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "ChangeTphoneMode"

    const-string v2, "addHomeItem return false."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "ChangeTphoneMode"

    const-string v2, "removeHomeItem return false."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private checkAndChangeCallApp()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, -0x65

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/LauncherModel;->checkDialerExist(ZI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const-string v0, "Launcher.Model"

    const-string v1, "Customer Dialer already changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->changeDialerAppInDb()V

    goto :goto_0
.end method

.method private checkAppShortcut()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "itemType=1"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v3

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    const/4 v3, 0x0

    invoke-static {v14, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-static {v12}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_1
    const-string v3, "Launcher.Model"

    invoke-virtual {v9}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_5

    if-eqz v10, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "itemType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id in ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v3, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAppShortcut update list "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v13, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private checkDialerExist(ZI)J
    .locals 16

    const-wide/16 v12, -0x1

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkDialerExist "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container=\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' AND "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "itemType"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' AND "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "intent"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " like ?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    new-instance v8, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v8, :cond_1

    const-string v3, "Launcher.Model"

    const-string v7, "checkDialerExist Dialer component name is null"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    :goto_1
    return-wide v14

    :cond_0
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%component="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ";%"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v3

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkDialerExist "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v14, v12

    goto/16 :goto_1

    :catch_0
    move-exception v10

    :try_start_1
    const-string v3, "Launcher.Model"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method static checkItemInfoLocked(JLcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;)V
    .locals 10

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_2

    if-eq p2, v1, :cond_2

    instance-of v5, v1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_4

    instance-of v5, p2, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    move-object v4, p2

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v5, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-wide v6, v2, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    iget-wide v8, v4, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeShortcutItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/launcher2/HomeShortcutItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v6

    if-ne v5, v6, :cond_3

    iget-wide v6, v2, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget-wide v8, v4, Lcom/android/launcher2/HomeShortcutItem;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget v5, v2, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v6, v4, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    if-ne v5, v6, :cond_3

    iget v5, v2, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v6, v4, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    if-ne v5, v6, :cond_3

    iget v5, v2, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    iget v6, v4, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    if-ne v5, v6, :cond_3

    iget v5, v2, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    iget v6, v4, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    if-ne v5, v6, :cond_3

    iget v5, v2, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    iget v6, v4, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    if-ne v5, v6, :cond_3

    iget-object v5, v2, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, v2, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_3

    iget-object v5, v2, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v5, v6, :cond_3

    :cond_1
    const-string v5, "Launcher.Model"

    const-string v6, "checkItemInfoLocked(), item != modelItem but item.data == modelItem.data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-wide v6, v2, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    iget-wide v6, v4, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    iget-wide v6, v2, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget-wide v8, v4, Lcom/android/launcher2/HomeShortcutItem;->container:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    :cond_4
    instance-of v5, v1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_7

    instance-of v5, p2, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_7

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    move-object v4, p2

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    iget-object v5, v2, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-wide v6, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iget-wide v8, v4, Lcom/android/launcher2/HomeFolderItem;->mId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFolderItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v6

    if-ne v5, v6, :cond_7

    iget-wide v6, v2, Lcom/android/launcher2/HomeFolderItem;->container:J

    iget-wide v8, v4, Lcom/android/launcher2/HomeFolderItem;->container:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    iget v5, v2, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iget v6, v4, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    if-ne v5, v6, :cond_7

    iget v5, v2, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v6, v4, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    if-ne v5, v6, :cond_7

    iget v5, v2, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iget v6, v4, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    if-ne v5, v6, :cond_7

    iget-object v5, v2, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, v2, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v4, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v5, v6, :cond_7

    iget-object v5, v2, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, v4, Lcom/android/launcher2/HomeFolderItem;->dropPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v5, v6, :cond_7

    :cond_6
    const-string v5, "Launcher.Model"

    const-string v6, "checkItemInfoLocked(), item != modelItem but item.data == modelItem.data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "modelItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    invoke-virtual {v0, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_8
    throw v0

    :cond_9
    const-string v5, "null"

    goto :goto_1
.end method

.method private checkZeroPagePackage(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private deleteFestivalPage(Lcom/android/launcher2/Launcher;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeWidgetItem;

    iget v5, v3, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    if-lez v5, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/launcher2/LauncherModel$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher2/LauncherModel$13;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    iget-object v1, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "DTHF"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HSFO"

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/Logging;->getFolderNameValue(Landroid/app/Activity;Z)I

    move-result v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOFN"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/customer/TMO;->supportHomeFolderAdapt()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/customer/TMO;->disableHomeFolderAdapt(J)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher2/customer/PostPosition;->deleteFolder(Lcom/android/launcher2/customer/PostPosition$CONTAINER;J)V

    :cond_2
    new-instance v7, Lcom/android/launcher2/LauncherModel$12;

    invoke-direct {v7, p1, v0, p0, v8}, Lcom/android/launcher2/LauncherModel$12;-><init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "WGDT"

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_3
    invoke-static {v7}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$11;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/android/launcher2/LauncherModel$11;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Landroid/content/Context;Z)V

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private extraUpdateByFota()V
    .locals 42

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/launcher2/LauncherApplication;->getFirstRunVersion(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_1

    const-string v3, "Launcher.Model"

    const-string v9, "extraUpdateByFota => return, it is not FirstRun!"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/android/launcher2/LauncherApplication;->setFirstRunVersion(Landroid/content/Context;Z)V

    const/16 v26, 0x0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    :try_start_0
    new-instance v19, Ljava/io/File;

    const-string v3, "/system/csc/default_workspace_extra.xml"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v40, 0x0

    cmp-long v3, v12, v40

    if-lez v3, :cond_8

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v25

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/16 v36, 0x0

    new-instance v27, Ljava/io/FileReader;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    const-string v3, "extraapps"

    move-object/from16 v0, v36

    invoke-static {v0, v3}, Lcom/android/launcher2/Utilities;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v21

    :goto_1
    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_7

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_3

    const-string v3, "version"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "home"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "folder"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    const/4 v3, 0x4

    move/from16 v0, v21

    if-ne v0, v3, :cond_3

    const-string v3, "version"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v24

    :cond_3
    :goto_2
    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    goto :goto_1

    :cond_4
    const-string v3, "home"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v20

    move-object/from16 v26, v27

    :goto_3
    :try_start_2
    const-string v3, "Launcher.Model"

    const-string v9, "Got exception parsing extra item."

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v26, :cond_5

    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "Launcher.Model"

    const-string v9, "extra fota => return, item is empty"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :try_start_4
    const-string v3, "folder"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v20

    move-object/from16 v26, v27

    :goto_5
    :try_start_5
    const-string v3, "Launcher.Model"

    const-string v9, "Got exception parsing extra item."

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v26, :cond_5

    :try_start_6
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v20

    const-string v3, "Launcher.Model"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move-object/from16 v26, v27

    :cond_8
    if-eqz v26, :cond_5

    :try_start_7
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v20

    const-string v3, "Launcher.Model"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v20

    const-string v3, "Launcher.Model"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_5
    move-exception v20

    :goto_6
    :try_start_8
    const-string v3, "Launcher.Model"

    const-string v9, "Got exception parsing extra item."

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v26, :cond_5

    :try_start_9
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    :catch_6
    move-exception v20

    const-string v3, "Launcher.Model"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v26, :cond_9

    :try_start_a
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_9
    :goto_8
    throw v3

    :catch_7
    move-exception v20

    const-string v9, "Launcher.Model"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v10}, Lcom/android/launcher2/LauncherApplication;->getExtraWorkspaceVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "extra fota => return, version equal, version: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", extraVersion: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v20

    const-string v3, "Launcher.Model"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    :try_start_c
    const-string v3, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start about adding extra item... FOTA, version: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", extraVersion: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v6

    const-wide/16 v4, -0x1

    const/16 v29, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f080052

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6, v7}, Lcom/android/launcher2/LauncherModel;->getFolderID(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-gez v3, :cond_c

    const-string v3, "%Microsoft%"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/android/launcher2/LauncherModel;->getFolderID(Ljava/lang/String;J)J

    move-result-wide v4

    :cond_c
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-lez v3, :cond_e

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherModel;->getFolderItems(JJLjava/util/ArrayList;)I

    move-result v29

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " activities is empty..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_11
    :goto_b
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v14}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const-string v9, "container"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "screen"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v9, p0

    move-wide v12, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher2/LauncherModel;->makeDBvalue(Landroid/content/Context;Landroid/content/ContentValues;JLcom/android/launcher2/compat/LauncherActivityInfoCompat;)V

    const-string v9, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Add folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "title"

    invoke-virtual {v11, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v9, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_b

    :cond_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    const/16 v9, -0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v9, v6, v7}, Lcom/android/launcher2/LauncherModel;->getWorkspaceID(Landroid/content/ComponentName;IJ)J

    move-result-wide v12

    const/16 v9, -0x65

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v9, v6, v7}, Lcom/android/launcher2/LauncherModel;->getWorkspaceID(Landroid/content/ComponentName;IJ)J

    move-result-wide v40

    add-long v32, v12, v40

    const-wide/16 v12, 0x0

    cmp-long v9, v32, v12

    if-gez v9, :cond_13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " activities is empty..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_14
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_15
    :goto_d
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v14}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9, v12, v13}, Lcom/android/launcher2/LauncherModel;->findVacantCell(Landroid/content/Context;ZZZ)[I

    move-result-object v28

    const-string v9, "container"

    const/16 v12, -0x64

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "screen"

    const/4 v12, 0x0

    aget v12, v28, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cellX"

    const/4 v12, 0x1

    aget v12, v28, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "cellY"

    const/4 v12, 0x2

    aget v12, v28, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, p0

    move-wide v12, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher2/LauncherModel;->makeDBvalue(Landroid/content/Context;Landroid/content/ContentValues;JLcom/android/launcher2/compat/LauncherActivityInfoCompat;)V

    const-string v9, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Add workspace : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "title"

    invoke-virtual {v11, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v9, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_d

    :cond_16
    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/android/launcher2/LauncherApplication;->setExtraWorkspaceVersion(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    move-object/from16 v26, v27

    goto/16 :goto_7

    :catch_9
    move-exception v20

    move-object/from16 v26, v27

    goto/16 :goto_6

    :catch_a
    move-exception v20

    goto/16 :goto_5

    :catch_b
    move-exception v20

    goto/16 :goto_3
.end method

.method private fillContentValues(Landroid/content/ContentValues;J)V
    .locals 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v2, v3

    const-string v1, "intent"

    aput-object v1, v2, v5

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillContentValues "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "intent"

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    :try_start_1
    const-string v1, "Launcher.Model"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private static fillOccupiedCellInfo(Landroid/content/Context;I[[Z)V
    .locals 12

    const-wide/16 v10, -0x64

    invoke-static {p0, v10, v11, p1}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v9, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget v10, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ne p1, v10, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v1, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    move v7, v1

    :goto_1
    add-int v10, v1, v5

    if-ge v7, v10, :cond_2

    array-length v10, p2

    if-ge v7, v10, :cond_2

    move v8, v2

    :goto_2
    add-int v10, v2, v6

    if-ge v8, v10, :cond_3

    aget-object v10, p2, v7

    array-length v10, v10

    if-ge v8, v10, :cond_3

    aget-object v10, p2, v7

    const/4 v11, 0x1

    aput-boolean v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v0

    return v0
.end method

.method public static findEmptyCell(Landroid/content/Context;[IIII)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[IIIIZ)Z

    move-result v0

    return v0
.end method

.method public static findEmptyCell(Landroid/content/Context;[IIIIZ)Z
    .locals 15

    const/4 v1, 0x2

    new-array v7, v1, [I

    invoke-static {p0, v7}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    move/from16 v0, p2

    invoke-static {p0, v0, v6}, Lcom/android/launcher2/LauncherModel;->fillOccupiedCellInfo(Landroid/content/Context;I[[Z)V

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v1, "tempScreen"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_1

    const-string v1, "tempCellX"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "tempCellY"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "tempSpanX"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v1, "tempSpanY"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v13, v9

    :goto_0
    add-int v1, v9, v11

    if-ge v13, v1, :cond_1

    const/4 v1, 0x0

    aget v1, v7, v1

    if-ge v13, v1, :cond_1

    move v14, v10

    :goto_1
    add-int v1, v10, v12

    if-ge v14, v1, :cond_0

    const/4 v1, 0x1

    aget v1, v7, v1

    if-ge v14, v1, :cond_0

    aget-object v1, v6, v13

    const/4 v2, 0x1

    aput-boolean v2, v1, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_6

    const/4 v1, 0x1

    move/from16 v0, p3

    if-gt v0, v1, :cond_3

    const/4 v1, 0x1

    move/from16 v0, p4

    if-gt v0, v1, :cond_3

    const/4 v1, 0x0

    aget v1, p1, v1

    aget-object v1, v6, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    aget v13, p1, v1

    :goto_3
    const/4 v1, 0x0

    aget v1, p1, v1

    add-int v1, v1, p3

    if-ge v13, v1, :cond_6

    const/4 v1, 0x1

    aget v14, p1, v1

    :goto_4
    const/4 v1, 0x1

    aget v1, p1, v1

    add-int v1, v1, p4

    if-ge v14, v1, :cond_5

    aget-object v1, v6, v13

    aget-boolean v1, v1, v14

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    aget v4, v7, v1

    const/4 v1, 0x1

    aget v5, v7, v1

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v1

    goto :goto_2
.end method

.method private findEmptyCellHomeOnly(Landroid/content/Context;Landroid/graphics/Point;IIII[[ZZ)Landroid/graphics/Point;
    .locals 9

    const/4 v6, -0x1

    const/4 v7, -0x1

    mul-int v8, p5, p6

    add-int/lit8 v5, v8, -0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    rem-int v6, v0, p5

    div-int v7, v0, p5

    aget-object v8, p7, v6

    aget-boolean v8, v8, v7

    if-nez v8, :cond_0

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    return-object v8

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_2
    const/4 v8, -0x1

    if-le v0, v8, :cond_2

    rem-int v6, v0, p5

    div-int v7, v0, p5

    aget-object v8, p7, v6

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    mul-int v8, v7, p5

    add-int/2addr v8, v6

    add-int/lit8 v4, v8, 0x1

    if-le v4, v5, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    rem-int v8, v4, p5

    iput v8, p2, Landroid/graphics/Point;->x:I

    div-int v8, v4, p5

    iput v8, p2, Landroid/graphics/Point;->y:I

    :cond_5
    iget v7, p2, Landroid/graphics/Point;->y:I

    :goto_3
    sub-int v8, p6, p4

    if-gt v7, v8, :cond_c

    iget v6, p2, Landroid/graphics/Point;->x:I

    :goto_4
    sub-int v8, p5, p3

    if-gt v6, v8, :cond_b

    aget-object v8, p7, v6

    aget-boolean v8, v8, v7

    if-nez v8, :cond_a

    const/4 v2, 0x0

    move v1, v6

    :goto_5
    add-int v8, v6, p3

    if-ge v1, v8, :cond_7

    move v3, v7

    :goto_6
    add-int v8, v7, p4

    if-ge v3, v8, :cond_6

    aget-object v8, p7, v1

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_9

    :cond_7
    if-nez v2, :cond_a

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static findLastEmptyCell(Landroid/content/Context;[IIII)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    new-array v0, v7, [I

    invoke-static {p0, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    aget v7, v0, v6

    aget v8, v0, v5

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    invoke-static {p0, p2, v1}, Lcom/android/launcher2/LauncherModel;->fillOccupiedCellInfo(Landroid/content/Context;I[[Z)V

    const/4 v2, 0x0

    if-gt p3, v5, :cond_3

    if-gt p4, v5, :cond_3

    aget v7, v0, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    aget v8, v0, v5

    add-int/lit8 v8, v8, -0x1

    aget-boolean v7, v7, v8

    if-nez v7, :cond_1

    move v2, v5

    :goto_0
    if-eqz v2, :cond_6

    aget v7, v0, v5

    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-ltz v4, :cond_6

    aget v7, v0, v6

    add-int/lit8 v3, v7, -0x1

    :goto_2
    if-ltz v3, :cond_0

    aget-object v7, v1, v3

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_2

    const/4 v4, -0x1

    move v3, v4

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    aput v3, p1, v6

    aput v4, p1, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    aget v7, v0, v6

    sub-int v3, v7, p3

    :goto_3
    aget v7, v0, v6

    if-ge v3, v7, :cond_6

    aget v7, v0, v5

    sub-int v4, v7, p4

    :goto_4
    aget v7, v0, v5

    if-ge v4, v7, :cond_4

    aget-object v7, v1, v3

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_5

    const/4 v2, 0x0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return v2
.end method

.method public static findNearEmptyCell(Landroid/content/Context;[IIII)Z
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->findNearEmptyCell(Landroid/content/Context;[IIIIII)Z

    move-result v0

    return v0
.end method

.method public static findNearEmptyCell(Landroid/content/Context;[IIIIII)Z
    .locals 15

    const/4 v1, 0x2

    new-array v7, v1, [I

    invoke-static {p0, v7}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    move/from16 v0, p2

    invoke-static {p0, v0, v6}, Lcom/android/launcher2/LauncherModel;->fillOccupiedCellInfo(Landroid/content/Context;I[[Z)V

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v1, "tempScreen"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_1

    const-string v1, "tempCellX"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "tempCellY"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "tempSpanX"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v1, "tempSpanY"

    const/4 v2, -0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    move v13, v9

    :goto_0
    add-int v1, v9, v11

    if-ge v13, v1, :cond_1

    const/4 v1, 0x0

    aget v1, v7, v1

    if-ge v13, v1, :cond_1

    move v14, v10

    :goto_1
    add-int v1, v10, v12

    if-ge v14, v1, :cond_0

    const/4 v1, 0x1

    aget v1, v7, v1

    if-ge v14, v1, :cond_0

    aget-object v1, v6, v13

    const/4 v2, 0x1

    aput-boolean v2, v1, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget v4, v7, v1

    const/4 v1, 0x1

    aget v5, v7, v1

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->findNearVacantCell([IIIII[[Z)Z

    move-result v1

    return v1
.end method

.method protected static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getCellCountX()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method public static getCellCountY()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2

    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getFestivalPageCountFromDb()I
    .locals 12

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "intent"

    aput-object v4, v2, v3

    const-string v3, "intent like ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "%component=com.sec.android.widget.myeventwidget/.MyEventWidgetProvider%"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFestivalPageCountFromDb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    :goto_0
    return v1

    :catch_0
    move-exception v8

    :try_start_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFestivalPageCountFromDb exception, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getFolderById(Landroid/content/Context;J)Lcom/android/launcher2/AppFolderItem;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v14, 0x0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "screen"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v3, "title"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    new-instance v15, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v15}, Lcom/android/launcher2/AppFolderItem;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-wide/from16 v0, p1

    iput-wide v0, v15, Lcom/android/launcher2/AppFolderItem;->mId:J

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v14, v15

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "folderId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_0
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v3, "screen"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v3, "cell"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v3, "title"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v3, "componentName"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Lcom/android/launcher2/AppItem;

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v8, Lcom/android/launcher2/AppItem;->mId:J

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v8, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v8, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v8}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    :catchall_1
    move-exception v3

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v14

    :catchall_2
    move-exception v3

    move-object v14, v15

    goto :goto_1
.end method

.method private getFolderID(Ljava/lang/String;J)J
    .locals 12

    const/4 v5, 0x2

    const-wide/16 v8, -0x1

    const-string v3, "profileId=? AND itemType=? AND title like ?"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object p1, v4, v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-wide v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string v1, "Launcher.Model"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private getFolderItems(JJLjava/util/ArrayList;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)I"
        }
    .end annotation

    const/4 v9, -0x1

    const-string v4, "profileId=? AND container=?"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v2, "intent"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string v2, "Launcher.Model"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v9

    :cond_2
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static getHomeFolderById(Landroid/content/Context;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v11, 0x0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    new-instance v12, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeFolderItem;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v12

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "container=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v3, "screen"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v3, "intent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    new-instance v18, Lcom/android/launcher2/searchapp/SelectItem;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v18

    invoke-direct {v0, v15, v3}, Lcom/android/launcher2/searchapp/SelectItem;-><init>(Landroid/content/Intent;Lcom/android/launcher2/BaseItem$Type;)V

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/android/launcher2/searchapp/SelectItem;->mId:J

    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/searchapp/SelectItem;->mScreen:I

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_3
    invoke-virtual {v10}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v11

    :catchall_0
    move-exception v3

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v11, v12

    goto :goto_2
.end method

.method public static getHomeItemById(J)Lcom/android/launcher2/HomeItem;
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    return-object v0
.end method

.method private getIconFromCursor([B)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x0

    :try_start_0
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "festival"

    aput-object v6, v4, v5

    const-string v5, "container=? and screen=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v12, Lcom/android/launcher2/HomeItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeItem;-><init>()V

    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v13

    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public static getLastItemScreen(Landroid/content/Context;)I
    .locals 11

    const/4 v8, -0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "screen"

    aput-object v4, v2, v3

    const-string v3, "container=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v10, -0x64

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "screen DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v1, "screen"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v9

    :try_start_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addShortcut exception, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method static getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel;->getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRestoredItemInfo(Landroid/content/Context;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Landroid/content/Intent;ILandroid/content/ComponentName;Landroid/content/pm/PackageManager;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 14

    new-instance v3, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v3}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->itemType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconType:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    and-int/lit8 v9, p4, 0x4

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-static {v9, v0, v3}, Lcom/android/launcher2/XmlBackup;->getRestoreDummyInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/BaseItem;)V

    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v3, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :cond_1
    :goto_2
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_e

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Lcom/android/launcher2/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_2
    :goto_3
    const/4 v4, 0x0

    if-eqz p5, :cond_3

    const-string v9, "com.samsung.knox.rcp.components"

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v4, 0x1

    :cond_3
    iget-boolean v9, v3, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-eqz v9, :cond_4

    if-nez v4, :cond_4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p3

    invoke-static {p1, v1, v0}, Lcom/android/launcher2/Utilities;->getDrawableForIconTray(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v10

    iget v10, v10, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v1, v9, v10, v11}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v12, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v13, v3, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/launcher2/PkgResCache;->cachePackageInstallInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->itemType:I

    invoke-static {v9}, Lcom/android/launcher2/HomeItem;->mapDbValueToType(I)Lcom/android/launcher2/BaseItem$Type;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    move/from16 v0, p4

    iput v0, v3, Lcom/android/launcher2/HomeShortcutItem;->status:I

    return-object v3

    :pswitch_0
    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconResource:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_6
    new-instance v9, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v9}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v9, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v6, v9, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    :try_start_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v9, v7, v2, v6}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_4
    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v3, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor([B)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_6
    iput-boolean v9, v3, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_b
    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_c

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor([B)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, v3, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :cond_c
    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v10, v3, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v3, v0, v10, v11}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/HomeShortcutItem;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Z)V

    goto/16 :goto_2

    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    :cond_e
    and-int/lit8 v9, p4, 0x2

    if-nez v9, :cond_f

    and-int/lit8 v9, p4, 0x20

    if-eqz v9, :cond_2

    :cond_f
    iget-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/launcher2/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    :catch_0
    move-exception v9

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSDCardShortcutInfo(Landroid/content/pm/PackageManager;Landroid/database/Cursor;ILandroid/content/ComponentName;Z)Lcom/android/launcher2/HomeShortcutItem;
    .locals 9

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2000

    invoke-virtual {p1, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    new-instance v3, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v3, v7}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    move-object v7, v6

    :goto_0
    :try_start_1
    iput-object v7, v3, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v7}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object v2, v3

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    if-eqz p5, :cond_0

    new-instance v2, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v2, v7}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    if-nez p2, :cond_2

    :goto_3
    iput-object v6, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v6}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method public static getWidgetItemByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static declared-synchronized getWidgetProviders(Landroid/content/Context;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const-class v8, Lcom/android/launcher2/LauncherModel;

    monitor-enter v8

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v7, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getUser(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    new-instance v9, Lcom/android/launcher2/PkgResCache$CacheKey;

    iget-object v10, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v9, v10, v4}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v3, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Landroid/os/TransactionTooLargeException;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v8

    return-object v2

    :cond_2
    :try_start_3
    sput-object v3, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    :cond_3
    sget-object v7, Lcom/android/launcher2/LauncherModel;->sBgWidgetProviders:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static getWorkerLooper()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private getWorkspaceID(Landroid/content/ComponentName;IJ)J
    .locals 13

    const-wide/16 v10, -0x1

    const-string v3, "profileId=? AND container=? AND intent like ?"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%component="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";end%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-wide v10

    :catch_0
    move-exception v7

    :try_start_1
    const-string v1, "Launcher.Model"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private isDensityChanged(Landroid/content/res/Resources;)Z
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDensityChanged, previous density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocaleChanged(Landroid/content/res/Configuration;)Z
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocaleChanged, locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkCodeChanged(Landroid/content/res/Configuration;)Z
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNetworkCodeChanged. mcc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidStateInKnoxMode(Lcom/android/launcher2/compat/UserHandleCompat;)Z
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidStateInKnoxMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V
    .locals 10

    iget-object v5, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_1

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open move Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    :cond_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v8}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_1

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while accessing movie Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private makeDBvalue(Landroid/content/Context;Landroid/content/ContentValues;JLcom/android/launcher2/compat/LauncherActivityInfoCompat;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p5}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p5}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "_id"

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v3, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanX"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanY"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "title"

    invoke-virtual {p5}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "intent"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "profileId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V
    .locals 6

    const/4 v4, -0x1

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput p7, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput p8, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    const-wide/16 v2, -0x65

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    if-gez p4, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v4, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v4, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "spanX"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "screen"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "festival"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0, v0, p1, p9}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    return-void
.end method

.method public static moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    new-instance v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    iget v6, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    iput v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->festival:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    new-instance v4, Lcom/android/launcher2/LauncherModel$7;

    invoke-direct {v4, v0, v3}, Lcom/android/launcher2/LauncherModel$7;-><init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :cond_1
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method protected static onlyFindFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method private removeHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "ChangeTphoneMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeHomeItem item container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/launcher2/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v2, "ChangeTphoneMode"

    const-string v3, "cellHome is null. removeHomeItem return false."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUnRestoredAppsItems(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V
    .locals 30

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v27

    const/4 v12, 0x0

    const-string v7, "restored=?"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-nez v4, :cond_1

    const-string v4, "Launcher.Model"

    const-string v5, "all apps not loaded. update restored value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "restored"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "Launcher.Model"

    const-string v5, "start appOrder query"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "componentName"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "profileId"

    aput-object v5, v6, v4

    :try_start_0
    sget-object v5, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object/from16 v4, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v11, 0x0

    if-eqz v23, :cond_2

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    :cond_2
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v26

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apps restore item is enabled "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apps restore item "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " is no have main activity"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v11, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v13

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appOrder query complete. remove count : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " / update count : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PkgResCache$CacheKey;

    const-string v5, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "appOrder remove package "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v5, v9, v0}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    :cond_6
    :try_start_3
    new-instance v16, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v11, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_8
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_9
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v4, v4, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v0, v4, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    :cond_a
    if-eqz v21, :cond_b

    move-object/from16 v22, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v5, Lcom/android/launcher2/LauncherModel$34;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/LauncherModel$34;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_b
    if-eqz v21, :cond_c

    const-string v24, "removed"

    move-object/from16 v17, v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v5, Lcom/android/launcher2/LauncherModel$35;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/LauncherModel$35;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appOrder update restored value "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "restored"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/android/launcher2/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private removeUnRestoredHomeItems(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherAppsCompat;Landroid/content/ContentResolver;)V
    .locals 38

    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "itemType"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "intent"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "profileId"

    aput-object v5, v6, v4

    const-string v7, "restored=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v36

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-nez v4, :cond_3

    const-string v4, "Launcher.Model"

    const-string v5, "workspace not loaded. update restored value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "restored"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v33, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_HOMEONLY:Landroid/net/Uri;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v33, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_HOMEAPPS:Landroid/net/Uri;

    :cond_1
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update restored value to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "restored"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v4, "Launcher.Model"

    const-string v5, "start favorites query"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object/from16 v4, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_c

    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    if-eqz v25, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v24

    :cond_4
    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    move-object/from16 v0, v36

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v35

    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v19

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "favorites query complete. remove count : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " / update count : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/HomeItem;

    if-eqz v26, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    const/16 v20, 0x0

    move-object/from16 v0, v26

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, -0x64

    cmp-long v4, v12, v14

    if-eqz v4, :cond_7

    move-object/from16 v0, v26

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, -0x65

    cmp-long v4, v12, v14

    if-eqz v4, :cond_7

    move-object/from16 v0, v26

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, -0x1

    cmp-long v4, v12, v14

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, v26

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_d

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_7
    :goto_4
    move-object/from16 v21, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v9, Lcom/android/launcher2/LauncherModel$32;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-direct {v9, v0, v1, v2}, Lcom/android/launcher2/LauncherModel$32;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {v4, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_8
    :try_start_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4

    :cond_a
    :try_start_3
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_c
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    const/4 v9, 0x2

    if-ne v4, v9, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v20, :cond_f

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    if-eqz v11, :cond_f

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v12, v11, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v4, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v4, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v4, v11, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-wide v12, v11, Lcom/android/launcher2/HomeItem;->container:J

    iget v14, v11, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v15, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v0, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v17}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v30, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v9, Lcom/android/launcher2/LauncherModel$33;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v9, v0, v1}, Lcom/android/launcher2/LauncherModel$33;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/HomeFolderItem;)V

    invoke-virtual {v4, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_10
    const-string v4, "Launcher.Model"

    const-string v5, "directly remove db item"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Lcom/android/launcher2/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_11
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update restored value "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "restored"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Lcom/android/launcher2/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;J)Z
    .locals 17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    :goto_0
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    sget-object v2, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "title=? and profileId=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v2, "intent"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v14, 0x1

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return v14

    :cond_4
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private startLoader(ZZZZ)V
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoader. isLaunching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; forceRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; FestivalLoader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;ZZZ)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$6;-><init>(Lcom/android/launcher2/LauncherProvider;Ljava/util/List;)V

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 7

    const-string v4, "container"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot change container field for item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/LauncherModel$8;

    invoke-direct {v2, v0, v3, p3}, Lcom/android/launcher2/LauncherModel$8;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget v1, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    return-void
.end method

.method private static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
    .locals 8

    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->mId:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v0, Lcom/android/launcher2/LauncherModel$5;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel$5;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/HomeItem;[Ljava/lang/StackTraceElement;)V

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateWidgetsIfNecessary()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/LauncherModel$30;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherModel$30;-><init>()V

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0

    sput p0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    sput p1, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return-void
.end method

.method private updateZeroPageStatus(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ZeroPageUtils;->initZeroPageFeature(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageUtils;->loadZeropageAppItem()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getsaveZeroPagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveHomeZeroPageOnOffState(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateZeroPageDefaultBg()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->updateZeroPageSwitch()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->setupHomeZeroPageDual()V

    :cond_1
    return-void
.end method


# virtual methods
.method public ChangeCallapp(Lcom/android/launcher2/HomeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v2, 0x7f0c0018

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v11, 0x0

    :goto_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    iget-wide v2, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v7, v4, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel;->setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeItem;

    move-result-object v12

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    const/4 v11, 0x0

    :goto_2
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    iget-wide v2, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    iget v2, v4, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v7, v4, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel;->setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeItem;

    move-result-object v12

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v8}, Lcom/android/launcher2/LauncherModel;->changeHomeItem(Lcom/android/launcher2/HomeView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method public ChangeTphoneMode(Lcom/android/launcher2/HomeView;)V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/LauncherFeature;->getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_settings"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ChangeTphoneMode"

    const-string v1, "OEM -> T phone app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->ChangeCallapp(Lcom/android/launcher2/HomeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ChangeTphoneMode"

    const-string v1, "T -> OEM phone app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p0

    move-object v7, p1

    move-object v8, v4

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/LauncherModel;->ChangeCallapp(Lcom/android/launcher2/HomeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HomeViewCount()I
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public WidgetCount()I
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public addAndBindWorkFolder(Landroid/content/Context;Lcom/android/launcher2/HomeFolderItem;IIII)V
    .locals 12

    int-to-long v10, p3

    iput-wide v10, p2, Lcom/android/launcher2/HomeFolderItem;->container:J

    move/from16 v0, p4

    iput v0, p2, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    move/from16 v0, p5

    iput v0, p2, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    move/from16 v0, p6

    iput v0, p2, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2, p1, v5}, Lcom/android/launcher2/HomeFolderItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string v3, "iconType"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "icon"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "iconMovieUri"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherApplication;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v9

    :cond_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v10

    iput-wide v10, p2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    const-string v3, "_id"

    iget-wide v10, p2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v3, p2, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v6, p2, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual {p2, v5, v3, v6}, Lcom/android/launcher2/HomeFolderItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v10, p2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: HomeItem id ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, p2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ") passed to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "addAndBindWorkFolder already exists."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/launcher2/HomeFolderItem;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v2, Lcom/android/launcher2/LauncherModel$24;

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel$24;-><init>(Lcom/android/launcher2/LauncherModel;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/android/launcher2/HomeFolderItem;[Ljava/lang/StackTraceElement;)V

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeShortcutItem;->setNeetToIconVI(Z)V

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-eqz v8, :cond_0

    iput-object v8, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_0
    move-object v0, p1

    move-wide v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    iput-object v9, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    return-object v1
.end method

.method public declared-synchronized addShortcutHomeOnlyFromDeleteFolder(Lcom/android/launcher2/HomeItem;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/BaseItem$Type;)V
    .locals 45

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    new-array v0, v5, [I

    move-object/from16 v36, v0

    const/16 v32, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    check-cast v24, Lcom/android/launcher2/LauncherApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v25, 0x0

    :try_start_1
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "screen"

    aput-object v8, v6, v7

    const-string v7, "container=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v13, -0x64

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v9

    const-string v9, "screen DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    if-eqz v25, :cond_0

    const-string v5, "screen"

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v32

    :cond_0
    if-eqz v25, :cond_1

    :try_start_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_1
    const/16 v35, -0x1

    const/16 v34, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v14, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v5, 0x0

    aget v10, v28, v5

    const/4 v5, 0x1

    aget v11, v28, v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getBriefingScreenCount()I

    move-result v6

    sub-int v44, v5, v6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v44, v44, -0x1

    :cond_2
    move/from16 v0, v44

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFestivalPageCountFromDb()I

    move-result v5

    sub-int v40, v40, v5

    const-wide/16 v6, -0x64

    move/from16 v0, v40

    invoke-static {v14, v6, v7, v0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v38

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v23

    iget v6, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v0, v40

    if-ne v0, v6, :cond_3

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_0
    move-exception v33

    :try_start_3
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addShortcut exception, e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v25, :cond_4

    :try_start_4
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v5

    if-eqz v25, :cond_5

    :try_start_5
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5

    :cond_6
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9

    move/from16 v35, v40

    :cond_7
    :goto_2
    if-nez v34, :cond_8

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxPageCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dbMaxScreen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", screenMaxIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    move/from16 v0, v35

    if-eq v0, v5, :cond_a

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   state 0, emptyScreen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    aput v35, v36, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v36, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v36, v5

    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeItem;->clone()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/HomeItem;

    if-eqz v37, :cond_e

    const-wide/16 v6, -0x64

    move-object/from16 v0, v37

    iput-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v5, 0x0

    aget v5, v36, v5

    move-object/from16 v0, v37

    iput v5, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v5, 0x1

    aget v5, v36, v5

    move-object/from16 v0, v37

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v5, 0x2

    aget v5, v36, v5

    move-object/from16 v0, v37

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    const-wide/16 v6, -0x1

    move-object/from16 v0, v37

    iput-wide v6, v0, Lcom/android/launcher2/HomeItem;->mId:J

    move-object/from16 v15, v37

    iget-wide v0, v15, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v16, v0

    iget v0, v15, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v18, v0

    iget v0, v15, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v19, v0

    iget v0, v15, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v26, :cond_4

    new-instance v42, Lcom/android/launcher2/LauncherModel$21;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v15}, Lcom/android/launcher2/LauncherModel$21;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_9
    const-wide/16 v30, -0x64

    move/from16 v43, v40

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-static {v14, v10, v11, v0, v1}, Lcom/android/launcher2/LauncherModel;->buildOccupiedCellList(Landroid/content/Context;IILjava/util/ArrayList;I)[[Z

    move-result-object v12

    new-instance v7, Landroid/graphics/Point;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v7, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object v6, v14

    invoke-direct/range {v5 .. v13}, Lcom/android/launcher2/LauncherModel;->findEmptyCellHomeOnly(Landroid/content/Context;Landroid/graphics/Point;IIII[[ZZ)Landroid/graphics/Point;

    move-result-object v34

    if-eqz v34, :cond_7

    const/4 v5, 0x0

    aput v40, v36, v5

    const/4 v5, 0x1

    move-object/from16 v0, v34

    iget v6, v0, Landroid/graphics/Point;->x:I

    aput v6, v36, v5

    const/4 v5, 0x2

    move-object/from16 v0, v34

    iget v6, v0, Landroid/graphics/Point;->y:I

    aput v6, v36, v5

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v39

    add-int/lit8 v41, v40, 0x1

    if-nez v39, :cond_c

    const-string v5, "Launcher.Model"

    const-string v6, "   state 1, launcher is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v41, 0x1

    invoke-static {v14, v5}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    :cond_b
    :goto_4
    const/4 v5, 0x0

    aput v41, v36, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v36, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v36, v5

    goto/16 :goto_3

    :cond_c
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_d

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v5, :cond_d

    const-string v5, "Launcher.Model"

    const-string v6, "   state 2, insert FestivalPage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v42, Lcom/android/launcher2/LauncherModel$19;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$19;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;I)V

    :goto_5
    if-eqz v42, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_d
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   state 3, screen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v42, Lcom/android/launcher2/LauncherModel$20;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$20;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;)V

    goto :goto_5

    :cond_e
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_4

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addShortcutHomeOnlyFromDeleteFolder() failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public addShortcutManagedProfile(Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v2, p2, v7, v3}, Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnly(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/launcher2/LauncherModel;->findVacantCell(Landroid/content/Context;ZZZ)[I

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v0, 0x0

    aget v4, v10, v0

    const/4 v0, 0x1

    aget v5, v10, v0

    const/4 v0, 0x2

    aget v6, v10, v0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;IIILcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addShortcutToFolder(Lcom/android/launcher2/HomeFolderItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/HomeFolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher2/LauncherModel$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher2/LauncherModel$23;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public afterLoadAllApps(Landroid/content/Context;)V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    invoke-virtual {v4}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static {p1, v3}, Lcom/android/launcher2/ManagedProfileHeuristic;->get(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/ManagedProfileHeuristic;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ManagedProfileHeuristic;->processUserApps(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Lcom/android/launcher2/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method public checkAFWAppWidgetChanged()V
    .locals 8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    invoke-virtual {v4}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    const-wide/16 v6, 0xa

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v6, v1, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher2/HomePendingWidget;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkSingleInstance(Ljava/lang/String;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_1

    const-string v1, "checkSingleInstance"

    const-string v4, "pkgName is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "checkSingleInstance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " is exist in sAppWidgets. appwidget id is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v7, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " screen = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v7, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " cellX = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v7, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " cellY = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v7, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " spanX = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v7, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " spanY = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v7, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "itemType=4 AND intent like ?"

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "appWidgetId"

    aput-object v1, v2, v9

    const-string v1, "screen"

    aput-object v1, v2, v10

    const-string v1, "cellX"

    aput-object v1, v2, v11

    const-string v1, "cellY"

    aput-object v1, v2, v12

    const-string v1, "spanX"

    aput-object v1, v2, v13

    const/4 v1, 0x5

    const-string v4, "spanY"

    aput-object v4, v2, v1

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%component="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "checkSingleInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget is in DB. appwidget id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spanX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spanY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public dumpState()V
    .locals 4

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Launcher.Model"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findFolderById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 3

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method public declared-synchronized findNearVacantCell(Landroid/content/Context;ZZZIII)[I
    .locals 16

    monitor-enter p0

    const/4 v14, 0x3

    :try_start_0
    new-array v8, v14, [I

    const/4 v14, 0x2

    new-array v6, v14, [I

    move/from16 v5, p5

    if-nez p3, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->findNearEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v13, v13, 0x1

    :cond_0
    move v9, v13

    :goto_0
    if-ge v9, v12, :cond_2

    if-nez v7, :cond_2

    if-eq v9, v5, :cond_1

    move/from16 p5, v9

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v6, v1}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v7

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_5

    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    move/from16 p5, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v6, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v6, v14

    :cond_4
    const/4 v14, 0x0

    aput p5, v8, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aget v15, v6, v15

    aput v15, v8, v14

    const/4 v14, 0x2

    const/4 v15, 0x1

    aget v15, v6, v15

    aput v15, v8, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v8

    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v10

    if-nez v10, :cond_6

    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_6
    :try_start_2
    sget-boolean v14, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v14, :cond_7

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v14, :cond_7

    new-instance v11, Lcom/android/launcher2/LauncherModel$27;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10, v12}, Lcom/android/launcher2/LauncherModel$27;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;I)V

    :goto_2
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    new-instance v11, Lcom/android/launcher2/LauncherModel$28;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/android/launcher2/LauncherModel$28;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized findVacantCell(Landroid/content/Context;ZZZ)[I
    .locals 13

    monitor-enter p0

    const/4 v11, 0x3

    :try_start_0
    new-array v4, v11, [I

    const/4 v11, 0x2

    new-array v2, v11, [I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    move v8, v1

    if-nez p3, :cond_4

    invoke-static {p1, v2, v8}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v11

    if-eqz v11, :cond_0

    add-int/lit8 v10, v10, 0x1

    :cond_0
    move v5, v10

    :goto_0
    if-ge v5, v9, :cond_2

    if-nez v3, :cond_2

    if-eq v5, v1, :cond_1

    move v8, v5

    invoke-static {p1, v2, v8}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_5

    add-int/lit8 v11, v9, 0x1

    invoke-static {p1, v11}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    move v8, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v2, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v2, v11

    :cond_4
    const/4 v11, 0x0

    aput v8, v4, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget v12, v2, v12

    aput v12, v4, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    aget v12, v2, v12

    aput v12, v4, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_5
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v6

    if-nez v6, :cond_6

    add-int/lit8 v11, v9, 0x1

    invoke-static {p1, v11}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_6
    :try_start_2
    sget-boolean v11, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v11, :cond_7

    sget-boolean v11, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v11, :cond_7

    new-instance v7, Lcom/android/launcher2/LauncherModel$25;

    invoke-direct {v7, p0, v6, v9}, Lcom/android/launcher2/LauncherModel$25;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;I)V

    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    new-instance v7, Lcom/android/launcher2/LauncherModel$26;

    invoke-direct {v7, p0, v6}, Lcom/android/launcher2/LauncherModel$26;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected forceReload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRequireRefreshAll:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    return-void
.end method

.method public getCallback()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and itemType=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v12

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v12, Lcom/android/launcher2/HomeFolderItem;->container:J

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v12

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected getShortcutInfo(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 21

    const-string v2, "Launcher.Model"

    const-string v3, "getShortcutInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    new-instance v12, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v15

    if-eqz v6, :cond_0

    move-object/from16 v0, p10

    invoke-virtual {v15, v6, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_0
    move-object/from16 v0, p6

    iput-object v0, v12, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    packed-switch p2, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :goto_0
    invoke-virtual {v12, v10}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v16

    new-instance v18, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    if-nez v6, :cond_b

    const/4 v14, 0x1

    :goto_2
    if-eqz v18, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/android/launcher2/AvailableWidgetListProvider;->isShortcutWidget(Ljava/lang/String;)Z

    move-result v14

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v14, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_2
    :goto_3
    if-eqz v12, :cond_5

    if-eqz v10, :cond_3

    invoke-virtual {v12, v10}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_3
    if-eqz p7, :cond_4

    invoke-static/range {p7 .. p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v12, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v12, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static/range {p9 .. p9}, Lcom/android/launcher2/HomeItem;->isAppShortcutInDetail(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    new-instance v3, Lcom/android/launcher2/BadgeCache$CacheKey;

    move-object/from16 v0, p10

    invoke-direct {v3, v6, v0}, Lcom/android/launcher2/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Lcom/android/launcher2/BadgeCache$CacheKey;)I

    move-result v2

    iput v2, v12, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    :cond_5
    return-object v12

    :pswitch_0
    move-object/from16 v17, p3

    move-object/from16 v19, p4

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :try_start_0
    move-object/from16 v0, p8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v20

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v11, v1}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    :cond_6
    :goto_4
    if-nez v10, :cond_7

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p5

    array-length v3, v0

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    :cond_7
    :goto_5
    if-nez v10, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortcutInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p5

    array-length v3, v0

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    :goto_6
    if-nez v10, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortcutInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p8

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel;->getSDCardShortcutInfo(Landroid/content/pm/PackageManager;Landroid/database/Cursor;ILandroid/content/ComponentName;Z)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v12

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    iput-object v2, v12, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_3

    :cond_d
    if-eqz v12, :cond_2

    iget-boolean v2, v12, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-eqz v2, :cond_2

    const/4 v13, 0x0

    if-eqz v6, :cond_e

    const-string v2, "com.samsung.knox.rcp.components"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v13, 0x1

    :cond_e
    if-nez v13, :cond_2

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v8, v2, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-static {v0, v8, v1}, Lcom/android/launcher2/Utilities;->getDrawableForIconTray(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    move-object/from16 v0, p1

    invoke-static {v8, v0, v2, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_3

    :catch_2
    move-exception v2

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZLcom/android/launcher2/BaseItem$Type;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 15

    if-nez p3, :cond_1

    const-string v2, "Launcher.Model"

    const-string v3, "Null user found in getShortcutInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing component found in getShortcutInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    new-instance v3, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p3

    invoke-direct {v3, v6, v0}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->getLauncherActivityInfoCompat(Lcom/android/launcher2/PkgResCache$CacheKey;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportCustomerLauncherJPN()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v9, v11

    :cond_4
    if-nez v9, :cond_5

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v6, v1}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v13

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-object/from16 v0, p3

    invoke-virtual {v2, v13, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v9

    :cond_5
    if-nez v9, :cond_6

    if-nez p8, :cond_6

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing activity found in getShortcutInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v10

    new-instance v8, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, p9

    invoke-direct {v8, v0}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    move-object/from16 v0, p3

    invoke-virtual {v10, v6, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v14}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2, v6, v9, v14}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    if-eqz v8, :cond_0

    iget-object v2, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v2, v8, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v2, v8, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iget-object v2, v8, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v8, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    :cond_7
    iget-object v2, v8, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    new-instance v3, Lcom/android/launcher2/BadgeCache$CacheKey;

    move-object/from16 v0, p3

    invoke-direct {v3, v6, v0}, Lcom/android/launcher2/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Lcom/android/launcher2/BadgeCache$CacheKey;)I

    move-result v2

    iput v2, v8, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto/16 :goto_0

    :cond_9
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel;->getSDCardShortcutInfo(Landroid/content/pm/PackageManager;Landroid/database/Cursor;ILandroid/content/ComponentName;Z)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v8

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    goto/16 :goto_0
.end method

.method public handleRestoreComplete(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Launcher.Model"

    const-string v1, "handleRestoreComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherModel;->removeUnRestoredItems(Landroid/content/Context;)V

    return-void
.end method

.method protected hasNetworkAndLocaleChangedLocked()Z
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherModel;->isNetworkCodeChanged(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherModel;->isLocaleChanged(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " hasNetworkAndLocaleChangedLocked. mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 30

    const-string v26, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    const-string v26, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v26, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    if-nez v15, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    const-string v27, "android.intent.action.MAIN"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    move-object/from16 v15, p2

    const/16 v17, 0x1

    :cond_0
    invoke-static {v15}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v6, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/PkgResCache;->getLauncherActivityInfoCompat(Lcom/android/launcher2/PkgResCache$CacheKey;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v19

    :cond_1
    new-instance v25, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    :cond_2
    :goto_0
    new-instance v14, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v17, :cond_e

    sget-object v26, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    :goto_1
    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    if-eqz v7, :cond_3

    if-eqz v11, :cond_3

    invoke-virtual {v14, v11}, Lcom/android/launcher2/HomeShortcutItem;->setCustomIcon(Landroid/graphics/Bitmap;)V

    :cond_3
    if-nez v11, :cond_4

    if-eqz p3, :cond_f

    move-object/from16 v11, p3

    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v20

    new-instance v23, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    const/16 v18, 0x0

    if-eqz v15, :cond_5

    if-eqz v23, :cond_5

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_10

    const/16 v18, 0x1

    :goto_3
    const-string v26, "Launcher.Model"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "infoFromShortcutIntent isWidgetShortcut : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v26

    if-nez v26, :cond_6

    if-nez v18, :cond_6

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_6
    :goto_4
    invoke-virtual {v14, v11}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    const-string v26, "photoUri"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/net/Uri;

    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    iget-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    :cond_7
    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iput-object v15, v14, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iput-boolean v7, v14, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    iput-object v12, v14, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    const-string v26, "userid"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    move-object/from16 v26, v0

    const-string v27, "userid"

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    :cond_8
    sget-boolean v26, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v26, :cond_9

    const-string v26, "Launcher.Model"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "title: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", intent: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", customIcon: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", iconResource: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    move-object/from16 v26, v0

    new-instance v27, Lcom/android/launcher2/BadgeCache$CacheKey;

    iget-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/android/launcher2/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Lcom/android/launcher2/BadgeCache$CacheKey;)I

    move-result v26

    move/from16 v0, v26

    iput v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    :cond_a
    return-object v14

    :cond_b
    instance-of v0, v4, Landroid/graphics/Bitmap;

    move/from16 v26, v0

    if-eqz v26, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-eqz v26, :cond_c

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, v26

    invoke-direct {v8, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    move/from16 v26, v0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v8, v0, v1, v2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_5
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_c
    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    move/from16 v26, v0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_5

    :cond_d
    const-string v26, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    instance-of v0, v10, Landroid/content/Intent$ShortcutIconResource;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    :try_start_0
    move-object v0, v10

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v12, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    if-eqz v22, :cond_2

    iget-object v0, v12, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v24

    iget-object v0, v12, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v26, v0

    iget-object v0, v12, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    const/4 v7, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    sget-boolean v26, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v26, :cond_2

    const-string v26, "Launcher.Model"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Could not load shortcut icon: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    sget-object v26, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    goto/16 :goto_1

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    const/16 v26, 0x1

    move/from16 v0, v26

    iput-boolean v0, v14, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->isShortcutWidget(Ljava/lang/String;)Z

    move-result v18

    goto/16 :goto_3

    :cond_11
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v26

    sget-object v27, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v26

    if-eqz v26, :cond_14

    invoke-static {v15}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v26

    if-nez v26, :cond_6

    new-instance v23, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    const/16 v18, 0x0

    if-eqz v15, :cond_13

    if-eqz v23, :cond_13

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->isShortcutWidget(Ljava/lang/String;)Z

    move-result v18

    :cond_12
    const-string v26, "Launcher.Model"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "infoFromShortcutIntent isWidgetShortcut : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-nez v18, :cond_6

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_4

    :cond_14
    if-eqz v7, :cond_6

    const/16 v16, 0x0

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    if-eqz v26, :cond_15

    const-string v26, "com.samsung.knox.rcp.components"

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    const/16 v16, 0x1

    :cond_15
    if-nez v16, :cond_6

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v8, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8, v15}, Lcom/android/launcher2/Utilities;->getDrawableForIconTray(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    move/from16 v26, v0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v8, v0, v1, v2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_4
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->hasNetworkAndLocaleChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->setNetworkAndLocaleLocked()V

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->onLocaleChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    :cond_0
    const-string v0, "Launcher.Model"

    const-string v2, "MenuAppModel.onLocaleChanged called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAllappsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method public loadAllAppsWithoutBinding(Lcom/android/launcher2/Folder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "loadAllAppsWithoutBinding - apps is not loaded, so we need to apps-loading. But we don\'t want bind apps view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/LauncherModel;->appsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$29;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/LauncherModel$29;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Folder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->showSearchAppListAfterLoadAllApps()V

    goto :goto_0
.end method

.method public makeHomeShortcutItem(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 7

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {p1, v4, p3}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v4}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p2, v3}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    :cond_0
    iget-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    new-instance v5, Lcom/android/launcher2/BadgeCache$CacheKey;

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {v5, v6, p3}, Lcom/android/launcher2/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Lcom/android/launcher2/BadgeCache$CacheKey;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeHomeShortcutItem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageAdded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel;->checkZeroPagePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/android/launcher2/LauncherModel;->updateZeroPageStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageAdded :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 4

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageChanged :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageRemoved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel;->checkZeroPagePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/android/launcher2/LauncherModel;->updateZeroPageStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageRemoved :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackagesAvailable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_2

    new-instance v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    invoke-direct {v0, p0, v3, p1, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesSuspended([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 2

    new-instance v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherModel;->isValidStateInKnoxMode(Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_0

    new-instance v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 2

    new-instance v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    sget-boolean v22, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v22, :cond_0

    const-string v22, "Launcher.Model"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onReceive intent="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v22, "rootbadgefeature"

    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/Utilities;->isSupportCHNFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "com.sec.intent.action.SYSSCOPESTATUS"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "Result"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/launcher2/LauncherModel;->isRootBadgeFeautre:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    move-object/from16 v22, v0

    sget-boolean v22, Lcom/android/launcher2/LauncherModel;->isRootBadgeFeautre:Z

    invoke-static/range {v22 .. v22}, Lcom/android/launcher2/BadgeCache;->setRootBadgeFeature(Z)V

    :cond_2
    const-string v22, "com.sec.android.widget.myeventwidget.FESTIVAL_CANCEL_ACTION"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    sget-boolean v22, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/launcher2/FestivalPageManager;->setFestivalPermissionEnabled(Lcom/android/launcher2/LauncherApplication;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteFestivalPage(Lcom/android/launcher2/Launcher;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v22, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/LauncherModel;->isNetworkCodeChanged(Landroid/content/res/Configuration;)Z

    move-result v16

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/LauncherModel;->isLocaleChanged(Landroid/content/res/Configuration;)Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel;->isDensityChanged(Landroid/content/res/Resources;)Z

    move-result v14

    if-eqz v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->setNetworkAndLocaleLocked()V

    sget-object v22, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v24, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel$IconTitleRefreshTask;-><init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;ZZ)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    monitor-exit v23

    goto :goto_0

    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    :cond_6
    if-eqz v15, :cond_8

    :try_start_1
    sget-object v22, Lcom/android/launcher2/utils/LiveIconUtils;->CALENDAR_ICON_PACKAGES:Ljava/util/List;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto :goto_1

    :cond_8
    if-eqz v14, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_9
    const-string v22, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string v22, "android.search.action.SEARCHABLES_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v22

    if-eqz v22, :cond_d

    const-string v22, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->updatePageCount()V

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherProvider;->getScreenIndex()I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v7, v0, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    :cond_c
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    :cond_d
    const-string v22, "android.intent.action.STK_TITLE_IS_LOADED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    const-string v22, "Launcher.Model"

    const-string v23, "STK Refresh : intent recieved by launcher model"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string v23, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getStkTitlefromSIM()Ljava/lang/String;

    move-result-object v5

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_e

    const-string v22, "NoSIM%"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    :cond_e
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_3

    const/16 v19, 0x2

    if-eqz v12, :cond_f

    new-instance v22, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    const/16 v24, 0x1

    const-string v25, "com.sec.android.app.latin.launcher.stk"

    aput-object v25, v23, v24

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    :cond_f
    new-instance v22, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    :cond_10
    const-string v22, "android.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "delete_db"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    sget-boolean v22, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v22, :cond_11

    const-string v22, "Launcher.Model"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Received CSC_CHAMELEON_UPDATE_LAUNCHER intent :: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v10, :cond_3

    const-string v22, "launcher.db"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    sget-boolean v22, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v22, :cond_12

    const-string v22, "Launcher.Model"

    const-string v23, "Launcher Database deleted successfully"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/os/Process;->killProcess(I)V

    new-instance v13, Landroid/content/Intent;

    const-class v22, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v22, 0x14000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v22, 0x200000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v22, "android.intent.category.HOME"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_13
    const-string v22, "Launcher.Model"

    const-string v23, "Unable to delete launcher database"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public putPendingPackages(Lcom/android/launcher2/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/LauncherSettings$FavoriteValue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Lcom/android/launcher2/LauncherSettings$FavoriteValue;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    iget-object v0, p3, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerSystemReadyReceiver(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;-><init>(Lcom/android/launcher2/LauncherModel;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.launcher2.SYSTEM_READY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public reloadBadges()V
    .locals 3

    const-string v1, "Launcher.Model"

    const-string v2, "reloadBadges entered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher2/LauncherModel$22;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$22;-><init>(Lcom/android/launcher2/LauncherModel;)V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeUnRestoredItems(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/launcher2/LauncherModel$31;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$31;-><init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetLoadedState(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeItem;
    .locals 6

    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v4, p2, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v4}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4, v0, p5}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p5}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget-object v4, p2, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-object v1
.end method

.method protected setNetworkAndLocaleLocked()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    sget-boolean v1, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNetworkAndLocaleLocked. mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setPackageState(Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;)V

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startLoader()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, v4}, Lcom/android/launcher2/FestivalPageManager;->isFestivalChanged(Lcom/android/launcher2/LauncherApplication;Z)Z

    move-result v1

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_sec_theme_package_festival_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6}, Lcom/android/launcher2/FestivalPageManager;->getCurrentFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, v4}, Lcom/android/launcher2/FestivalPageManager;->setFestivalPermissionEnabled(Lcom/android/launcher2/LauncherApplication;Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPermissionEnabled(Lcom/android/launcher2/LauncherApplication;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v4, v5, v1, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZZZ)V

    :goto_1
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4, v5, v1, v5}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZZZ)V

    goto :goto_1
.end method

.method public startLoaderFromBackground(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2, p1, v2, v2}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZZZ)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopLoader()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected stopLoaderLocked()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    :cond_1
    return v0
.end method

.method public unbindAllHomeItems()V
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$3;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method unbindAllHomeItemsOnMainThread()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateHiddenAddButtonInHomeFolder(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "HomeFolderIds"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/HomeFolderItem;->setHiddenAddButton(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v1, p2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updateSessionDisplayInfo(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "updateSessionDisplayInfo packageName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
