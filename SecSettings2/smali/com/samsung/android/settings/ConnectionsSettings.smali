.class public Lcom/samsung/android/settings/ConnectionsSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ConnectionsSettings$1;,
        Lcom/samsung/android/settings/ConnectionsSettings$2;,
        Lcom/samsung/android/settings/ConnectionsSettings$3;,
        Lcom/samsung/android/settings/ConnectionsSettings$4;,
        Lcom/samsung/android/settings/ConnectionsSettings$5;,
        Lcom/samsung/android/settings/ConnectionsSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final isGlobal:Z


# instance fields
.field private mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

.field private mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

.field private mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mKnoxCustomIsProKioskMode:Z

.field private mLocationPreference:Landroid/preference/SwitchPreference;

.field private mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mNfcJapanPreference:Landroid/preference/PreferenceScreen;

.field private mNfcSwitchPreference:Landroid/preference/SwitchPreference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimCardMgr:Landroid/preference/PreferenceScreen;

.field private mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mUm:Landroid/os/UserManager;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;

.field private mWifiCallingOpen:Landroid/preference/PreferenceScreen;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettingsPreference:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ConnectionsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateWifiCallingStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateMobileNetworkMenu()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/ConnectionsSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/ConnectionsSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ConnectionsSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ConnectionsSettings$1;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ConnectionsSettings$2;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/ConnectionsSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ConnectionsSettings$5;-><init>(Lcom/samsung/android/settings/ConnectionsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static isATTVoLTEAvailable(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.intent.action.ACTIVATE_WIFI_CALLING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.nsdsvowifi"

    const-string/jumbo v3, "com.samsung.android.nsdsvowifi.VoWifiCheckActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private updateMobileNetworkMenu()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v2, "ConnectionsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMobileNetworkMenu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "mobile_network_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "mobile_network_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateWifiCallingStatus()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string/jumbo v1, "Wificalling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWifiCallingStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.scloud"

    const-string/jumbo v5, "com.samsung.android.scloud.app.ui.SCloudActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v3, 0x7f0b0476

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v20, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    const v20, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->checkForKnoxCustomProKioskEnabledItems()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_1a

    const/4 v10, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v20, "simcard_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mSimCardMgr:Landroid/preference/PreferenceScreen;

    const-string/jumbo v20, "wifi_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/preference/SwitchPreference;

    new-instance v20, Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiSettingsPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    const-string/jumbo v20, "wifi_calling_settings_open"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.hardware.nfc"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1b

    const-string/jumbo v20, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v20, "nfc_osaifukeitai_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    :cond_1
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v13, :cond_2

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDependency(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string/jumbo v20, "location_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationPreference:Landroid/preference/SwitchPreference;

    new-instance v20, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    const-string/jumbo v20, "bluetooth_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

    new-instance v20, Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnablerPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-nez v10, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSupportDeviceVisibility(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1e

    const-string/jumbo v20, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    new-instance v20, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    :goto_3
    invoke-static {v3}, Lcom/android/settings/Utils;->isVzwVoLTEFeatureEnabled(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_3
    const-string/jumbo v20, "vzw_provision_volte"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "android.hardware.type.television"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string/jumbo v20, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    if-eqz v9, :cond_6

    if-nez v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_6

    const-string/jumbo v20, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_7

    :cond_6
    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_20

    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v20

    if-eqz v20, :cond_9

    if-nez v10, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v20

    if-eqz v20, :cond_a

    :cond_9
    const-string/jumbo v20, "simcard_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mSimCardMgr:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const v21, 0x7f0b0aae

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v20

    if-nez v20, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_d

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v20

    if-nez v20, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_d

    if-eqz v10, :cond_e

    :cond_d
    const-string/jumbo v20, "kt_roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_f

    if-eqz v10, :cond_10

    :cond_f
    const-string/jumbo v20, "global_roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "OPV"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const-string/jumbo v21, "WiFi Calling"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string/jumbo v22, ""

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "WAVE2"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_24

    :cond_12
    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportWifiCalling(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mKnoxCustomIsProKioskMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    :cond_13
    const-string/jumbo v20, "wifi_calling_settings_open"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    :cond_14
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v20

    if-eqz v20, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_25

    :goto_6
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v20, v0

    const v21, 0x7f0b0078

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(I)V

    :cond_15
    const-string/jumbo v20, "persist.sys.tether_data"

    const/16 v21, -0x1

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v20, "ConnectionsSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mTetheredData: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "ConnectionsSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "cm.isTetheringSupported: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v20

    if-eqz v20, :cond_16

    const-string/jumbo v20, "AIO"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    :cond_16
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v20

    if-eqz v20, :cond_17

    const-string/jumbo v20, "ATT"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    :cond_17
    const-string/jumbo v20, "SBM"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    :cond_18
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    :cond_19
    :goto_7
    new-instance v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1b
    sget-boolean v20, Lcom/samsung/android/settings/ConnectionsSettings;->isGlobal:Z

    if-eqz v20, :cond_1c

    const-string/jumbo v20, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/preference/SwitchPreference;

    new-instance v20, Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcSwitchPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const-string/jumbo v20, "nfc_osaifukeitai_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v20, "nfc_osaifukeitai_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcJapanPreference:Landroid/preference/PreferenceScreen;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    const-string/jumbo v20, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v20, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    new-instance v20, Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    goto/16 :goto_2

    :cond_1e
    const-string/jumbo v20, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1f
    const-string/jumbo v20, "device_visibility_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v20, "CDMA"

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v20, "gsm.sim.currentcardstatus"

    const-string/jumbo v21, "9"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "gsm.sim.currentcardstatus"

    const-string/jumbo v21, "9"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    const-string/jumbo v20, "com.android.phone"

    const-string/jumbo v21, "com.android.phone.MobileNetworkSettingsTab"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_8
    invoke-virtual {v14, v8}, Lcom/samsung/android/settingslib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_21
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    const-string/jumbo v20, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_8

    :cond_22
    const-string/jumbo v20, "com.android.phone"

    const-string/jumbo v21, "com.android.phone.MobileNetworkSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_23

    const/4 v11, 0x1

    :goto_9
    const-string/jumbo v20, "sim_id"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    :cond_23
    const/4 v11, 0x0

    goto :goto_9

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/ConnectionsSettings;->isATTVoLTEAvailable(Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_25
    const-string/jumbo v20, "avea_mptcp"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_26
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v20

    if-eqz v20, :cond_27

    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "no_config_tethering"

    invoke-virtual/range {v20 .. v21}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_28

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v20

    if-eqz v20, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "no_config_tethering"

    invoke-virtual/range {v20 .. v21}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/ConnectionsSettings;->mTetheringHotspot:Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_29
    const-string/jumbo v20, "tethering_and_hotspot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ConnectionsSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->pause()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->pause()V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Connections"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateWifiCallingStatus()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingOpen:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mAirplaneModeEnabler:Lcom/samsung/android/settings/SecAirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->resume()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->resume()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mDeviceVisibilityEnabler:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->resume()V

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateWifiCallingStatus()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->updateMobileNetworkMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vowifi_menu_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "Connections"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ConnectionsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
