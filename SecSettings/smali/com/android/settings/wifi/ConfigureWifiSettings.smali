.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConfigureWifiSettings$1;,
        Lcom/android/settings/wifi/ConfigureWifiSettings$2;,
        Lcom/android/settings/wifi/ConfigureWifiSettings$3;,
        Lcom/android/settings/wifi/ConfigureWifiSettings$WpsFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

.field mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmLastStateID:Ljava/lang/String;

.field private mInSetupWizard:Z

.field private mNetworkSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

.field private mWillRespondToEm:Z


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/ConfigureWifiSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmLastStateID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/ConfigureWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWillRespondToEm:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/ConfigureWifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmLastStateID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/wifi/ConfigureWifiSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWillRespondToEm:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->isMobileHotstpotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/ConfigureWifiSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->enableHotspot20ByBixby(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->showWpsDialogByBixby()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->startManageNetworkByBixby()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$2;

    invoke-direct {v0}, Lcom/android/settings/wifi/ConfigureWifiSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWillRespondToEm:Z

    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ConfigureWifiSettings$3;-><init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static ConfigureWifiPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;Lcom/android/settings/network/NetworkScoreManagerWrapper;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroid/app/Fragment;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            "Landroid/app/FragmentManager;",
            "Lcom/android/settings/network/NetworkScoreManagerWrapper;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-direct {v2, p0, p3, v4}, Lcom/android/settings/wifi/WifiInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiPowerSavingModePrefController;

    invoke-direct {v2, p0, p3, v4}, Lcom/samsung/android/settings/wifi/WifiPowerSavingModePrefController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;

    move/from16 v0, p6

    invoke-direct {v2, p0, p3, v4, v0}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/wifi/WpsPreferenceController;

    move-object v2, p0

    move-object v3, p3

    move-object v5, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/WpsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Landroid/app/FragmentManager;Z)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/ScanForFreeWlansPrefController;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/ScanForFreeWlansPrefController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0, p3, v4}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;-><init>(Landroid/content/Context;ZLcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p0

    move-object v9, p3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;

    invoke-direct {v2, p0, p3, v4}, Lcom/samsung/android/settings/wifi/AttAutoConnectionPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;

    invoke-direct {v2, p0, p3, v4}, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/settings/wifi/WifiAutoConnectXfinityPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/settings/wifi/CharterWifiController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/ShowWifiPopupPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/WlanPermissionAvailablePrefController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;

    move/from16 v0, p6

    invoke-direct {v2, p0, v4, v0}, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;

    invoke-direct {v2, p1, p2, p0}, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-direct {v2, p1, p2, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;

    invoke-direct {v2, p0, p3, v4}, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    return-object v1
.end method

.method private enableHotspot20ByBixby(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v2, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    const-string/jumbo v2, "wifi_hs20_enable"

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Hotspot2.0AP"

    const-string/jumbo v4, "TurnedOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_hotspot20_enable"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_hotspot20_enable"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Hotspot2.0"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Hotspot2.0"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_hotspot20_enable"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_hotspot20_enable"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Hotspot2.0"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Hotspot2.0"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiAdvanced"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private isMobileHotstpotEnabled()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "ConfigureWifiSettings"

    const-string/jumbo v2, "isMobileHotstpotEnabled, Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigureWifiSettings"

    const-string/jumbo v2, "isWifiSharingEnabled, SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private refreshAllPreferences(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreenResId()I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/ConfigureWifiSettings;->addPreferencesFromResource(I)V

    sget-object v3, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "advanced_adaptive_wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v3, "advanced_network_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string/jumbo v3, "ConfigureWifiSettings"

    const-string/jumbo v4, "mWifiProgressiveDisclosureMixin set limit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {v3, p1, v4, v5}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V

    iput-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {v3, v4}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->setTileLimit(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->collapse(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->isEmptyCategory(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mAdaptiveWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mNetworkSettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    :cond_4
    return-void
.end method

.method private showWpsDialogByBixby()V
    .locals 5

    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$WpsFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/ConfigureWifiSettings$WpsFragment;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "wps_push_button"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/ConfigureWifiSettings$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "WiFi"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "WiFiAdvanced"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method private startManageNetworkByBixby()V
    .locals 11

    const v4, 0x7f12204b

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "manage_network"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiManageNetworks"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f121760

    const v2, 0x7f120a0c

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    return-void

    :cond_1
    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    move-object v5, p0

    move-object v6, p0

    move v8, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/wifi/ConfigureWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ConfigureWifiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x152

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v5, Lcom/android/settings/network/NetworkScoreManagerWrapper;

    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    invoke-direct {v5, v0}, Lcom/android/settings/network/NetworkScoreManagerWrapper;-><init>(Landroid/net/NetworkScoreManager;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    :goto_0
    const-string/jumbo v0, "extra_launch_from_setupwizard"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "extra_launch_from_setupwizard"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    const-string/jumbo v0, "ConfigureWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launch from setupwizard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/wifi/ConfigureWifiSettings;->ConfigureWifiPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;Lcom/android/settings/network/NetworkScoreManagerWrapper;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    if-nez v8, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    const-string/jumbo v0, "ConfigureWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launch from setupwizard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "ConfigureWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launch from WifiSettings setupwizard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mInSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150140

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->refreshAllPreferences(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiAdvanced"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->updatePreferenceStates()V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "WiFiAdvanced"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    if-nez v5, :cond_0

    return-void

    :cond_0
    sget-object v5, Lcom/android/settings/wifi/ConfigureWifiSettings;->controllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiProgressiveDisclosureMixin:Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    invoke-virtual {v5, v4, v2}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v5, "ConfigureWifiSettings"

    const-string/jumbo v6, "Cannot find preference with key %s in Controller %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    :cond_3
    return-void
.end method
