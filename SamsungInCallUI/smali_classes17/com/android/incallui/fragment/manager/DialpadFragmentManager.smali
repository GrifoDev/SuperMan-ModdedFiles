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
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 67
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    .line 77
    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    .line 79
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->EVENT_RESTORE_DTMF:I

    .line 80
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->RESTORE_DTMF_DELAY:I

    .line 82
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->EVENT_DELETE_SENDDTMF_POP:I

    .line 83
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->DELETE_SENDDTMF_POP_DELAY:I

    .line 86
    new-instance v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$1;-><init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    .line 251
    new-instance v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$2;-><init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    .line 388
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->REFRESH_DIALPAD_MENU_DELAY:I

    .line 113
    const-string v1, "DialpadFragmentManager..."

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 115
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 116
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    .line 117
    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    .line 119
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    .line 121
    :cond_0
    const-string v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 124
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.ACTION_DTMF_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/manager/DialpadFragmentManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->deleteSendDtmfPopDelayed()V

    return-void
.end method

.method private deleteSendDtmfPopDelayed()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 371
    return-void
.end method

.method private removeCurrentDialpadFragment()V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    .line 487
    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->removeCurrentFragment()V

    .line 488
    return-void
.end method

.method private runRefreshDialpadMenu()V
    .locals 6

    .prologue
    .line 391
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 392
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v1

    .line 394
    .local v1, "menu":Lcom/android/incallui/InCallMenu;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const-string v2, "DialpadFragmentManager - Menu is opened"

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->dismissInCallMenu()V

    .line 397
    const-string v2, "DialpadFragmentManager - Now Menu is closed"

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    .line 400
    new-instance v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;-><init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;Lcom/android/incallui/InCallMenu;)V

    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    .end local v1    # "menu":Lcom/android/incallui/InCallMenu;
    :cond_1
    return-void
.end method

.method private updateMenuView(Z)V
    .locals 1
    .param p1, "needToShowMenu"    # Z

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    .line 462
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    return-object v0
.end method

.method public checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;
    .locals 2
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_1

    .line 206
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

    .line 223
    :goto_0
    return-object v1

    .line 210
    :cond_1
    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    .line 211
    .local v0, "requestedMode":Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    .line 213
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    sget-object v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    .line 218
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v1, v0, :cond_4

    .line 219
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    .line 220
    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mFragmentType:Ljava/lang/Enum;

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    goto :goto_0
.end method

.method public clearSavedDtmfText()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    .line 357
    :cond_0
    return-void
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/DialpadFragment;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    return-object v0
.end method

.method public hideDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    .line 298
    const-string v0, "clear_dialpad_digits"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getSavedDtmfText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->removeCurrentDialpadFragment()V

    .line 304
    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    .line 305
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    .line 306
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->dtmfDialog:Landroid/app/AlertDialog;

    .line 311
    :cond_2
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_3

    .line 312
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    .line 314
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    .line 315
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    return v0
.end method

.method protected makeTestList()V
    .locals 5

    .prologue
    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mTestFragmentList:Ljava/util/List;

    .line 348
    invoke-static {}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 349
    .local v0, "mode":Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "mode":Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 174
    .local v0, "call":Lcom/android/incallui/Call;
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

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "tablet_fullscreen_mode"

    .line 179
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->hideDialpad()V

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    .line 189
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 6
    .param p1, "isClosed"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    .line 132
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/fragment/DialpadFragment;->setVisible(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v4, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 135
    iput-boolean v5, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-boolean v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    if-eqz v2, :cond_0

    .line 138
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 139
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 141
    .local v1, "state":I
    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v5, v4}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 144
    :cond_2
    iput-boolean v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsHiden:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    .line 325
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 326
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 327
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    .line 328
    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    .line 330
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    .line 332
    :cond_0
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 336
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 339
    :cond_2
    iput-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 165
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

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    goto :goto_0
.end method

.method public onMobileKeyboardChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 494
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->hideDialpad()V

    .line 497
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

    .line 498
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 504
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->setupLayout()V

    .line 505
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->showElapsedTimeContainer()V

    .line 512
    :cond_2
    :goto_0
    return-void

    .line 508
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->hideSoftInput()V

    goto :goto_0
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->runRefreshDialpadMenu()V

    .line 422
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
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

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    .line 426
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 427
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateMenuView(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    .line 431
    :cond_1
    return-void

    .line 423
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOnehandModeChanged()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getDialpadFragment()Lcom/android/incallui/DialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
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

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    .line 379
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 380
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->needToShowMenu:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateMenuView(Z)V

    .line 381
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    .line 384
    :cond_1
    return-void

    .line 376
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

    .prologue
    .line 434
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

    .line 436
    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->runRefreshDialpadMenu()V

    .line 437
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->saveDtmfText()V

    .line 438
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->updateFragment()V

    .line 440
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->restoreDtmfDelayed()V

    .line 451
    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 152
    return-void
.end method

.method public restoreDtmfDelayed()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    return-void
.end method

.method public saveDtmfText()V
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/DialpadFragment;->getSavedDtmfText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    .line 363
    :cond_0
    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/android/incallui/fragment/DialpadFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/DialpadFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/DialpadFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/DialpadFragment;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    .line 201
    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/Enum;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 228
    const v0, 0x7f100295

    .line 229
    .local v0, "containerViewId":I
    const/4 v1, 0x0

    .line 230
    .local v1, "setFragment":Landroid/app/Fragment;
    sget-object v2, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$4;->$SwitchMap$com$android$incallui$fragment$manager$DialpadFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;

    .end local p1    # "mode":Ljava/lang/Enum;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$FragmentMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 243
    :goto_0
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    .line 246
    :cond_0
    return-void

    .line 232
    :pswitch_0
    new-instance v1, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;-><init>()V

    .line 233
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 235
    :pswitch_1
    new-instance v1, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/VideoCallDialpadQCIFFragment;-><init>()V

    .line 236
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 238
    :pswitch_2
    new-instance v1, Lcom/android/incallui/fragment/DialpadFragment;

    .end local v1    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v1}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    .line 239
    .restart local v1    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 230
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

    .prologue
    const/4 v3, 0x1

    .line 269
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    .line 271
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 272
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 274
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 276
    const-string v1, "clear_dialpad_digits"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->getFragment()Lcom/android/incallui/fragment/DialpadFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/DialpadFragment;->restoreDtmfText(Ljava/lang/String;)V

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mSavedDtmfText:Ljava/lang/String;

    .line 284
    :cond_0
    iput-boolean v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    .line 285
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V

    .line 287
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_1

    .line 288
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    .line 290
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    .line 291
    return-void
.end method

.method public updateFragment()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 465
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

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 468
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    .line 470
    .local v2, "isVideoCall":Z
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

    .line 471
    .local v1, "isDisconnect":Z
    :cond_3
    iget-boolean v4, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mIsShowing:Z

    if-eqz v4, :cond_5

    .line 472
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 473
    iget-object v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->removeCurrentDialpadFragment()V

    goto :goto_0

    .line 475
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/DialpadFragment;

    goto :goto_0

    .line 477
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/DialpadFragment;

    if-eqz v3, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->removeCurrentDialpadFragment()V

    goto :goto_0
.end method
