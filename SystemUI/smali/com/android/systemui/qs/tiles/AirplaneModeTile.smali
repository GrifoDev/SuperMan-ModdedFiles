.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;,
        Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private currentUserContext:Landroid/content/Context;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mDoNotShowAgain:Ljava/lang/String;

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mIsWaitingForEcmExit:Z

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private mNumSlot:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:[I

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSimCount:I

.field private mSupportCellularVoice:Z

.field private mTM:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isNecessaryToRegister()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isTSafeLockWithSecureKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getStringID(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showItPolicyToast()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 6

    const v4, 0x7f080501

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v2, 0x7f0804f1

    invoke-direct {v1, p0, v2, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v2, 0x7f0804f0

    invoke-direct {v1, p0, v2, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    const-string/jumbo v1, "DoNotshowAgainAirplaneModeOn"

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDoNotShowAgain:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->currentUserContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->userInfo:Landroid/content/pm/UserInfo;

    new-instance v1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private getPhoneId(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private getStringID(I)I
    .locals 3

    const/4 v2, 0x1

    move v0, p1

    const v1, 0x7f120116

    if-eq p1, v1, :cond_0

    const v1, 0x7f1208f6

    if-ne p1, v1, :cond_9

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/Rune;->COMMON_SUPPORT_SOFT_PHONE_DEVICE:Z

    if-eqz v1, :cond_3

    const v0, 0x7f12010e

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_6

    const v0, 0x7f1208f5

    :cond_2
    :goto_1
    return v0

    :cond_3
    const v0, 0x7f120112

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_CMCC_POPUP:Z

    if-eqz v1, :cond_5

    const v0, 0x7f12010f

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-eqz v1, :cond_1

    const v0, 0x7f12010e

    goto :goto_0

    :cond_6
    const v0, 0x7f1208f3

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_8

    const v0, 0x7f1208f4

    goto :goto_1

    :cond_8
    const v0, 0x7f1208f2

    goto :goto_1

    :cond_9
    const v1, 0x7f120118

    if-ne p1, v1, :cond_a

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-eqz v1, :cond_2

    const v0, 0x7f120119

    goto :goto_1

    :cond_a
    const v1, 0x7f120826

    if-ne p1, v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v1, :cond_2

    :cond_b
    const v0, 0x7f1208ed

    goto :goto_1
.end method

.method private isNecessaryToRegister()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Multisim isNecessaryToRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isNecessaryToRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isTSafeLockWithSecureKeyguard()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTSafeLockWithSecureKeyguard : secure show "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->supportTLockPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 11

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    iget v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    if-nez v4, :cond_1

    iput-object v10, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " registerPhoneStateListener: ActiveSimCnt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v5, [Landroid/telephony/PhoneStateListener;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_2

    aget v2, v3, v9

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v1

    if-ltz v2, :cond_3

    if-ne v0, v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerPhoneStateListener subId:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " phoneId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aput v9, v4, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v10, v4, v1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setEnabled(Z)V
    .locals 5

    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_0
.end method

.method private showConfirmCheckboxPopup()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0163

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v8, 0x7f0a0038

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v8, :cond_5

    const v8, 0x7f120110

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v8, 0x7f0a0037

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v8, :cond_2

    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_2
    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f120118

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getStringID(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f120826

    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getStringID(I)I

    move-result v9

    new-instance v10, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;

    invoke-direct {v10, p0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    const-class v8, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v8}, Lcom/android/systemui/KnoxStateMonitor;->isNeedtoSetupAirplaneModeTileDialog()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_5
    const v8, 0x7f120116

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getStringID(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private supportTLockPackage()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "com.skt.t_smart_charge"

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "supportTLockPackage()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    return v7
.end method

.method private unregisterPhoneStateListener()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterPhoneStateListener  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120063

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showItPolicyToast()V

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1208b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isAirplaneModeTileBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getMetricsCategory()I

    move-result v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_SKT_POPUP:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isTSafeLockWithSecureKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f120115

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v2, :cond_2

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Lcom/android/systemui/qs/tiles/-$Lambda$HMTI3z33aGyMrUl2PttLvK-Iv5w$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$HMTI3z33aGyMrUl2PttLvK-Iv5w$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v2, :cond_4

    return-void

    :cond_4
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_OJT_POPUP:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const-string/jumbo v2, "28601"

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f12011a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleRefreshState(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_IS_CMCC_POPUP:Z

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tw_globalactions_dont_show_again"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_8

    const/4 v0, 0x1

    :cond_7
    :goto_0
    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DoNotshowAgainAirplaneModeOn"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string/jumbo v2, "DoNotshowAgainAirplaneModeOn"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doNotShowAgain :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 12

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v6, v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iput-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    iput v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :cond_0
    const v6, 0x7f0804ef

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " handleUpdateState:  dim  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f1208b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const-class v6, Landroid/widget/Switch;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void

    :cond_1
    iget v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_1
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v6, :cond_5

    move v6, v9

    :goto_2
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v6, :cond_2

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    :cond_2
    :goto_3
    sget-boolean v6, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v6, :cond_3

    const-class v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v6

    if-eqz v6, :cond_3

    iput v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " handleUpdateState:  value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  state.dim "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v10, :cond_f

    :goto_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v6, :cond_10

    const v6, 0x7f0804ef

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " handleUpdateState: popup showing return ,  dim  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v10, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-ne v6, v7, :cond_c

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v9, :cond_a

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    if-eqz v5, :cond_9

    aget v4, v5, v8

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v3

    if-ltz v4, :cond_9

    if-ne v0, v3, :cond_9

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v6

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aget v6, v6, v0

    if-ne v6, v10, :cond_9

    add-int/lit8 v2, v2, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v6

    if-ne v2, v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "# of poweroff( in servicestate) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v6, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    goto/16 :goto_3

    :cond_b
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aget v6, v6, v8

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in-service but, mSupportCellularVoice false "

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v6, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    goto/16 :goto_3

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_e

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    if-eqz v5, :cond_d

    aget v4, v5, v8

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v3

    if-ltz v4, :cond_d

    if-ne v0, v3, :cond_d

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v6

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aget v6, v6, v0

    if-eq v6, v10, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v6

    if-ne v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "# of NON-poweroff( in servicestate) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput v7, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    goto/16 :goto_3

    :cond_f
    move v7, v8

    goto/16 :goto_4

    :cond_10
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto/16 :goto_0

    :cond_11
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto/16 :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_AirplaneModeTile_9149()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleClick()V

    return-void
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected makeStringToCurrentState(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeStringToCurrentState failed value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " enabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleRefreshState(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeStringToCurrentState set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void
.end method
