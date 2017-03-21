.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$1;,
        Lcom/android/settings/location/LocationSettings$2;,
        Lcom/android/settings/location/LocationSettings$3;,
        Lcom/android/settings/location/LocationSettings$4;,
        Lcom/android/settings/location/LocationSettings$5;,
        Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;,
        Lcom/android/settings/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private injector:Lcom/android/settings/location/SettingsInjector;

.field private mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

.field private mAgpsMenu:Landroid/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mClockSync:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mImproveLocation:Landroid/preference/Preference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/preference/Preference;

.field private mLocationObserver:Landroid/database/ContentObserver;

.field private mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field private mLocationUseInBackground:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/preference/PreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/location/LocationSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5

    const-string/jumbo v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    new-instance v3, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/location/LocationSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/location/LocationSettings$10;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/location/LocationSettings;->isKioskEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/android/settings/location/LocationSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$6;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "no_share_location"

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    move v1, p1

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    const v3, 0x7f0b18b0

    if-nez p1, :cond_2

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v2, :cond_4

    const v3, 0x7f0b18b0

    :goto_2
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    new-instance v5, Lcom/android/settings/location/LocationSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationSettings$9;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const v3, 0x7f0b18af

    goto :goto_2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v17, 0x7f080090

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string/jumbo v17, "clock_sync"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    const-string/jumbo v17, "assisted_gps_function_switch"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    const-string/jumbo v17, "satellite_view"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    const-string/jumbo v17, "cmcc_agpsmenu"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    const-string/jumbo v17, "location_mode"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v17, "improve_location"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    const-string/jumbo v17, "use_in_background_location"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings/location/LocationSettings$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/location/LocationSettings$8;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v17, "recent_location_requests"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v10, v4}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settingslib/location/RecentLocationApps$Request;

    new-instance v9, Lcom/android/settings/DimmableIconPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v17

    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const v17, 0x7f0b135c

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    :goto_3
    new-instance v17, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;

    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v19, "clock_sync_enabled"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings/location/LocationSettings$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings$7;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_6
    const v17, 0x7f0b135d

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    goto :goto_3

    :cond_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string/jumbo v18, "UPSM"

    const v19, 0x7f080090

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/location/LocationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v17, 0x7f040165

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v17, 0x7f0b135a

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const-string/jumbo v18, "no_share_location"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v8, 0x1

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1, v8}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode(Landroid/content/Context;)V

    return-object v16
.end method

.method private static getLocationString(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const v0, 0x7f0b1358

    return v0

    :pswitch_1
    const v0, 0x7f0b1357

    return v0

    :pswitch_2
    const v0, 0x7f0b1356

    return v0

    :pswitch_3
    const v0, 0x7f0b1355

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isKioskEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    return v1
.end method

.method private isManagedProfileRestrictedByBase()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v1, "no_share_location"

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0b1783

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    new-instance v1, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0b1362

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 13

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "gps"

    invoke-static {v7, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "content://com.sec.knox.provider/LocationPolicy"

    const-string/jumbo v11, "isGPSStateChangeAllowed"

    invoke-static {v7, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_6

    if-nez v5, :cond_6

    const/4 v3, 0x1

    :goto_1
    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_2
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_a

    :cond_1
    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_b

    :cond_2
    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_c

    :cond_3
    :goto_5
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onModeChanged(IZ)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v7}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez p2, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_2

    :cond_9
    move v7, v9

    goto :goto_6

    :cond_a
    move v7, v9

    goto :goto_3

    :cond_b
    move v7, v9

    goto :goto_4

    :cond_c
    move v8, v9

    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b1363

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->pause()V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Location"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->resume()V

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Location"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
