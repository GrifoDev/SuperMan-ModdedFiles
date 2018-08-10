.class public Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
.super Landroid/content/BroadcastReceiver;
.source "TaskBarModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$5;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$7;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;
    }
.end annotation


# static fields
.field protected static final DEBUGGABLE:Z

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

.field protected static final sHomeItemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/UserHandle;",
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

.field private final mAppsCanBeOnExternalStorage:Z

.field private final mBadgeCache:Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

.field protected volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigMccWhenLoaded:I

.field private volatile mConfigMncWhenLoaded:I

.field private mContext:Landroid/content/Context;

.field protected mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private volatile mLoaderTask:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

.field private volatile mLocaleWhenLoaded:Ljava/lang/String;

.field protected final mLock:Ljava/lang/Object;

.field protected final mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

.field protected volatile mRefreshRequired:Z

.field protected final mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

.field protected final mTaskbarLoader:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

.field protected final mUserManager:Landroid/os/UserManager;

.field protected volatile mWorkspaceLoaded:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mBadgeCache:Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLoaderTask:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLoaderTask:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->isNotAvailableApps(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "desktop-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sPendingPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItemIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sHomeItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sDbIconCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mHandler:Lcom/android/systemui/statusbar/phone/taskbar/model/DeferredHandler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mAppsCanBeOnExternalStorage:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mBadgeCache:Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskbarLoader:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static addItemToDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JIZ)V
    .locals 8

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[DS]TaskBarpModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addItemToDatabase :: container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  ::  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide p2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput p4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->generateNewFavoritesId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    const-string/jumbo v4, "_id"

    iget-wide v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$1;

    invoke-direct {v2, v1, v3, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;Landroid/content/ContentValues;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JI)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JIZ)V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "moveItemInDatabase"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JILjava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v1

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]TaskBarpModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteItemFromDatabase :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;

    invoke-direct {v2, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private enqueuePackageUpdated(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, p3, v2, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->CreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    return-object v3
.end method

.method private isNotAvailableApps(Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :goto_0
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v4, :cond_4

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_4

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    if-nez v3, :cond_5

    :cond_0
    :goto_3
    return v2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    return v8

    :catch_0
    move-exception v1

    return v8
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JILjava/lang/String;)V
    .locals 4

    iput-wide p2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput p4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "container"

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "screen"

    iget v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0, v0, p1, p5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Ljava/lang/String;)V

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
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;-><init>()V

    iget-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    iput-wide v6, v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->id:J

    iget-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput-wide v6, v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->container:J

    iget v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iput v6, v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->screen:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :cond_1
    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private startLoader(ZZ)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarpModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLoader. isLaunching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; forceRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLoaderTask:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLoaderTask:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string/jumbo v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Ljava/lang/String;)V

    return-void
.end method

.method private static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Ljava/lang/String;)V
    .locals 8

    iget-wide v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/SystemUIApplication;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v1

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;JLandroid/content/ContentValues;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public forceReload()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->resetLoadedState(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->startLoaderFromBackground(Z)V

    return-void
.end method

.method public hasLocaleChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->hasLocaleChangedLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected hasLocaleChangedLocked()Z
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mWorkspaceLoaded:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMccWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "[DS]TaskBarpModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mWorkspaceLoaded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mWorkspaceLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mAllAppsLoaded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mAllAppsLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " hasLocaleChangedLocked. mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; return: "

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
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMncWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    goto/16 :goto_0
.end method

.method public initialize(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "[DS]TaskBarpModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v1, 0x2

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v2, v8, v10

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v7, p0, v1, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;I[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->enqueuePackageUpdated(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string/jumbo v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v4, :cond_7

    const/4 v1, 0x3

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_9
    const-string/jumbo v7, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_a
    const-string/jumbo v7, "android.intent.extra.user_handle"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v7, v3

    if-nez v7, :cond_c

    :cond_b
    return-void

    :cond_c
    const/4 v1, 0x0

    const-string/jumbo v7, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v1, 0x6

    :cond_d
    :goto_2
    if-eqz v1, :cond_5

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v7, p0, v1, v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;I[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->enqueuePackageUpdated(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;)V

    goto :goto_1

    :cond_e
    const-string/jumbo v7, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v1, 0x7

    goto :goto_2

    :cond_f
    const-string/jumbo v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v7, p0, v9, v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;I[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->enqueuePackageUpdated(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string/jumbo v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    return-void

    :cond_12
    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v9, 0x5

    invoke-direct {v7, p0, v9, v3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;I[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->enqueuePackageUpdated(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;)V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->hasLocaleChanged()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v7, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string/jumbo v7, "android.intent.extra.USER"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    new-array v8, v10, [Ljava/lang/String;

    const/16 v9, 0x8

    invoke-direct {v7, p0, v9, v8, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;I[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->enqueuePackageUpdated(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;)V

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v7, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string/jumbo v7, "android.intent.extra.USER"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;

    new-array v8, v10, [Ljava/lang/String;

    const/16 v9, 0x9

    invoke-direct {v7, p0, v9, v8, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;I[Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->enqueuePackageUpdated(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$PackageUpdatedTask;)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v7, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string/jumbo v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->forceResetAndReload()V

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v7, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->forceResetAndReload()V

    goto/16 :goto_1
.end method

.method protected queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/database/Cursor;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->customIcon:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public reloadBadges()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public resetLoadedState(ZZ)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->stopLoaderLocked()Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mAllAppsLoaded:Z

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mWorkspaceLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected setLocaleLocked()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMccWhenLoaded:I

    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMncWhenLoaded:I

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLocaleWhenLoaded:Ljava/lang/String;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]TaskBarpModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLocaleLocked. mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public startLoader()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->startLoader(ZZ)V

    return-void
.end method

.method public startLoaderFromBackground(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->startLoader(ZZ)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->stopLoaderLocked()Z

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mRefreshRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected stopLoaderLocked()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLoaderTask:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->mLoaderTask:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$LoaderTask;->stopLocked()V

    :cond_1
    return v0
.end method
