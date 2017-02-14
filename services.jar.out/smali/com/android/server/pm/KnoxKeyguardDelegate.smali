.class public Lcom/android/server/pm/KnoxKeyguardDelegate;
.super Ljava/lang/Object;
.source "KnoxKeyguardDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;
    }
.end annotation


# static fields
.field public static final FLAG_B2C_PWC_RESET:I = 0x40

.field public static final FLAG_DISMISS_KNOX_KEYGUARD:I = 0x2

.field protected static final FLAG_FROM_NOTIFICATION:I = 0x2

.field public static final FLAG_HOME_KEY_INPUT:I = 0x8

.field public static final FLAG_KNOX_KEYGUARD_FINISHED:I = 0x80

.field private static final FLAG_MOVE_TO_KNOX:I = 0x1

.field public static final FLAG_PWD_RESET_RESULT:I = 0x4

.field public static final FLAG_RESET_KNOX_KEYGUARD:I = 0x1

.field public static final FLAG_SCREEN_OFF:I = 0x20

.field public static final FLAG_SCREEN_ON:I = 0x10

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxKeyguardDelegate"

.field private static final MSG_CLEAR_PENDING_FLAG:I = 0x4

.field private static final MSG_HIDE:I = 0x3

.field private static final MSG_HOME_SHOW:I = 0x1

.field private static final MSG_SHOW:I = 0x2

.field public static final SHARED_DEVICE_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "SharedDeviceKeyguardEventFlag"

.field private static final TIME_TO_CLEAR_PENDING_FLAG:I = 0x1388


# instance fields
.field private isHomeShowPending:Z

.field private isOwnerHomeShowPending:Z

.field private isUserUnlocked:Z

.field private final mContext:Landroid/content/Context;

.field private mEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

.field private mIsHidingProcessing:Z

.field private mIsShowingProcessing:Z

.field private mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private mUserManager:Landroid/os/UserManager;

.field private mVisibleKeyguardOwner:I

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/KnoxKeyguardDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isOwnerHomeShowPending:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/KnoxKeyguardDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isOwnerHomeShowPending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->handleHomeShow(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hide(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxNativeKeyguardHost;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->setBlurWallpaper(Lcom/android/server/pm/KnoxNativeKeyguardHost;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/KnoxKeyguardDelegate;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/KnoxKeyguardDelegate;->show(II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    new-instance v0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isUserUnlocked:Z

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isOwnerHomeShowPending:Z

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->createScrim()V

    return-void
.end method

.method private createScrim()V
    .locals 8

    const/4 v1, -0x1

    new-instance v2, Lcom/android/server/pm/KnoxNativeKeyguardHost;

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/KnoxNativeKeyguardHost;-><init>(Landroid/content/Context;Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    const v4, 0x10d00

    const/4 v6, -0x1

    const/16 v7, 0x7d8

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string/jumbo v1, "ContainerKeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private handleHomeShow(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KnoxKeyguardDelegate"

    const-string/jumbo v1, " unfreeze the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isOwnerHomeShowPending:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isOwnerHomeShowPending:Z

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->clearFlag()V

    :cond_3
    return-void
.end method

.method private declared-synchronized hide(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy_new"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getKeyguardShowState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real hide for emergency state is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isEmergencyCall"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Shared devices real hide for emergency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendSharedDeviceKeyguardCommand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iget-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_2

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hide() will be ignored. mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    :try_start_2
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "no keyguard needs to be dismissed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to dismiss keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with dismiss_all event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real hide for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    if-eq p1, v2, :cond_4

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to dismiss the wrong keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " while current visible keyguard belongs to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private sendKeyguardCommand(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZI)V

    return-void
.end method

.method private sendKeyguardCommand(IZI)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mUserManager:Landroid/os/UserManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mUserManager:Landroid/os/UserManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not running now!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'s state is SUER_LOCKED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'s state is TIMA_COMPROMISED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "KnoxKeyguardDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "is BBC Container"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "KnoxKeyguardDelegate"

    const-string/jumbo v5, "UPSM enabed! cannot start service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    iget-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    if-eqz p2, :cond_8

    const-string/jumbo v4, "KnoxKeyguardEventFlag"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    and-int/lit8 v4, p3, 0x1

    if-lez v4, :cond_5

    const-string/jumbo v4, "isMoveToKnox"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    and-int/lit8 v4, p3, 0x2

    if-lez v4, :cond_6

    const-string/jumbo v4, "isLaunchedFromNotification"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    invoke-virtual {p0, v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->showScrim(Z)V

    iput p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    iput-boolean v6, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.knox.securefolder"

    const-string/jumbo v6, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "KnoxKeyguardDelegate"

    const-string/jumbo v5, "starting KnoxKeyguard service failed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    :cond_7
    return-void

    :cond_8
    const-string/jumbo v4, "KnoxKeyguardEventFlag"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v4, -0x2710

    iput v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    iput-boolean v6, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    goto :goto_0

    :cond_9
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.knox.kss"

    const-string/jumbo v6, "com.samsung.knox.kss.KnoxKeyguardService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private sendSharedDeviceKeyguardCommand(IZ)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->showScrim(Z)V

    const-string/jumbo v1, "SharedDeviceKeyguardEventFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    iput-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V

    const-string/jumbo v1, "SharedDeviceKeyguardEventFlag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    iput-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    goto :goto_0
.end method

.method private setBlurWallpaper(Lcom/android/server/pm/KnoxNativeKeyguardHost;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wallpaper"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x4

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private declared-synchronized show(II)V
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy_new"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Shared devices real show for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendSharedDeviceKeyguardCommand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iget-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show() will be ignored. mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "UPSM enabed! ignore show()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    if-ne p1, v2, :cond_3

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, " keyguard already visible"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_4

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " other container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has keyguard shown, dismiss that first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZ)V

    :cond_4
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    if-eq p1, v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "isHomeShowPending is true skip to show keyguard!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    if-eq p1, v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isOwnerHomeShowPending:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "isOwnerHomeShowPending is true skip to show keyguard!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_9

    and-int/lit8 v2, p2, 0x1

    if-eq v2, v5, :cond_7

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    :cond_8
    const-string/jumbo v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "trust agent granted, Keyguard should not be showen and Container will be unlocked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_7
    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " real showing keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/pm/KnoxKeyguardDelegate;->sendKeyguardCommand(IZI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method clearAll()V
    .locals 3

    const/16 v2, -0x2710

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KnoxKeyguardDelegate"

    const-string/jumbo v1, "Maybe the system state is not good. It will be cleared and back to launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->clearFlag()V

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->launchOwnerHome()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "KnoxKeyguardDelegate"

    const-string/jumbo v1, "Maybe the system state is not good. It will be cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->clearFlag()V

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V

    goto :goto_0
.end method

.method declared-synchronized clearFlag()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "KnoxKeyguardDelegate"

    const-string/jumbo v1, "clear Flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getVisibleKeyguardOwner()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    return v0
.end method

.method hideScrim()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$3;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method launchOwnerHome()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isHomeShowPending:Z

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    return-void
.end method

.method declared-synchronized notifyShow(IZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " notify show "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " show ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, " unfreeze due to keyguard show"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    iget-boolean v3, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyShow() mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsShowingProcessing:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/16 v2, -0x2710

    :try_start_1
    iput v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mVisibleKeyguardOwner:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mIsHidingProcessing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onHomeShow(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onKeyguardBackPressed(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    invoke-virtual {p0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->launchOwnerHome()V

    return-void
.end method

.method onLaunchOwnerHome()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->isOwnerHomeShowPending:Z

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method postHide(I)V
    .locals 4

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method postShow(II)V
    .locals 3

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method showScrim(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardDelegate$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate$2;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showScrimSD()V
    .locals 6

    :try_start_0
    const-string/jumbo v0, "com.sec.enterprise.knox.shareddevice.keyguard"

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v4, "knox_bg_b2c_00"

    const-string/jumbo v5, "drawable"

    invoke-virtual {v2, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v5, Lcom/android/server/pm/KnoxKeyguardDelegate$1;

    invoke-direct {v5, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$1;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v4, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
