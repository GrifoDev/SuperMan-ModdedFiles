.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/SystemServicesProxy$1;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$2;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$3;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$H;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
    }
.end annotation


# static fields
.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# instance fields
.field private final ICON_MAX_SIZE:I

.field private final ICON_SCALE:F

.field private final ICON_TRANSLATE:F

.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field private mAppLockBgColor:I

.field private mAppLockBmpOpts:Landroid/graphics/BitmapFactory$Options;

.field private mAppLockFgBmp:Landroid/graphics/Bitmap;

.field private mAppLockImageSize:I

.field private mAppLockTestSize:F

.field private mAppLockText:Ljava/lang/String;

.field private mAppLockTextColor:I

.field private mAppLockTextTopPadding:I

.field mAssistComponent:Landroid/content/ComponentName;

.field mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDisplay:Landroid/view/Display;

.field mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field private final mGcRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mHasFreeformWorkspaceSupport:Z

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mIsSafeMode:Z

.field mIwm:Landroid/view/IWindowManager;

.field mKgm:Landroid/app/KeyguardManager;

.field private mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPluginTaskStackListener:Landroid/app/TaskStackListener;

.field private mPluginTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field mPm:Landroid/content/pm/PackageManager;

.field private mRawPairedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRecentsPackage:Ljava/lang/String;

.field private mSwm:Lcom/samsung/android/view/SemWindowManager;

.field private mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field mUm:Landroid/os/UserManager;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-class v1, Lcom/android/systemui/pip/tv/PipMenuActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;

    invoke-direct {v4, p0, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mGcRunnable:Ljava/lang/Runnable;

    const-class v4, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/UiOffloadThread;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    const v4, 0x3f47ae14    # 0.78f

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->ICON_SCALE:F

    const v4, 0x3e106908

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->ICON_TRANSLATE:F

    iput-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Landroid/app/TaskStackListener;

    new-instance v4, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListener:Landroid/app/TaskStackListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    new-instance v4, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    const-string/jumbo v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.freeform_window_management"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "enable_freeform_support"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    const-string/jumbo v4, "persona"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050002

    const v0, 0x1050001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    const-class v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    sget-object v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const v5, 0x7f03003c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mSwm:Lcom/samsung/android/view/SemWindowManager;

    const v4, 0x7f070063

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->ICON_MAX_SIZE:I

    const-string/jumbo v4, "desktopmode"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRawPairedTasks:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->reloadResourcesForAppLock()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockBgColor:I

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockBmpOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockBmpOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockBmpOpts:Landroid/graphics/BitmapFactory$Options;

    const v6, 0x7f080328

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockFgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120128

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTextColor:I

    :cond_1
    return-void

    :cond_2
    move v4, v5

    goto/16 :goto_0

    :cond_3
    move v4, v6

    goto/16 :goto_0
.end method

.method private getApplicationIconFromDb(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 2

    const-class v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDockedStack(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFreeformStack(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFullScreenStack(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isHomeStack(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRecentsStack(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z
    .locals 4

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    :goto_0
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v2, p2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v2, :cond_3

    iget v2, p2, Landroid/app/ActivityManager$StackInfo;->position:I

    iget v3, p1, Landroid/app/ActivityManager$StackInfo;->position:I

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    xor-int/lit8 v2, v0, 0x1

    and-int/2addr v1, v2

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_68880(Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;->onStartActivityResult(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_69213(Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;->onStartActivityResult(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_70947(Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;->onStartActivityResult(Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_72575(Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;->onStartActivityResult(Z)V

    return-void
.end method


# virtual methods
.method public awakenDreamsAsync()V
    .locals 2

    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "awakenDreamsAsync: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public cancelThumbnailTransition(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->cancelTaskThumbnailTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelWindowTransition(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->cancelTaskWindowTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkHomeActivityPackageName(Ljava/lang/String;I)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v7

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    return v7

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    return v5

    :cond_5
    return v7
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "sRecentsBlacklist:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    sget-object v3, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endProlongedAnimations()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->endProlongedAnimations()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public gc()V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mGcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v3
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

.method public getAppLockedTaskThumbnail(II)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockImageSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockImageSize:I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockBgColor:I

    invoke-virtual {v2, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move/from16 v0, p1

    if-gt v12, v0, :cond_0

    move/from16 v0, p2

    if-le v9, v0, :cond_1

    :cond_0
    const-string/jumbo v14, "SystemServicesProxy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getAppLockedTaskThumbnail applock icon is bigger than thumbnail use black thumbail instead of it, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " width="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " height="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    const v14, -0xcccccd

    invoke-virtual {v13, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v13

    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTestSize:F

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockText:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v14, v0, v15, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sub-int v14, p1, v12

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v10, v14, v15

    sub-int v14, p2, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTextTopPadding:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v11, v14, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int v14, p1, v14

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v8, v14, v15

    int-to-float v14, v9

    add-float/2addr v14, v11

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTextTopPadding:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    add-float v6, v14, v15

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput v10, v4, Landroid/graphics/RectF;->left:F

    iput v11, v4, Landroid/graphics/RectF;->top:F

    int-to-float v14, v12

    add-float/2addr v14, v10

    iput v14, v4, Landroid/graphics/RectF;->right:F

    int-to-float v14, v9

    add-float/2addr v14, v11

    iput v14, v4, Landroid/graphics/RectF;->bottom:F

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockFgBmp:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTextColor:I

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockText:Ljava/lang/String;

    invoke-virtual {v3, v14, v8, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string/jumbo v14, "SystemServicesProxy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getTaskThumbnail applock icon bg( "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ) fg( "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ) padding="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTextTopPadding:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " tx ( "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " ) bmL="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " txL="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 14

    iget-object v12, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    return-object v12

    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->getBBCBadgeIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    iget-object v12, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v13, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p2

    invoke-virtual {v12, p1, v13, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p3, :cond_3

    instance-of v12, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    iget v13, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->ICON_MAX_SIZE:I

    if-gt v12, v13, :cond_2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    iget v13, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->ICON_MAX_SIZE:I

    if-le v12, v13, :cond_3

    :cond_2
    move-object v12, v4

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v7, v12

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v6, v12

    iget v12, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->ICON_MAX_SIZE:I

    int-to-float v12, v12

    div-float/2addr v12, v7

    iget v13, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->ICON_MAX_SIZE:I

    int-to-float v13, v13

    div-float/2addr v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v11

    mul-float v12, v7, v11

    float-to-int v10, v12

    mul-float v12, v6, v11

    float-to-int v9, v12

    const/4 v12, 0x1

    :try_start_0
    invoke-static {v1, v10, v9, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :cond_3
    :goto_0
    return-object v4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedApplicationIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v0, p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const v4, 0x7f1200da

    invoke-virtual {p4, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 11

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v7

    iget v8, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v7, v8}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_0
    const/4 v3, 0x0

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationIconChangedByMDM()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SystemServicesProxy"

    const-string/jumbo v8, "Getting icon from knox DB"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getApplicationIconFromDb(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_1
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v8, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_2
    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v7

    :goto_0
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const v7, 0x7f08076e

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3f47ae14    # 0.78f

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e106908

    mul-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e106908

    mul-float/2addr v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_3
    return-object v3

    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getBadgedTaskDescriptionIcon(Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;Ljava/lang/String;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 11

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p3}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_0
    const/4 v3, 0x0

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isApplicationIconChangedByMDM()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SystemServicesProxy"

    const-string/jumbo v8, "Getting icon from knox DB"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getApplicationIconFromDb(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_1
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p4, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v7, p3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_2
    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v7

    :goto_0
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const v7, 0x7f08076e

    const/4 v8, 0x0

    invoke-virtual {p4, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;->getPrimaryColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3f47ae14    # 0.78f

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e106908

    mul-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e106908

    mul-float/2addr v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_3
    return-object v3

    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getCurrentUser()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    return v0
.end method

.method public getDeviceSmallestWidth()I
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getDockedDividerSize(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x1050088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v1, v3

    return v3
.end method

.method public getDockedTasks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, 0x3

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getRunningTasksInfo(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4
.end method

.method public getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getKioskId()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-nez v7, :cond_1

    :cond_0
    return-object v10

    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/16 v9, 0x80

    invoke-virtual {v7, v2, v9, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v10

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "SystemServicesProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLauncherPacakges for another user, request cannot be granted!, other user- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_7
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_8
    return-object v3
.end method

.method public getPairedRecentTasks(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRawPairedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPairedRecentTasksIcon(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getPairedRecentTasksManager()Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->getPairedRecentTasksIcon(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getPairedRecentTasksManager()Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v0

    return-object v0
.end method

.method public getPipAppTitle()Ljava/lang/String;
    .locals 8

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getRunningTasksInfo(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public getProcessUser()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    return v0
.end method

.method public getRecentTasks(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v14, :cond_0

    const/4 v14, 0x0

    return-object v14

    :cond_0
    const/16 v10, 0xa

    move/from16 v0, p1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v6, 0x3e

    if-nez p3, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    const/16 v6, 0x3f

    :cond_2
    sget-boolean v14, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_3

    or-int/lit8 v6, v6, 0x40

    :cond_3
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    move/from16 v0, p2

    invoke-virtual {v14, v11, v6, v0}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_0
    sget-boolean v14, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRawPairedTasks:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRawPairedTasks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-nez v13, :cond_5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    return-object v14

    :catch_0
    move-exception v2

    const-string/jumbo v14, "SystemServicesProxy"

    const-string/jumbo v15, "Failed to get recent tasks"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    const/4 v8, 0x1

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-boolean v14, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRawPairedTasks:Ljava/util/ArrayList;

    if-eqz v14, :cond_d

    iget-boolean v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->isPairedTask:Z

    if-eqz v14, :cond_d

    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->hideSecureFolderTask()Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    const/16 v15, 0x96

    if-lt v14, v15, :cond_8

    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    const/16 v15, 0xa0

    if-gt v14, v15, :cond_8

    const/4 v5, 0x1

    :goto_3
    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    iget-object v15, v12, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v14, v15}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    iget-object v15, v12, Landroid/app/ActivityManager$RecentTaskInfo;->dockedRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v14, v15}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v3, 0x1

    :cond_6
    :goto_4
    if-nez v4, :cond_d

    xor-int/lit8 v14, v5, 0x1

    if-eqz v14, :cond_d

    xor-int/lit8 v14, v3, 0x1

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRawPairedTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    const/16 v15, 0x96

    if-lt v14, v15, :cond_a

    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    const/16 v15, 0xa0

    if-lt v14, v15, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    iget-object v15, v12, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v14, v15}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    iget-object v15, v12, Landroid/app/ActivityManager$RecentTaskInfo;->fullRecentTaskInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v14, v15}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    sget-object v14, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v15, v12, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    sget-object v14, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v15, v12, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    iget-object v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x800000

    and-int/2addr v14, v15

    const/high16 v15, 0x800000

    if-ne v14, v15, :cond_14

    const/4 v7, 0x1

    :goto_5
    iget v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v7, v14

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->hideSecureFolderTask()Z

    move-result v14

    if-eqz v14, :cond_16

    iget v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    const/16 v15, 0x96

    if-lt v14, v15, :cond_16

    iget v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    const/16 v15, 0xa0

    if-gt v14, v15, :cond_15

    const/4 v5, 0x1

    :goto_6
    if-eqz v7, :cond_10

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v14

    if-eqz v14, :cond_10

    iget v14, v12, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_17

    const/4 v7, 0x1

    :cond_10
    :goto_7
    if-eqz v7, :cond_11

    if-eqz v8, :cond_12

    xor-int/lit8 v14, p3, 0x1

    if-nez v14, :cond_12

    :cond_11
    if-nez v5, :cond_12

    if-nez v4, :cond_12

    if-nez v3, :cond_12

    if-eqz v1, :cond_13

    :cond_12
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_14
    const/4 v7, 0x0

    goto :goto_5

    :cond_15
    const/4 v5, 0x0

    goto :goto_6

    :cond_16
    const/4 v5, 0x0

    goto :goto_6

    :cond_17
    const/4 v7, 0x0

    goto :goto_7

    :cond_18
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p1

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    return-object v14
.end method

.method public getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDockedStack(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFullScreenStack(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method public getScreenRatioState(Lcom/android/systemui/recents/model/Task;)I
    .locals 6

    const/4 v5, 0x2

    iget-boolean v2, p1, Lcom/android/systemui/recents/model/Task;->isFullscreen:Z

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return v5

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    :goto_0
    if-nez v1, :cond_2

    return v5

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mSwm:Lcom/samsung/android/view/SemWindowManager;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/view/SemWindowManager;->isMaxAspectComponentEx(Landroid/content/ComponentName;I)I

    move-result v2

    return v2
.end method

.method public getScreenRatioState(Lcom/samsung/systemui/splugins/recents/model/PluginTask;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getScreenRatioState(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedLauncherId()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {v0, p2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_0
    invoke-static {v0, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v4

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    return-object v4
.end method

.method public getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v6

    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v6
.end method

.method public bridge synthetic getTaskThumbnail(IZ)Lcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    return-object v7

    :cond_0
    sget-boolean v7, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    if-eqz v7, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/systemui/recents/model/ThumbnailData;->createFromTaskSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v6

    :goto_1
    return-object v6

    :catch_0
    move-exception v1

    const-string/jumbo v7, "SystemServicesProxy"

    const-string/jumbo v8, "Failed to retrieve snapshot"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    return-object v7

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v7, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v7, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    return-object v7

    :cond_3
    iget-object v5, v4, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    iget-object v0, v4, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v9, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_4
    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    new-instance v6, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    iput-object v5, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v7, v4, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iget v7, v7, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    iput v7, v6, Lcom/android/systemui/recents/model/ThumbnailData;->orientation:I

    iget-object v7, v6, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public getTopDockedTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v2, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getRunningTasksInfo(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v5
.end method

.method public getVisibleRunningFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFullScreenStack(I)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v6, v4, Landroid/app/ActivityManager$StackInfo;->visible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 9

    const/4 v6, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableKeyboardCover:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v6, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    :catchall_0
    move-exception v4

    return-object v3
.end method

.method public hasDockedTask()Z
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v5, :cond_0

    return v7

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v4

    const/4 v1, 0x0

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_1

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1

    const-class v5, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v6, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v6, v6, v2

    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasUserInEnabledProfiles(I)Z

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v7
.end method

.method public hasFreeformWorkspaceSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    return v0
.end method

.method public hasSoftNavigationBar()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public hasTransposedNavigationBar()Z
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAppLockedPackageNotCheckUnlock(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "app_lock_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppLockedPackageList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isBlackListedActivity(Landroid/content/ComponentName;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBlacklist:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public isDreaming()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to query dream manager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isInSafeMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    return v0
.end method

.method public isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public isManagedProfileUserId(Landroid/content/Context;I)Z
    .locals 3

    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRecentsActivityVisible()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    return v0
.end method

.method public isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
    .locals 13

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v11, :cond_0

    return v10

    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v11}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$StackInfo;

    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-nez v11, :cond_2

    move-object v2, v7

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    move-object v1, v7

    goto :goto_1

    :cond_3
    iget v11, v7, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1

    move-object v5, v7

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v3

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isStackNotOccluded(Landroid/app/ActivityManager$StackInfo;Landroid/app/ActivityManager$StackInfo;)Z

    move-result v6

    if-eqz p1, :cond_5

    iput-boolean v3, p1, Landroid/util/MutableBoolean;->value:Z

    :cond_5
    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    iget-boolean v11, v1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v11, :cond_6

    iget-object v11, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v11, v11

    if-lez v11, :cond_6

    iget-object v11, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v12, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    iput v11, p2, Landroid/util/MutableInt;->value:I

    :cond_6
    if-eqz v5, :cond_8

    iget-object v9, v5, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    :goto_2
    if-eqz v6, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "com.android.systemui"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :cond_7
    return v10

    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v10
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isResizable(Landroid/content/pm/ResolveInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public isScreenPinningActive()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public isSystemUser(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :cond_1
    return v0
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_15036(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mCurrentUserId:I

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_44021(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->removeTask(I)Z

    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "removeTask: done."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_44429(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "sendCloseSystemWindows: done."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_66704(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "SystemServicesProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecentsActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " done."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_68681([I[Landroid/os/Bundle;Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startPairActivitiesFromRecents(Landroid/content/Context;[I[Landroid/os/Bundle;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$2;

    invoke-direct {v2, p3}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "startActivityFromRecents: done."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    const v3, 0x7f120972

    invoke-virtual {p4, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$3;

    invoke-direct {v2, p3}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_70411(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget v6, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-nez p2, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v5, v6, v4}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v3

    const/16 v4, -0x5c

    if-ne v3, v4, :cond_2

    new-instance v4, Landroid/content/ActivityNotFoundException;

    invoke-direct {v4}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    if-eqz p4, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Task %d not found."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x10104000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    const-string/jumbo v4, "SystemServicesProxy"

    const-string/jumbo v5, "startActivityFromRecents: done."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$4;

    invoke-direct {v5, p3}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SystemServicesProxy"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p6, v5, v6

    const v6, 0x7f120972

    invoke-virtual {p5, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$5;

    invoke-direct {v5, p3}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_77019()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "awakenDreamsAsync: done."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_misc_SystemServicesProxy_77573(JI)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overview_last_stack_active_time"

    invoke-static {v0, v1, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "updateOverviewLastStackActiveTimeAsync: done."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public moveTaskToDockedStack(IILandroid/graphics/Rect;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    return v7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    return v7
.end method

.method public moveTaskToStack(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->positionTaskInStack(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowManager;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to override transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDesktopModeListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to call register desktop mode event listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerPluginTaskStackListener(Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v3, "Failed to call registerTaskStackListener for plugin"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v3, "Failed to call registerTaskStackListener"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public reloadResourcesForAppLock()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTestSize:F

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockTextTopPadding:I

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppLockImageSize:I

    return-void
.end method

.method public removeTask(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "SystemServicesProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$9;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$9;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public requestKeyboardShortcuts(Landroid/content/Context;Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p2, p3}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    return-void
.end method

.method public requestMaxAspectPackage(Ljava/lang/String;IZ)V
    .locals 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mSwm:Lcom/samsung/android/view/SemWindowManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager;->setMaxAspectPackageExAndPopup(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SystemServicesProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCloseSystemWindows: reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setFocusedStack(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setFocusedStack(I)V

    return-void
.end method

.method public setPipVisibility(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setPipVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRecentsVisibility(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;Z)V

    return-void
.end method

.method public startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;Z)V
    .locals 14

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent_pairedtask:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v3, v1, [I

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    aput v1, v3, v2

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x1

    aput v1, v3, v2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v13

    const/4 v1, 0x2

    new-array v4, v1, [Landroid/os/Bundle;

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startPairActivitiesFromRecents(Landroid/content/Context;[I[Landroid/os/Bundle;)V

    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityFromRecents: paired task["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;

    move-object v2, p0

    move-object/from16 v5, p6

    move-object v6, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    if-nez p4, :cond_2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_3
    :goto_0
    move-object/from16 v9, p4

    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityFromRecents: task="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;

    move/from16 v6, p7

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move-object v11, p1

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$11;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_4
    const/4 v1, -0x1

    move/from16 v0, p5

    if-eq v0, v1, :cond_3

    if-nez p4, :cond_5

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    :cond_5
    invoke-virtual/range {p4 .. p5}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    goto :goto_0
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez p1, :cond_1

    :goto_0
    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startPairActivitiesFromRecents(Landroid/content/Context;[I[Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startPairActivitiesFromRecents(Landroid/content/Context;[I[Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startTaskInDockedMode(IILandroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v3, :cond_0

    return v6

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    const/16 v3, -0x5c

    if-ne v2, v3, :cond_1

    new-instance v3, Landroid/content/ActivityNotFoundException;

    invoke-direct {v3}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SystemServicesProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to dock task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with createMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p4, v4, v6

    const v5, 0x7f120973

    invoke-virtual {p3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v6

    :cond_1
    return v7
.end method

.method public unregisterPluginTaskStackListener()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v3, "Failed to call unregisterTaskStackListener for plugin"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPluginTaskStackListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public updateBlacklistPackages()V
    .locals 11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_SYSTEMUI_RECENTS_BLACKLIST"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    sget-object v7, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v8, ","

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    const-string/jumbo v7, "content://com.sec.android.app.launcher.zeropage"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v0, "get_zeropage_setting"

    const-string/jumbo v1, "zeropage_package_name"

    iget-object v7, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "get_zeropage_setting"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v7, "zeropage_package_name"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    sget-object v7, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v7, "SystemServicesProxy"

    const-string/jumbo v8, "No zero page setting"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateOverviewLastStackActiveTimeAsync(JI)V
    .locals 3

    const-string/jumbo v0, "SystemServicesProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOverviewLastStackActiveTimeAsync: newTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/android/systemui/recents/misc/-$Lambda$_cQrKcY7GDLaa8hAVN9aWKF9fdw$10;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
