.class public Lcom/android/systemui/qs/tiles/VoLteTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VoLteTile$1;,
        Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_VOICECALL_TYPE:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_VOLTE:I

.field static final VOLTE_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mListening:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVolteSupportedOpeartor()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/VoLteTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->supportVolteDBChange()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->VOLTE_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$1;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "voicecall_type"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$2;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/VoLteTile$3;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-void
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isVolteSupportedOpeartor()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_VOLTE_CHECK_OPERATOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVoLTESupportedSIM(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private showNoSIMDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f03e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/VoLteTile$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$4;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/systemui/qs/tiles/VoLteTile$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/VoLteTile$5;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private supportVolteDBChange()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVolteSupportedOpeartor()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "46605"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "supportVolteDBChange false in GT(APT) sim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/VoLteTile;->VOLTE_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03e5

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->supportVolteDBChange()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03e7

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_3
    const-string/jumbo v0, "LTE"

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03e6

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVolteSupportedOpeartor()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f03e8

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_VOLTE_CHECK_OPERATOR:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->setEnabled(Z)V

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0f03e9

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->showNoSIMDialog()V

    goto :goto_3
.end method

.method protected handleSecondaryClick()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVoLteEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v0, 0x7f0203fc

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setUserId(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVoLteEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_TW_POPUP:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->supportVolteDBChange()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->isVolteSupportedOpeartor()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
