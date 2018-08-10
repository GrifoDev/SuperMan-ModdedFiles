.class public Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.super Landroid/app/Fragment;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;
    }
.end annotation


# static fields
.field private static mIsDesktopMode:Z

.field private static sCurrentNavBarType:I


# instance fields
.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisabledFlags1:I

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mFullscreenVisibility:I

.field public mHomeBlockedThisTouch:Z

.field private mLastLockToAppLongPress:J

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

.field private mNavigationBarMode:I

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private mRecents:Lcom/android/systemui/recents/Recents;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSystemUiVisibility:I

.field private mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sCurrentNavBarType:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsDesktopMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$9;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private adjustDisableFlags(I)I
    .locals 7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CommandQueue;->getNavBarDisable1()I

    move-result v2

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CommandQueue;->getNavBarDisable1()I

    move-result v1

    :goto_0
    if-eq v1, p1, :cond_0

    xor-int v0, p1, v1

    const-string/jumbo v2, "NavigationBar"

    const-string/jumbo v3, "disable1: 0x%08x -> 0x%08x (diff1: 0x%08x)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method private barMode(IIIII)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    or-int/lit8 v0, p5, 0x1

    and-int v3, p1, p3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    and-int v1, p1, p4

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    and-int v1, p1, v0

    if-ne v1, v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    and-int v1, p1, p5

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    and-int v1, p2, p4

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private computeBarMode(IIIIIII)I
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(IIIII)I

    move-result v7

    move-object v0, p0

    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(IIIII)I

    move-result v6

    if-ne v7, v6, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v6
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v5, v4, :cond_0

    :goto_0
    sput-boolean v4, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsDesktopMode:Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d00f2

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v6

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_DYNAMIC_ADD_REMOVE:Z

    if-nez v4, :cond_2

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string/jumbo v5, "NavigationBar"

    const v6, 0x7f0a037d

    invoke-virtual {v4, v6, v0, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    const-string/jumbo v4, "NavigationBar"

    invoke-virtual {v1, v4, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v3
.end method

.method public static getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsDesktopMode:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private makeTaskBar(Z)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->setupTaskBarView(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setupDeskMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getTaskBarView()Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    return-object v0
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked()V

    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    return v1
.end method

.method private onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NavigationBar"

    const-string/jumbo v2, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    return v4

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .locals 14

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_3

    xor-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xc8

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    const/4 v10, 0x1

    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0a0062

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    :cond_2
    :goto_0
    if-eqz v6, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v5, v0

    const/4 v10, 0x0

    const/16 v11, 0x80

    invoke-virtual {v5, v10, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    const/4 v10, 0x1

    return v10

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0a0062

    if-ne v10, v11, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    const/4 v10, 0x1

    return v10

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    const v11, 0x7f0a040e

    if-ne v10, v11, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressRecents()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    return v10

    :catch_0
    move-exception v3

    const-string/jumbo v10, "NavigationBar"

    const-string/jumbo v11, "Unable to reach activity manager"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    const/4 v10, 0x0

    return v10
.end method

.method private onLongPressRecents()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v1, 0x10f

    const/16 v2, 0x11e

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    move-result v0

    return v0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0
.end method

.method private onVerticalChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sCurrentNavBarType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_HANDLE_KEY_EVENT_ON_PWM:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method private refreshLayout(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static switchNavigationBar(Landroid/view/View;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;I)V
    .locals 5

    sget v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sCurrentNavBarType:I

    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    sput p2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sCurrentNavBarType:I

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    const v4, 0x7f0a037d

    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    const-string/jumbo v2, "NavigationBar"

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method private updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "accessibility_display_magnification_navbar_enabled"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v10, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v7, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    if-lt v3, v10, :cond_3

    const/4 v5, 0x1

    :goto_2
    const/4 v7, 0x2

    if-lt v3, v7, :cond_4

    const/4 v6, 0x1

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7, v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    return-void

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-0(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-1(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onVerticalChanged(Z)V

    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-10(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-5(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-6(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-8(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-9(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method public checkNavBarModes()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;Z)V

    return-void
.end method

.method public disable(IIZ)V
    .locals 2

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->adjustDisableFlags(I)I

    move-result p1

    :cond_0
    const/high16 v1, 0x3600000

    and-int v0, p1, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    :cond_1
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$11;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1c0

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "  mNavigationBarWindowState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mNavigationBarMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBarView"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_0
    const-string/jumbo v0, "  mNavigationBarView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finishBarAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    return-object v0
.end method

.method public getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    return-object v0
.end method

.method public isSemiTransparent()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NavigationBarFragment_32794()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method public notifyDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v3, v1, :cond_2

    :goto_0
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsDesktopMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/systemui/recents/Recents;

    invoke-static {v1, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "disabled_state"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const-string/jumbo v1, "icon_hint_state"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    :cond_0
    const-class v1, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkNavigationBarType()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sCurrentNavBarType:I

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsDesktopMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->makeTaskBar(Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sCurrentNavBarType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0d00f7

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f0d0194

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_2
    const v0, 0x7f0d00ee

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->clearTaskBar()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsDesktopMode:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->shouldDisableNavbarGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->abortCurrentGesture()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onKeyguardOccludedChanged(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "disabled_state"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "icon_hint_state"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->saveState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$10;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v7, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->restoreState(Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method public prepareKnoxDesktopTaskBar(Z)V
    .locals 3

    const-string/jumbo v0, "NavigationBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[DS] prepareKnoxDesktopTaskBar show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public setCurrentSysuiVisibility(I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const/high16 v3, 0x8000000

    const/high16 v4, -0x80000000

    const v5, 0x8000

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    :goto_0
    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    return-void

    :cond_0
    move v6, v1

    goto :goto_0
.end method

.method public setForceImmersiveBtnVisibility(Z)V
    .locals 3

    const-string/jumbo v0, "NavigationBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForceImmersiveBtnVisibility visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setPinButtonVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    or-int/lit8 v0, v0, 0x1

    :goto_1
    if-eqz p4, :cond_3

    or-int/lit8 v0, v0, 0x2

    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-ne v0, v2, :cond_4

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    :cond_4
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public setKnoxDesktopTaskBar(ZZ)V
    .locals 3

    const-string/jumbo v0, "NavigationBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[DS] setKnoxDesktopTaskBar show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasNaviBar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 3

    const-string/jumbo v0, "NavigationBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNaviBarRemoteView requestClass : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteViews : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 13

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    move/from16 v0, p4

    not-int v1, v0

    and-int/2addr v1, v2

    and-int v6, p1, p4

    or-int v3, v1, v6

    xor-int v9, v3, v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mFullscreenVisibility:I

    move/from16 v0, p4

    not-int v1, v0

    and-int/2addr v1, v4

    and-int v6, p2, p4

    or-int v5, v1, v6

    xor-int v10, v5, v4

    const/4 v12, 0x0

    if-nez v9, :cond_0

    if-eqz v10, :cond_3

    :cond_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mFullscreenVisibility:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v11, -0x1

    :goto_0
    const/4 v1, -0x1

    if-eq v11, v1, :cond_5

    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-eq v1, v11, :cond_2

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    move/from16 v0, p4

    invoke-virtual {v1, p1, v0, v12, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    return-void

    :cond_4
    const/high16 v6, 0x8000000

    const/high16 v7, -0x80000000

    const v8, 0x8000

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->computeBarMode(IIIIIII)I

    move-result v11

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public setWindowState(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    :cond_0
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateKnoxDesktopTaskBarAsUser()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->onUserSwitched()V

    :cond_0
    return-void
.end method
