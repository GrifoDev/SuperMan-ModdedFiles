.class public Lcom/android/settings/ApnSettings;
.super Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/multisim/MultiSimTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$1;,
        Lcom/android/settings/ApnSettings$2;,
        Lcom/android/settings/ApnSettings$3;,
        Lcom/android/settings/ApnSettings$4;,
        Lcom/android/settings/ApnSettings$5;,
        Lcom/android/settings/ApnSettings$6;,
        Lcom/android/settings/ApnSettings$7;,
        Lcom/android/settings/ApnSettings$8;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field apnList:Landroid/preference/PreferenceGroup;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private hideApnList:[Ljava/lang/String;

.field private mAddApn:Landroid/widget/RadioButton;

.field mAddApnListener:Landroid/view/View$OnClickListener;

.field private mAddCpa:Landroid/widget/RadioButton;

.field mAddCpaListener:Landroid/view/View$OnClickListener;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAllowAddingApns:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCpaAlertDialog:Landroid/app/AlertDialog;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mHideImsApn:Z

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mHotSwapStateFilter:Landroid/content/IntentFilter;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreDlg:Landroid/app/AlertDialog;

.field private mRestoreHandler:Landroid/os/Handler;

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mRestoring:Landroid/app/ProgressDialog;

.field private mSIMchangedObserver:Landroid/database/ContentObserver;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mccmnc:Ljava/lang/String;

.field private mcfgNetTypeCap:Ljava/lang/String;

.field pref:Landroid/content/SharedPreferences;

.field private pref_vzwdefault:Lcom/android/settings/ApnPreference;

.field private tIntent:Landroid/content/Intent;

.field private tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

.field private vzwapn:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/ApnSettings;)Lcom/samsung/android/settings/multisim/MultiSimTabHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/ApnSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/ApnSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/ApnSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/settings/ApnSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/ApnSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/ApnSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/ApnSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    const-string/jumbo v0, "content://telephony/carriers/restore/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mcfgNetTypeCap:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ApnSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$4;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/ApnSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$5;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/ApnSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$6;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/ApnSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$7;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/ApnSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$8;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/ApnPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p5, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0
.end method

.method private addNewApn()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    :goto_0
    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_1
    const-string/jumbo v2, "simSlot"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vzw"

    const-string/jumbo v3, "editable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "keyString"

    const-string/jumbo v3, "hidden"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "vzw"

    const-string/jumbo v3, "editable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "keyString"

    const-string/jumbo v3, "hidden"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private dualSimMPS_DataLock(I)Z
    .locals 4

    const-string/jumbo v1, "AddDataLock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.radio.networklocklist"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "ApnSettings"

    const-string/jumbo v2, "DataLockFeature is disable"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private fillList()V
    .locals 31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v4, v5, v10}, Lcom/android/settings/Utils;->getNumericString(Landroid/content/Intent;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v10}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v10

    invoke-static {v4, v5, v10}, Lcom/android/settings/Utils;->appendWhereString(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v2, v0, v4, v5}, Lcom/android/settings/Utils;->getApnCursor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count of apn from telephony db : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v28

    :cond_1
    const-string/jumbo v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fillList: where = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v10}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/android/settings/Utils;->skipApn(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip apn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/android/settings/Utils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/settings/Utils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    new-instance v25, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v5, v4}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v13

    move-object v11, v3

    move-object v14, v7

    move-object v15, v6

    invoke-static/range {v10 .. v15}, Lcom/android/settings/Utils;->modifyApn(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/4 v2, 0x0

    aget-object v6, v20, v2

    const/4 v2, 0x1

    aget-object v7, v20, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-nez v2, :cond_7

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/ApnPreference;->setNullPreferAPN()V

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "fourgsmartphone"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "Application"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v4, "do not summary SBM request"

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fillList pref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " 1/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v10, p0

    move-object v13, v8

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/ApnSettings;->setDefaultVZWAPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/android/settings/Utils;->getSelectableEnableState(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Z

    move-result-object v29

    const/4 v2, 0x0

    aget-boolean v2, v29, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-boolean v5, v29, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mSelectedKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-boolean v2, v29, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    const/4 v2, 0x2

    aget-boolean v2, v29, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    const/4 v2, 0x0

    aget-boolean v2, v29, v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/ApnPreference;->setChecked()V

    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupport3LM()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSprEditable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    new-instance v25, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v5, v4}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_1

    :cond_d
    new-instance v25, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v5, v4}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v10, p0

    move-object/from16 v11, v25

    move-object/from16 v12, v18

    move-object/from16 v13, v21

    move-object/from16 v14, v28

    move-object/from16 v15, v24

    move-object/from16 v16, v22

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_11
    move-object/from16 v10, p0

    move-object/from16 v11, v25

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v14, v28

    move-object/from16 v15, v24

    move-object/from16 v16, v22

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v18, v21

    move-object/from16 v19, v23

    :cond_13
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_14
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/settings/ApnSettings;->isEnableApnList(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;I)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    :cond_16
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    const-string/jumbo v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSubId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private goAddApn()V
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f040081

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0429

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f1101ed

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/ApnSettings;->mAddApn:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mAddApn:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f1101ee

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "kddi_cpa_added"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_0
    new-instance v4, Lcom/android/settings/ApnSettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings/ApnSettings$11;-><init>(Lcom/android/settings/ApnSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    move v1, v5

    goto :goto_0
.end method

.method private initVZWApnPreference()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/android/settings/ApnPreference;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string/jumbo v1, "LTE - Verizon Internet"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string/jumbo v1, "VZWINTERNET"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "default_vzwapn"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APN setDefaultVZWAPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static isEnableApnList(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;I)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v5, v2, :cond_0

    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "fillList SIMSLOT1 Not Ready"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-ne p2, v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v5, v2, :cond_1

    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "fillList SIMSLOT2 Not Ready"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    const-string/jumbo v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0
.end method

.method public static isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string/jumbo v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APN enable ADD option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledRestore(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v4

    :cond_1
    if-eqz p3, :cond_0

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    const-string/jumbo v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "APN enable Restore option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private restoreDefaultApn()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    return v3
.end method

.method private setDefaultVZWAPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Verizon Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LTE - Verizon Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VZW Roaming Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Tracfone - Verizon"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APN setDefaultVZWAPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "default_vzwapn"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSubId()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/settings/Utils;->updateSelectedApnKey(Landroid/content/ContentResolver;Landroid/content/ContentValues;IJ)V

    return-void
.end method

.method private showWarning()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0acc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/ApnSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettings$9;-><init>(Lcom/android/settings/ApnSettings;)V

    const v2, 0x7f0b0427

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/ApnSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettings$10;-><init>(Lcom/android/settings/ApnSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->setHasOptionsMenu(Z)V

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->initHideList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "sub_id"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->setIfOnlyAvailableForAdmins(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setElevation(F)V

    new-instance v5, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->checkMultiSim()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "ApnSettings"

    const-string/jumbo v6, "MultiSim Tab is not created"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v5, "carrier_config"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v5, "hide_ims_apn_bool"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ApnSettings;->mHideImsApn:Z

    const-string/jumbo v5, "allow_adding_apns_bool"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ApnSettings;->mAllowAddingApns:Z

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v6}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "default_vzwapn"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->setTabInteface(Lcom/samsung/android/settings/multisim/MultiSimTabInterface;)V

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UiccController not make : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->initVZWApnPreference()V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b142f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const v6, 0x7f0b0429

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "3"

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b1430

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->allowAddOrRestore(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "kddi_cpa_added"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->goAddApn()V

    :goto_1
    return v4

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v1

    if-eqz v1, :cond_5

    return v4

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->showWarning()V

    return v4

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->setCarrierEnabledStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->reqEnableCpa(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    if-nez v6, :cond_0

    const-string/jumbo v6, "apn_list"

    invoke-virtual {p0, v6}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    iput-object v6, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    :cond_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings/ApnSettings;->isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings/ApnSettings;->isEnabledRestore(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v8, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v5

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-boolean v3, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_icon_1"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_icon_2"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_name_1"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_name_2"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "phone1_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "phone1_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->refreshUI()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->resume()V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->refreshUI()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public refreshUI()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->tabHandler:Lcom/samsung/android/settings/multisim/MultiSimTabHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 2

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->showDialog(I)V

    return-void
.end method
