.class public Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;
.super Landroid/preference/PreferenceFragment;
.source "SmartNetworkSwitchSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$1;,
        Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;,
        Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$3;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private mAggressiveEnabled:Z

.field private mContext:Landroid/content/Context;

.field mDivider:Landroid/preference/Preference;

.field private mEnabled:Z

.field private mExcludedGroup:Landroid/preference/PreferenceGroup;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsSupportAggMode:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:I

.field private mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mSnsSettingPref:Landroid/preference/PreferenceScreen;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->finishSnsSettings()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setSkipInternetCheck(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string/jumbo v0, "SmartNetworkSwitchSettings"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$1;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$3;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d02e2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;->setLayoutResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;->setSelectable(Z)V

    return-object v0
.end method

.method private buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 4

    move-object v0, p2

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;

    invoke-direct {v3, p0, p2, v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSNSExcludedAPPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object v2
.end method

.method private finishSnsSettings()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private setActionBarTitle()V
    .locals 8

    const v1, 0x7f122147

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method

.method private setEmptyMessage()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f122118

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->setTitle(I)V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SmartNetworkSwitchSettings"

    const-string/jumbo v2, "setEmptyMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setExcludedDevicesLayout()V
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApExplainPref(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "SmartNetworkSwitchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling configuredNetworks "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    const-string/jumbo v5, "SmartNetworkSwitchSettings"

    const-string/jumbo v6, "No Item"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setEmptyMessage()V

    :cond_2
    return-void
.end method

.method private setSkipInternetCheck(IZ)V
    .locals 5

    const-string/jumbo v2, "SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSkipInternetCheck(), networkId :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x12d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "excluded_networkId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "SmartNetworkSwitchSettings"

    const-string/jumbo v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "VZW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "sns_excluded_device"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    const-string/jumbo v0, "mode_normal_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    const-string/jumbo v0, "mode_aggressive_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    const-string/jumbo v0, "mode_divider"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mDivider:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mDivider:Landroid/preference/Preference;

    const v1, 0x7f0d00e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceGroup;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setExcludedDevicesLayout()V

    return-void

    :cond_0
    const-string/jumbo v0, "sns_excluded_device_vzw"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedGroup:Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setActionBarTitle()V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f15010c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    const-string/jumbo v2, "SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Smart Network Switch Aggressive Mode Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v2, 0x7f12175f

    iput v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:I

    return-void

    :cond_0
    const v2, 0x7f15010b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const-string/jumbo v0, "SmartNetworkSwitchSettings"

    const-string/jumbo v1, "Action bar up button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:I

    const v2, 0x7f120a72

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setActionBarTitle()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SAUtils;->insertLog(I)V

    return-void
.end method
