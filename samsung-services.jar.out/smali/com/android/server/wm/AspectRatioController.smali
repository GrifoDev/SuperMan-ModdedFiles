.class public Lcom/android/server/wm/AspectRatioController;
.super Ljava/lang/Object;
.source "AspectRatioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AspectRatioController$1;,
        Lcom/android/server/wm/AspectRatioController$2;,
        Lcom/android/server/wm/AspectRatioController$3;,
        Lcom/android/server/wm/AspectRatioController$4;,
        Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;,
        Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;,
        Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "AspectRatioController"


# instance fields
.field private final DIR_PATH:Ljava/lang/String;

.field private final FHD_INITIAL_RESOLUTION_DEVICE:I

.field private final FILE_NAME:Ljava/lang/String;

.field private final HD_INITIAL_RESOLUTION_DEVICE:I

.field private final MSG_HIDE_CHANGE_RATIO_WINDOW:I

.field private final MSG_KILL_APPLICATION:I

.field private final MSG_SAVE_PACKAGES_NOW:I

.field private final MSG_SHOW_CHANGE_RATIO_WINDOW:I

.field private final NAV_BAR_BOTTOM:I

.field private final NAV_BAR_LEFT:I

.field private final NAV_BAR_RIGHT:I

.field private final QWHD_INITIAL_RESOLUTION_DEVICE:I

.field private final TIME_FOR_KILL_APPLICATION:I

.field private final TIME_FOR_SAVE_PACKAGES:I

.field private mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

.field private mAspectRatioDir:Ljava/io/File;

.field private mChangeRatioButtonView:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

.field private mChangeRatioButtonViewShowing:Z

.field private mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mChangeRatioWindowPosition:I

.field private mChangeRatioWindowSize:I

.field private mCurrentTopActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mCurrentTopFullOpaquePkg:Ljava/lang/String;

.field private mCurrentTopFullOpaqueUid:I

.field private final mGuideDialogPopupRunnable:Ljava/lang/Runnable;

.field private final mGuideToastPopupRunnable:Ljava/lang/Runnable;

.field private mLastReLaunchUserId:I

.field private mLastTopFullOpaquePkg:Ljava/lang/String;

.field private mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

.field private mMaxAspectMapsForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/AspectRatioPackageMap;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mReLaunchTaskId:I

.field private final mRelaunchTaskRunnable:Ljava/lang/Runnable;

.field mSavePackageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/wm/SamsungWindowManagerService;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioButtonView:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wm/AspectRatioController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/AspectRatioController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioButtonViewShowing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/AspectRatioController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowPosition:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/AspectRatioController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/AspectRatioController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/AspectRatioController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaqueUid:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/AspectRatioController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mLastReLaunchUserId:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wm/AspectRatioController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mReLaunchTaskId:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wm/AspectRatioController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mRelaunchTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/AspectRatioController;Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioButtonView:Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/AspectRatioController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioButtonViewShowing:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wm/AspectRatioController;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController;->mLastTopFullOpaquePkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/AspectRatioController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->killApplication(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/AspectRatioController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->saveAspectRatioPackageMap(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wm/AspectRatioController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->showGuidePopup(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/system/conventionalmode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    const-string/jumbo v0, "PackageMap"

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->FILE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;-><init>(Lcom/android/server/wm/AspectRatioController;)V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioButtonViewShowing:Z

    iput v3, p0, Lcom/android/server/wm/AspectRatioController;->NAV_BAR_BOTTOM:I

    iput v4, p0, Lcom/android/server/wm/AspectRatioController;->NAV_BAR_RIGHT:I

    iput v5, p0, Lcom/android/server/wm/AspectRatioController;->NAV_BAR_LEFT:I

    iput v4, p0, Lcom/android/server/wm/AspectRatioController;->HD_INITIAL_RESOLUTION_DEVICE:I

    iput v5, p0, Lcom/android/server/wm/AspectRatioController;->FHD_INITIAL_RESOLUTION_DEVICE:I

    iput v6, p0, Lcom/android/server/wm/AspectRatioController;->QWHD_INITIAL_RESOLUTION_DEVICE:I

    new-instance v0, Lcom/android/server/wm/AspectRatioController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AspectRatioController$1;-><init>(Lcom/android/server/wm/AspectRatioController;)V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mGuideDialogPopupRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/AspectRatioController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AspectRatioController$2;-><init>(Lcom/android/server/wm/AspectRatioController;)V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mGuideToastPopupRunnable:Ljava/lang/Runnable;

    iput v4, p0, Lcom/android/server/wm/AspectRatioController;->MSG_SAVE_PACKAGES_NOW:I

    iput v5, p0, Lcom/android/server/wm/AspectRatioController;->MSG_KILL_APPLICATION:I

    iput v6, p0, Lcom/android/server/wm/AspectRatioController;->MSG_SHOW_CHANGE_RATIO_WINDOW:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->MSG_HIDE_CHANGE_RATIO_WINDOW:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->TIME_FOR_SAVE_PACKAGES:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->TIME_FOR_KILL_APPLICATION:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/AspectRatioController$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AspectRatioController$3;-><init>(Lcom/android/server/wm/AspectRatioController;)V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowPosition:I

    iput v3, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopActivityInfo:Landroid/content/pm/ActivityInfo;

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->mReLaunchTaskId:I

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->mLastReLaunchUserId:I

    new-instance v0, Lcom/android/server/wm/AspectRatioController$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AspectRatioController$4;-><init>(Lcom/android/server/wm/AspectRatioController;)V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mRelaunchTaskRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private adjustWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowPosition:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkCallerIsSystemOrPermission()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.MANAGE_MAXASPECT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial:  from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.permission.MANAGE_MAXASPECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "AspectRatioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxAspect : clear package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private disableMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxAspect : disable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/AspectRatioPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxAspect : enable package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/AspectRatioPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private excludeAspectRatio(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AspectRatioPackageMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/AspectRatioPackageMap;

    invoke-direct {v0}, Lcom/android/server/wm/AspectRatioPackageMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8e0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "ChangeRatioButtonWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->adjustWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private isCallerSystem()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isUidSystem(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private killApplication(Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AspectRatioController;->isProcessKillforMaxAspect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-string/jumbo v4, "aspectratio"

    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityManagerInternal;->killPackageProcess(Ljava/lang/String;IILjava/lang/String;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->mReLaunchTaskId:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->mLastReLaunchUserId:I

    :cond_0
    return-void
.end method

.method private loadAllAspectRatioPackageMaps()V
    .locals 17

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz v10, :cond_7

    const/4 v13, 0x0

    array-length v14, v10

    move-object v2, v1

    move-object v7, v6

    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v8, v10, v13

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "PackageMap"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AspectRatioPackageMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_2
    move-object v8, v9

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object v2, v1

    move-object v7, v6

    goto :goto_0

    :cond_2
    move-object v1, v2

    move-object v6, v7

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v5

    move-object v1, v2

    move-object v6, v7

    :goto_4
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_5
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_5

    :catchall_0
    move-exception v13

    move-object v1, v2

    move-object v6, v7

    :goto_6
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_8
    throw v13

    :catch_5
    move-exception v4

    goto :goto_7

    :catch_6
    move-exception v4

    goto :goto_8

    :cond_6
    move-object v1, v2

    move-object v6, v7

    :cond_7
    return-void

    :catchall_1
    move-exception v13

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v13

    goto :goto_6

    :catch_7
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :catch_8
    move-exception v5

    goto :goto_4
.end method

.method private static maxAspectStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "MAX_ASPECT_RATIO_FIXED_ON"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "MAX_ASPECT_RATIO_ON"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "MAX_ASPECT_RATIO_OFF"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveAspectRatioPackageMap(I)V
    .locals 13

    new-instance v8, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v9

    new-instance v7, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "PackageMap"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    move-object v5, v6

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v4

    :goto_3
    :try_start_5
    const-string/jumbo v10, "AspectRatioController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to saveAspectRatioPackageMap id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_4
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_4

    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_7
    throw v10

    :catch_5
    move-exception v3

    goto :goto_6

    :catch_6
    move-exception v3

    goto :goto_7

    :catchall_1
    move-exception v10

    move-object v5, v6

    goto :goto_5

    :catchall_2
    move-exception v10

    move-object v0, v1

    move-object v5, v6

    goto :goto_5

    :catch_7
    move-exception v4

    move-object v5, v6

    goto :goto_3

    :catch_8
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto :goto_3
.end method

.method private scheduleKillApplication(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p2, v2, p1}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private schedulePackageSave()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private shouldShowGuidePopup(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->isGamePackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    xor-int/lit8 v3, v2, 0x1

    return v3

    :catch_0
    move-exception v1

    return v6

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    return v6
.end method

.method private showGuidePopup(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mLastTopFullOpaquePkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mLastTopFullOpaquePkg:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/AspectRatioController;->shouldShowGuidePopup(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mGuideDialogPopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "conventionalmode_guide_popup_for_recent"

    invoke-static {v0, v1, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "conventionalmode_guide_popup_for_recent"

    invoke-static {v0, v1, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/android/server/wm/AspectRatioController;->mLastTopFullOpaquePkg:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "conventionalmode_guide_popup_for_recent"

    invoke-static {v0, v1, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "conventionalmode_guide_popup_for_recent"

    invoke-static {v0, v1, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mGuideToastPopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updatePackageConfiguration(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method clearMaxAspectPackage(Ljava/lang/String;IZ)V
    .locals 4

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->clearMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/AspectRatioController;->updatePackageConfiguration(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->schedulePackageSave()V

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->killApplication(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v7, "AspectRatio Controller"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "  mMaxAspectMaps is empty"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string/jumbo v7, "  PackageName is"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AspectRatioPackageMap;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "    Contain Map of userID("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v7, p2, v8, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string/jumbo v7, "    MaxAspectState is "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/wm/AspectRatioController;->maxAspectStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-void

    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getCustomMaxAspectRatio(Ljava/lang/String;F)F
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/game/GamePkgDataHelper;->getInstance()Lcom/samsung/android/game/GamePkgDataHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/samsung/android/game/GamePkgDataHelper;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getAspectRatio()F

    move-result v0

    const-string/jumbo v3, "AspectRatioController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCustomMaxAspectRatio in game data package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  ratio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    cmpl-float v3, v0, v6

    if-eqz v3, :cond_1

    :goto_0
    return v0

    :cond_1
    cmpl-float v3, p2, v6

    if-eqz v3, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/SamsungWindowManagerService;->getDefaultMaxAspectRatio()F

    move-result v0

    goto :goto_0
.end method

.method public hideChangeRatioButtonWindow()V
    .locals 3

    const/4 v2, 0x4

    iget-boolean v1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioButtonViewShowing:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public init(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    const-string/jumbo v2, "LazyAspectRatioWriterThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;-><init>(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectRatioDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectRatioDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create directory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController;->mAspectRatioDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectRatioDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->loadAllAspectRatioPackageMaps()V

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    invoke-virtual {v1}, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    invoke-virtual {v1}, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->start()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public isMaxAspectComponent(Landroid/content/pm/ActivityInfo;)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->checkCallerIsSystemOrPermission()V

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wm/AspectRatioController;->excludeAspectRatio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v6

    :cond_1
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/SamsungWindowManagerService;->getDefaultMaxAspectRatio()F

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/SamsungWindowManagerService;->getCurrentAspectRatio()F

    move-result v0

    cmpl-float v4, v1, v0

    if-ltz v4, :cond_2

    return v6

    :cond_2
    iget v4, p1, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_3

    return v6

    :cond_3
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.max_aspect"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    :cond_4
    cmpl-float v4, v2, v0

    if-ltz v4, :cond_5

    return v6

    :cond_5
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p1, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_7

    return v9

    :cond_6
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7

    return v9

    :cond_7
    return v7
.end method

.method public isMaxAspectPackage(Landroid/content/pm/ApplicationInfo;)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->checkCallerIsSystemOrPermission()V

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wm/AspectRatioController;->excludeAspectRatio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v8

    :cond_1
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/SamsungWindowManagerService;->getDefaultMaxAspectRatio()F

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController;->mService:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/SamsungWindowManagerService;->getCurrentAspectRatio()F

    move-result v0

    cmpl-float v4, v1, v0

    if-ltz v4, :cond_2

    return v8

    :cond_2
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_3

    return v8

    :cond_3
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.max_aspect"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    :cond_4
    cmpl-float v4, v2, v0

    if-ltz v4, :cond_5

    return v8

    :cond_5
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x1400

    if-eqz v4, :cond_7

    return v9

    :cond_6
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7

    return v9

    :cond_7
    return v7
.end method

.method public isMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->excludeAspectRatio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public isProcessKillforMaxAspect(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public saveAllAspectRatioPackageMaps()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/AspectRatioController;->saveAspectRatioPackageMap(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZZ)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->checkCallerIsSystemOrPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/AspectRatioController;->enableMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->schedulePackageSave()V

    if-eqz p4, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->killApplication(Ljava/lang/String;I)V

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController;->mLastTopFullOpaquePkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/AspectRatioController;->mLastReLaunchUserId:I

    invoke-direct {p0, v5}, Lcom/android/server/wm/AspectRatioController;->showGuidePopup(I)V

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/AspectRatioController;->disableMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setMaxAspectPackages(Ljava/util/List;[IZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[IZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->checkCallerIsSystemOrPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    array-length v8, p2

    if-eq v0, v8, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Wrong argument size of pkgs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " size of uids="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget v8, p2, v2

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eq v1, v7, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v3

    move v1, v7

    :cond_2
    if-eqz p3, :cond_4

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/wm/AspectRatioController;->enableMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)Z

    :goto_2
    invoke-direct {p0, v6, p3}, Lcom/android/server/wm/AspectRatioController;->updatePackageConfiguration(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/wm/AspectRatioController;->disableMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->schedulePackageSave()V

    :cond_6
    if-eqz p4, :cond_7

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_7

    aget v8, p2, v2

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/AspectRatioController;->killApplication(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public showChangeRatioButtonWindow(IILjava/lang/String;I)V
    .locals 3

    const/4 v2, 0x3

    iget-boolean v1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioButtonViewShowing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowPosition:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaqueUid:I

    if-eq p4, v1, :cond_0

    iput p4, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaqueUid:I

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowPosition:I

    iput p2, p0, Lcom/android/server/wm/AspectRatioController;->mChangeRatioWindowSize:I

    iput-object p3, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaquePkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentTopFullOpaqueUid:I

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mAspectControlScheduler:Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method
