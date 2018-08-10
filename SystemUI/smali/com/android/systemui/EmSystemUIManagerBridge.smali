.class public Lcom/android/systemui/EmSystemUIManagerBridge;
.super Ljava/lang/Object;
.source "EmSystemUIManagerBridge.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/EmSystemUIManagerBridge;Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;)Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/EmSystemUIManagerBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->initEmMultiWindowManager()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/EmSystemUIManagerBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->initEmNotificationManager()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/EmSystemUIManagerBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->initEmRecentsManager()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->preInitializeRecents()V

    invoke-direct {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->preInitializeMultiWindow()V

    invoke-direct {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->preInitializeNotification()V

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    new-instance v1, Lcom/android/systemui/EmSystemUIManagerBridge$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/EmSystemUIManagerBridge$1;-><init>(Lcom/android/systemui/EmSystemUIManagerBridge;)V

    const-class v2, Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method private initEmMultiWindowManager()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->getEmMultiWindowManager()Lcom/samsung/systemui/splugins/bixby/PluginEmMultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/bixby/PluginEmMultiWindowManager;->initialize(Lcom/samsung/systemui/splugins/bixby/PluginMultiWindow;)V

    :cond_0
    return-void
.end method

.method private initEmNotificationManager()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->getEmNotificationManager()Lcom/samsung/systemui/splugins/bixby/PluginEmNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/systemui/EmSystemUIManagerBridge;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/bixby/PluginEmNotificationManager;->initialize(Lcom/samsung/systemui/splugins/bixby/PluginStatusBar;)V

    :cond_0
    return-void
.end method

.method private initEmRecentsManager()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/EmSystemUIManagerBridge;->getEmRecentsManager()Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/systemui/EmSystemUIManagerBridge;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/recents/Recents;

    invoke-static {v2, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    invoke-interface {v1, v0}, Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;->initialize(Lcom/samsung/systemui/splugins/recents/PluginRecents;)V

    :cond_0
    return-void
.end method

.method private preInitializeMultiWindow()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/MultiWindowUtilsProvider;->initialize()Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowUtils;

    sput v2, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->FULLSCREEN_WORKSPACE_STACK_ID:I

    sput v4, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->DOCKED_STACK_ID:I

    sput v3, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->FREEFORM_WORKSPACE_STACK_ID:I

    sput v1, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->HOME_STACK_ID:I

    const/4 v0, 0x5

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->RECENTS_STACK_ID:I

    sput v1, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->SNAP_WINDOW_GUIDE_VIEW_SIZE_DEFAULT:I

    const-string/jumbo v0, "fromSplit"

    sput-object v0, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->SNAP_WINDOW_VISBLE_CALLER_SPLIT:Ljava/lang/String;

    const-string/jumbo v0, "fromFullApp"

    sput-object v0, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->SNAP_WINDOW_VISBLE_CALLER_FULLAPP:Ljava/lang/String;

    sput v1, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->ADDAPPPAIR_SHORTCUT_RESULT_SUCCESS:I

    sput v2, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->ADDAPPPAIR_SHORTCUT_RESULT_FAILED_ONE_APP:I

    sput v3, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->ADDAPPPAIR_SHORTCUT_RESULT_FAILED_TWO_APP:I

    sput v4, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->ADDAPPPAIR_SHORTCUT_RESULT_FAILED_NOT_SUPPROT:I

    sput v2, Lcom/samsung/systemui/splugins/bixby/PluginMultiWindowStatic;->FLAG_MULTIWINDOW_TASK_CURRENT_USER:I

    return-void
.end method

.method private preInitializeNotification()V
    .locals 1

    const v0, 0x1020016

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->TITLE:I

    const v0, 0x1020504

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->TEXT:I

    const v0, 0x1020205

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->BIG_TEXT:I

    const v0, 0x1020311

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->INBOX_TEXT0:I

    const v0, 0x1020312

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->INBOX_TEXT1:I

    const v0, 0x1020313

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->INBOX_TEXT2:I

    const v0, 0x1020314

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->INBOX_TEXT3:I

    const v0, 0x1020315

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->INBOX_TEXT4:I

    const v0, 0x1020316

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->INBOX_TEXT5:I

    const v0, 0x1020317

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->INBOX_TEXT6:I

    const v0, 0x10202ec

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->HEADER_TEXT:I

    const v0, 0x10201ea

    sput v0, Lcom/samsung/systemui/splugins/bixby/PluginNotificationStatic$ID;->APP_NAME_TEXT:I

    return-void
.end method

.method private preInitializeRecents()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/RecentsUtilsProvider;->initialize()Lcom/samsung/systemui/splugins/recents/PluginRecentsUtils;

    invoke-static {}, Lcom/android/systemui/EventBusHelper;->initialize()Lcom/samsung/systemui/splugins/recents/events/PluginEventBusHelper;

    sput v3, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager$StackId;->FULLSCREEN_WORKSPACE_STACK_ID:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager$StackId;->DOCKED_STACK_ID:I

    sput v2, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager$StackId;->FREEFORM_WORKSPACE_STACK_ID:I

    sput v1, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager$StackId;->HOME_STACK_ID:I

    const/4 v0, 0x5

    sput v0, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager$StackId;->RECENTS_STACK_ID:I

    sput v1, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager;->DOCKED_STACK_CREATE_MODE_TOP_OR_LEFT:I

    const/16 v0, 0x8

    sput v0, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager;->RECENT_IGNORE_HOME_AND_RECENTS_STACK_TASKS:I

    const/16 v0, 0x10

    sput v0, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager;->RECENT_INGORE_DOCKED_STACK_TOP_TASK:I

    sput v4, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$ActivityManager;->RECENT_INCLUDE_PROFILES:I

    sput v2, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$SemWindowManager;->MAX_ASPECT_RATIO_FIXED_ON:I

    sput v1, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$SemMultiWindowManager;->DOCKED_SIZE_DEFAULT:I

    sput v1, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$MultiWindowManager;->MULTIWINDOW_MODE_NONE:I

    sput v3, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$MultiWindowManager;->MULTIWINDOW_MODE_FREEFORM:I

    sput v2, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$MultiWindowManager;->MULTIWINDOW_MODE_DOCKED:I

    sput v4, Lcom/samsung/systemui/splugins/recents/PluginRecentsStatic$MultiWindowManager;->MULTIWINDOW_MODE_PINNED:I

    return-void
.end method


# virtual methods
.method public getEmMultiWindowManager()Lcom/samsung/systemui/splugins/bixby/PluginEmMultiWindowManager;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;->getEmMultiWindowManager()Lcom/samsung/systemui/splugins/bixby/PluginEmMultiWindowManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEmNotificationManager()Lcom/samsung/systemui/splugins/bixby/PluginEmNotificationManager;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;->getEmNotificationManager()Lcom/samsung/systemui/splugins/bixby/PluginEmNotificationManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEmRecentsManager()Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;->getEmRecentsManager()Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEmTaskBarManager()Lcom/samsung/systemui/splugins/bixby/PluginEmTaskBarManager;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/EmSystemUIManagerBridge;->mEmSystemUIManagerImpl:Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/bixby/PluginEmSystemUIManager;->getEmTaskBarManager()Lcom/samsung/systemui/splugins/bixby/PluginEmTaskBarManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method
