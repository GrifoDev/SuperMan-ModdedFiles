.class public Lcom/samsung/android/settings/GlobalRoamingSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "GlobalRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GlobalRoamingSettings$1;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$2;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$3;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$4;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$5;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonDataRoaming:Landroid/preference/SwitchPreference;

.field private mButtonDataSaver:Landroid/preference/Preference;

.field private mButtonRoamingEnv:Landroid/preference/PreferenceScreen;

.field private mDirectCustomerService:Landroid/preference/Preference;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingNetworkSettings:Landroid/preference/Preference;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/GlobalRoamingSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->toogleDataRoamingToast(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GlobalRoamingSettings$1;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GlobalRoamingSettings$2;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GlobalRoamingSettings$3;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GlobalRoamingSettings$4;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getDataRoamingState()Z
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "data_roaming"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private toggleDataRoaming(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toogleDataRoamingToast(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0eae

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateCurrentRoamingNetwork()V
    .locals 11

    sget-object v9, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v3, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_1

    :cond_1
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b0aa5

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const-string/jumbo v0, "button_data_roaming"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "button_data_saver"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataSaver:Landroid/preference/Preference;

    const-string/jumbo v0, "button_network_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    const-string/jumbo v0, "button_roaming_env"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonRoamingEnv:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "button_direct_call_customer_service"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mDirectCustomerService:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    const/4 v2, 0x1

    const-string/jumbo v4, "button_data_roaming"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "GlobalRoaming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange: mUseDataRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/GlobalRoamingSettings;->toggleDataRoaming(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GlobalRoaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preference: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0ab2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SIM"

    const-string/jumbo v4, "USIM"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0ab3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "SIM"

    const-string/jumbo v5, "USIM"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "button_direct_call_customer_service"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v1, "tel"

    const-string/jumbo v4, "+82234167010"

    invoke-static {v1, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "RADDialOption"

    const-string/jumbo v1, "korea"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/GlobalRoamingSettings;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_4
    const-string/jumbo v0, "button_add_service"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    const-string/jumbo v1, "http://m.roaming.uplus.co.kr"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/GlobalRoamingSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "button_data_saver"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.settings.datausage.DataSaverSummary"

    const/4 v4, 0x0

    const v5, 0x7f0b1b14

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0eaf

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->updateCurrentRoamingNetwork()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0eae

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method
