.class public Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSMultiSIMPreferredSlotView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;,
        Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;,
        Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;,
        Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;,
        Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;
    }
.end annotation


# static fields
.field private static final QsPrefferedBtnImage:[I


# instance fields
.field private SimImageIdx:[I

.field private SimName:[Ljava/lang/String;

.field private mAirplaneMode:I

.field private mContext:Landroid/content/Context;

.field mDefaultDataButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

.field private mDefaultDataSimId:I

.field mDefaultSmsButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

.field private mDefaultSmsSimId:I

.field mDefaultVoiceButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

.field private mDefaultVoiceSimId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileDataSettingEnabled:Z

.field private mPreferedVoice:I

.field private mPreferedVoiceObserver:Landroid/database/ContentObserver;

.field mSlotButtonGroup:Landroid/widget/LinearLayout;

.field private mSlotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotView:Landroid/view/View;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->QsPrefferedBtnImage:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimImageIdx:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataSimId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsSimId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceSimId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mMobileDataSettingEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mPreferedVoice:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataSimId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsSimId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceSimId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mMobileDataSettingEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mPreferedVoice:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->launchDataSlotChoice()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->updateBarVisibilities()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->QsPrefferedBtnImage:[I

    return-void

    :array_0
    .array-data 4
        0x7f0203a4
        0x7f0203a5
        0x7f0203a6
        0x7f0203ac
        0x7f0203aa
        0x7f0203a9
        0x7f0203a8
        0x7f0203ab
        0x7f0203a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    iput v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mAirplaneMode:I

    iput v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceSimId:I

    iput v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsSimId:I

    iput v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataSimId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    filled-new-array {v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimImageIdx:[I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SIM 1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM 2"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimName:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$1;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$2;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$3;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040102

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f1302e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    :cond_0
    return-void
.end method

.method private getPhoneId(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private isCTCUpgradeSimCardManager()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.simcardmanagement"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private launchDataSlotChoice()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v3, "onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataSlotChoice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v3, "activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchSimManager()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v4, "onClick()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_SIM_CARD_MANAGER:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "com.sec.android.app.simcardmanagement"

    const-string/jumbo v4, "com.sec.android.app.simcardmanagement.dsnetwork"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "showroaming"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "Booting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "toDsnetwork"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "com.sec.android.app.simsettingmgr"

    const-string/jumbo v4, "com.sec.android.app.simsettingmgr.NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "extra_up_button"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "com.sec.android.app.simcardmgr"

    const-string/jumbo v4, "com.sec.android.app.simcardmgr.NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v4, "activity not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateBarVisibilities()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoverViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    const/16 v6, 0x8

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onAttachedToWindow()V

    const-string/jumbo v4, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v7, "onAttachedToWindow()"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f1302e9

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    const v4, 0x7f1302ea

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    sget-object v7, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->VOICE:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v7, v8, v2}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f1302eb

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    sget-object v7, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->SMS:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v7, v8, v1}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x7f1302ec

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    sget-object v7, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;->DATA:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;

    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v7, v8, v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_SIM_CARD_MANAGER:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->isCTCUpgradeSimCardManager()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsButton:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;

    invoke-static {v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;->-get0(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$PrefferedSlotButton;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v4, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$4;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$5;-><init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultVoiceSimId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->getPhoneId(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultSmsSimId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->getPhoneId(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mDefaultDataSimId:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimImageIdx:[I

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "select_icon_1"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v4, v5

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "select_name_1"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimImageIdx:[I

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "select_icon_2"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v4, v9

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->SimName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "select_name_2"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHN_SIM_CARD_MANAGER:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "prefered_voice_call"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "mobile_data"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "statusbar"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mSlotView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->getBarVisibility()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    move v4, v6

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->launchSimManager()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onDetachedFromWindow()V

    const-string/jumbo v0, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHN_SIM_CARD_MANAGER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string/jumbo v0, "QSMultiSIMPreferredSlotView"

    const-string/jumbo v1, "onLongClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->launchSimManager()V

    const/4 v0, 0x0

    return v0
.end method
