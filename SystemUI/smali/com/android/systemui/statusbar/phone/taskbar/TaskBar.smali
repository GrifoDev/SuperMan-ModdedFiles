.class public Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;
.super Ljava/lang/Object;
.source "TaskBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;
.implements Lcom/samsung/systemui/splugins/bixby/PluginTaskBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$PackageChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static dragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

.field public static dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

.field private static sDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

.field private static sMenuIconSize:I

.field private static sScreenDensity:F

.field public static sViewLayerPaint:Landroid/graphics/Paint;


# instance fields
.field private currentTheme:Ljava/lang/String;

.field mAvailableUserInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeObserver:Landroid/database/ContentObserver;

.field private mBindTaskBarLoaded:Z

.field private mBixbySettingObserver:Landroid/database/ContentObserver;

.field private mConnectedKeyboardIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mGlobalReceiver:Landroid/content/BroadcastReceiver;

.field private mGuidedTourKeyboardIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsKeyboardConnected:Z

.field mKeyguardStateReceiver:Landroid/content/BroadcastReceiver;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mLabModeSettingObserver:Landroid/database/ContentObserver;

.field private mLabsModeSettingValue:Z

.field mLauncherReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedToCheckLabs:Z

.field private mPackageReceiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

.field mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mShowKeyboardGuidedTourAfterKeyguard:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mTaskWatcher:Lcom/samsung/android/app/ITaskWatcher;

.field private mUserManager:Landroid/os/UserManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabsModeSettingValue:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabsModeSettingValue:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateAvailableUsers()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatusOnDeviceAdd(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatusOnDeviceChange(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatusOnDeviceRemove(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updatePackageReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sViewLayerPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 10

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mShowKeyboardGuidedTourAfterKeyguard:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mConnectedKeyboardIds:Ljava/util/ArrayList;

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->currentTheme:Ljava/lang/String;

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabsModeSettingValue:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "start TaskBar service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v5

    if-ne v5, v8, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    :cond_1
    iput v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mCurrentUserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateAvailableUsers()V

    const-class v6, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "input"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputManager;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput v9, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sput v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    float-to-int v0, v6

    :goto_0
    sget v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    if-ne v6, v0, :cond_2

    sput v9, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    sput v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sScreenDensity:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_sec_appicon_theme_package"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->currentTheme:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerReceiverAndObserverAsUser()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->reloadBadges()V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->initialize(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->startLoader()V

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->checkNeedToCheckLabsStatus(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskWatcher:Lcom/samsung/android/app/ITaskWatcher;

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskWatcher:Lcom/samsung/android/app/ITaskWatcher;

    const/4 v8, -0x1

    invoke-interface {v6, v8, v7}, Landroid/app/IActivityManager;->registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resource not found raise Exception!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerTaskWatcher() raise Exception!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerTaskWatcher() raise Exception!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addKeyboardInputDevice(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mConnectedKeyboardIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->checkKeyboardIdExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->checkUnAutoMataLanguageSelected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sDBManager:Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    return-object v0
.end method

.method public static getScreenDensity()F
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sScreenDensity:F

    return v0
.end method

.method public static isMenuIconSizeChanged()Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sMenuIconSize:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerPackageReceiverAsUser(I)V
    .locals 14

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$PackageChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$PackageChangedReceiver;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register package receiver for user("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeKeyboardInputDevice(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mConnectedKeyboardIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mConnectedKeyboardIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateAvailableUsers()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mAvailableUserInfos:Ljava/util/List;

    return-void
.end method

.method private updateKeyboardStatus()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mConnectedKeyboardIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->setShowKeyboardGuidedTourAfterKeyguard(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateLeftPanelLayout()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isSystemUIAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showKeyboardGuidedTour()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showGuidedTourAfterOOBE(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->setShowKeyboardGuidedTourAfterKeyguard(Z)V

    goto :goto_0
.end method

.method private updateKeyboardStatusOnBind()V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->setShowKeyboardGuidedTourAfterKeyguard(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mConnectedKeyboardIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->addKeyboardInputDevice(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatus()V

    return-void
.end method

.method private updateKeyboardStatusOnDeviceAdd(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->addKeyboardInputDevice(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatus()V

    return-void
.end method

.method private updateKeyboardStatusOnDeviceChange(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->removeKeyboardInputDevice(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->addKeyboardInputDevice(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatus()V

    return-void
.end method

.method private updateKeyboardStatusOnDeviceRemove(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->removeKeyboardInputDevice(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatus()V

    return-void
.end method

.method private updatePackageReceiver()V
    .locals 9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mAvailableUserInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v7

    if-eq v6, v7, :cond_1

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerPackageReceiverAsUser(I)V

    goto :goto_0

    :cond_2
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregister removed user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public addKeyboardIdsToSharedPrefernece()V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->checkKeyboardIdExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->addKeyboardId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->setShowKeyboardGuidedTourAfterKeyguard(Z)V

    return-void
.end method

.method public addShortcut(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addShortcut using Bixby():: pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", UserHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->addAppShortcutByBixby(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addView fail. View is null, or aleady attached!!! view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindBadgeUpdated(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateBadgeCount(Ljava/util/Map;)V

    return-void
.end method

.method public bindPackagesChanged(Z)V
    .locals 0

    return-void
.end method

.method public bindTaskbarBegin()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "=== bindTaskbarBegin ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bindTaskbarEnd()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "=== bindTaskbarEnd ==="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->refreshRunningList()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateKeyboardStatusOnBind()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    return-void
.end method

.method public bindTaskbarItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=== bindTaskbarItems === count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->bindTaskbarItems(Ljava/util/List;)V

    return-void
.end method

.method public bindTaskbarItemsRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->bindHomeItemsRemoved(Ljava/util/List;)V

    return-void
.end method

.method public bindTaskbarItemsUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->bindHomeItemsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public blockNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->blockNotification()V

    return-void
.end method

.method public cancelDragFromTaskBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->cancelDrag()V

    :cond_0
    return-void
.end method

.method public clearAllNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearAllDeskNotifications()V

    return-void
.end method

.method public clearNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLastClickContextMenuNotificationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotification(Ljava/lang/String;)V

    return-void
.end method

.method public clearTaskBar()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearTaskBar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskWatcher:Lcom/samsung/android/app/ITaskWatcher;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskWatcher:Lcom/samsung/android/app/ITaskWatcher;

    const/4 v4, -0x1

    invoke-interface {v2, v4, v3}, Landroid/app/IActivityManager;->unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterTaskWatcher()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->unregisterReceiverAndObserverAsUser()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->clear()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v2, v6, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->resetLoadedState(ZZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->initialize(Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel$Callbacks;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllView(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeAllWindow()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeAllViews()V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterTaskWatcher() raise Exception!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterTaskWatcher() raise Exception!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeAllDeskPanels()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    :cond_0
    return-void
.end method

.method public closeAllTaskBarWindowExcept(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    :cond_0
    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    :cond_0
    return-void
.end method

.method public closeRecentApps()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/recents/Recents;->hideRecentApps(ZZ)V

    :cond_0
    return-void
.end method

.method public collapseDeskStatusBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseDeskStatusBar(Z)V

    return-void
.end method

.method public expandDeskStatusBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->expandDeskStatusBar(Z)V

    return-void
.end method

.method public forceResetAndReload()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarModel:Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->forceReload()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->forceReset()V

    :cond_1
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    return v0
.end method

.method public getDeskContextMenuType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x64

    return v0

    :pswitch_1
    const/16 v0, 0x65

    return v0

    :pswitch_2
    const/16 v0, 0x66

    return v0

    :pswitch_3
    const/16 v0, 0x67

    return v0

    :pswitch_4
    const/16 v0, 0x68

    return v0

    :pswitch_5
    const/16 v0, 0x69

    return v0

    :pswitch_6
    const/16 v0, 0x6a

    return v0

    :pswitch_7
    const/16 v0, 0x6b

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->getDispatchEventLayer()Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBarView()Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method public isAvailableUser(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mAvailableUserInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isContextMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeskPanelViewNotificationAllVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeskPanelViewNotificationAllVisible()Z

    move-result v0

    return v0
.end method

.method public isDeskPanelViewNotificationVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeskPanelViewNotificationVisible()Z

    move-result v0

    return v0
.end method

.method public isKeyboardConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIsKeyboardConnected:Z

    return v0
.end method

.method public isKeyguardState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKnoxKeyguardState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPersonalManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToCheckLabs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    return v0
.end method

.method public isShowKeyboardGuidedTourAfterKeyguard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mShowKeyboardGuidedTourAfterKeyguard:Z

    return v0
.end method

.method public isSystemUIAvailable()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher.PREFFERENCE_AUTHORITY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "system_available_check"

    invoke-virtual {v4, v0, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "systemui_availablity"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method

.method public isTaskBarHovered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isTaskBarHovered()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskBarTouched()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isTaskBarTouched()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchAppInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->launchAppInfo()V

    return-void
.end method

.method public launchAppNotificationSetting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->launchAppNotificationSetting()V

    return-void
.end method

.method public launchAppNotificationSnooze()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->launchAppNotificationSnooze()V

    return-void
.end method

.method public launchNotificationSetting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->launchNotificationSetting()V

    return-void
.end method

.method public notifyTaskBarHoverExited(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->reScheduleAutohide(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onUserSwitched()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitched to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updateAvailableUsers()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->unregisterReceiverAndObserverAsUser()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->onUserSwitched()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->registerReceiverAndObserverAsUser()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->forceResetAndReload()V

    return-void
.end method

.method public registerReceiverAndObserverAsUser()V
    .locals 19

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerReceiverAndObserverAsUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->updatePackageReceiver()V

    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$5;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBadgeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$7;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$7;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$8;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.oneconnect.UPDATE_AUDIO_PATH_VIEW"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.oneconnect.CLICK_AUDIO_PATH_TAB_ITEM"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v5

    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->requestAudioPathUpdate()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$9;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$9;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLauncherReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher.CLICK_AUDIO_PATH"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLauncherReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v1

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$10;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$10;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v1

    invoke-direct {v11, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$11;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$11;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBixbySettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/DesktopModeSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "bixby_enabled"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBixbySettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "labs_resizable_window_enabled"

    const-string/jumbo v3, "false"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/DesktopModeSettingsUtil;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabsModeSettingValue:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabsModeSettingValue:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/SharedPreferencesUtil;->updateNeedToCheckLabsStatus(Landroid/content/Context;Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$12;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabModeSettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/DesktopModeSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "labs_resizable_window_enabled"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabModeSettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mCurrentUserId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method public removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBindTaskBarLoaded:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRunningTaskAppForPkgRemoved:: This call is blocked!!! TaskBarView is null or bindApps not loaded., pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public removeShortcut(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeShortcut using Bixby():: pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeAppShortcutByBixby(Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public removeView(Landroid/view/View;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeView fail. View is not attached!!! view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$13;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar$13;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeView fail. View is null. view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestAudioPathUpdate()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.oneconnect.REQUEST_AUDIO_PATH_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.oneconnect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAudioPathUpdate: broadcast intent= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setNeedToCheckLabs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mNeedToCheckLabs:Z

    return-void
.end method

.method public setShowKeyboardGuidedTourAfterKeyguard(Z)V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set mShowKeyboardGuidedTourAfterKeyguard flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mShowKeyboardGuidedTourAfterKeyguard:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGuidedTourKeyboardIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showGuidedTourAfterOOBE(Z)V

    :cond_0
    return-void
.end method

.method public setupTaskBarView(Z)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupTaskBarView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01c5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setup(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)V

    return-void
.end method

.method public showDeskContextMenu(IFFLandroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public toggleDeskPanelViewNotification(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleDeskPanelViewNotification(Z)V

    return-void
.end method

.method public unregisterReceiverAndObserverAsUser()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterReceiverAndObserverAsUser"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mPackageReceiverMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mGlobalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mIconBackgroundChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLauncherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mKeyguardStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBixbySettingObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mBixbySettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabModeSettingObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mLabModeSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView fail. View is null, or not attached!!! view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
