.class public Lcom/android/incallui/fragment/manager/DialpadFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.source "DialpadFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/DialpadFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandModeListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;",
        "Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;"
    }
.end annotation


# static fields
.field private static final ACTION_DTMF_BUSY:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DTMF_BUSY"

.field protected static final LOG_TAG:Ljava/lang/String; = "DialpadFragmentManager"


# instance fields
.field protected final DELETE_SENDDTMF_POP_DELAY:I

.field protected final EVENT_DELETE_SENDDTMF_POP:I

.field protected final EVENT_RESTORE_DTMF:I

.field private final REFRESH_DIALPAD_MENU_DELAY:I

.field protected final RESTORE_DTMF_DELAY:I

.field dtmfDialog:Landroid/app/AlertDialog;

.field mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

.field protected mHandler:Landroid/os/Handler;

.field private mIsHiden:Z

.field private mIsShowing:Z

.field mMenuObserver:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedDtmfText:Ljava/lang/String;

.field private needToShowMenu:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->EVENT_RESTORE_DTMF:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->RESTORE_DTMF_DELAY:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->EVENT_DELETE_SENDDTMF_POP:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->DELETE_SENDDTMF_POP_DELAY:I

    new-instance v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;-><init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;-><init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    const/16 v1, 0x32

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->REFRESH_DIALPAD_MENU_DELAY:I

    const-string v1, "DialpadFragmentManager..."

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_0
    const-string v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.ACTION_DTMF_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->deleteSendDtmfPopDelayed()V

    return-void
.end method

.method private deleteSendDtmfPopDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private removeCurrentDialpadFragment()V
    .locals 1

    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->removeCurrentFragment()V

    return-void
.end method

.method private runRefreshDialpadMenu()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DialpadFragmentManager - Menu is opened"

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    const-string v2, "DialpadFragmentManager - Now Menu is closed"

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;-><init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;Lcom/android/incallui/InCallMenu;)V

    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private updateMenuView(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    return-object v0
.end method

.method public checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_4

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    goto :goto_0
.end method

.method public clearSavedDtmfText()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/DialpadFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    return-object v0
.end method

.method public hideDialpad()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    const-string v0, "clear_dialpad_digits"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getSavedDtmfText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->removeCurrentDialpadFragment()V

    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    return v0
.end method

.method protected makeTestList()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-static {}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "tablet_fullscreen_mode"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->hideDialpad()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/fragment/DialpadFragment;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v4, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v5, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    :cond_2
    iput-boolean v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_0
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public onMobileKeyboardChanged()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->hideDialpad()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialpadFragmentManager...onMobileKeyboardChanged isShow()  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->setupLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->showElapsedTimeContainer()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    goto :goto_0
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->runRefreshDialpadMenu()V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->getShowMenuStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateMenuView(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOnehandModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/DialpadUi;->getShowMenuStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateMenuView(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialpadFragmentManager - onSMultiWindowOnChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->runRefreshDialpadMenu()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public restoreDtmfDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public saveDtmfText()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getSavedDtmfText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/fragment/DialpadFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/DialpadFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1002a3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$4;->$SwitchMap$com$android$incallui$fragment$manager$DialpadFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/fragment/DialpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showDialpad()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const-string v1, "clear_dialpad_digits"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/DialpadFragment;->restoreDtmfText(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    :cond_0
    iput-boolean v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    return-void
.end method

.method public updateFragment()V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    iget-boolean v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->removeCurrentDialpadFragment()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->removeCurrentDialpadFragment()V

    goto :goto_0
.end method
