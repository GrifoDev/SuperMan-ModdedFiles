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

.field private mAgpsFunctionSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mAgpsMenu:Landroid/support/v7/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

.field private mClockSync:Landroid/support/v14/preference/SecSwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mImproveLocation:Landroid/support/v7/preference/SecPreference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/support/v7/preference/SecPreference;

.field private mLocationObserver:Landroid/database/ContentObserver;

.field private mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field private mLocationUseInBackground:Landroid/support/v7/preference/SecPreference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/support/v7/preference/SecPreferenceScreen;

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

.method static synthetic -get2(Lcom/android/settings/location/LocationSettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/location/LocationSettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;
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

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V
    .locals 6

    const-string/jumbo v4, "location_services"

    invoke-virtual {p2, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    new-instance v4, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v4, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    :goto_0
    invoke-virtual {v5, v3, v4}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/android/settings/location/LocationSettings$10;

    invoke-direct {v4, p0}, Lcom/android/settings/location/LocationSettings$10;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/location/LocationSettings;->isKioskEnabled(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    :goto_1
    return-void

    :cond_0
    const/4 v4, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
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

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "no_share_location"

    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    move v1, p1

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    const v3, 0x7f121b3d

    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    if-eqz v2, :cond_3

    const v3, 0x7f121b3d

    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v5, Lcom/android/settings/location/LocationSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationSettings$9;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const v3, 0x7f121b3e

    goto :goto_1
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v19, 0x7f15008a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    const-string/jumbo v19, "clock_sync"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v19, "assisted_gps_function_switch"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v19, "satellite_view"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v19, "cmcc_agpsmenu"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/support/v7/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCBkuModel()Z

    move-result v19

    :goto_0
    if-nez v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings;->setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v19, "location_mode"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v19, "improve_location"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v19, "use_in_background_location"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/support/v7/preference/SecPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v19

    :goto_2
    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/location/LocationSettings$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/location/LocationSettings$8;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    new-instance v11, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v11, v4}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v13

    const-string/jumbo v19, "recent_location_requests"

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settingslib/location/RecentLocationApps$Request;

    new-instance v10, Lcom/android/settings/DimmableIconPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0704db

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const v19, 0x7f120f9b

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    :goto_4
    new-instance v19, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;

    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const v19, 0x7f0d0353

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setLayoutResource(I)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v21, "clock_sync_enabled"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/location/LocationSettings$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings$7;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual/range {v19 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_7
    const v19, 0x7f120f9c

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    goto :goto_4

    :cond_8
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "UPSM"

    const v21, 0x7f15008a

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/location/LocationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    new-instance v5, Landroid/support/v7/preference/SecPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0d017d

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setLayoutResource(I)V

    const v19, 0x7f120fb7

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setSelectable(Z)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setSingleLineTitle(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "no_share_location"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/4 v9, 0x1

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v9}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode(Landroid/content/Context;)V

    return-object v18
.end method

.method public static getValidManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v2

    :cond_2
    const/4 v5, 0x0

    return-object v5
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

.method private setupManagedProfileCategory(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/location/LocationSettings;->getValidManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120d02

    return v0
.end method

.method public getMetricsCategory()I
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

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 12

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/android/settings/location/LocationPreferenceController;->getLocationString(I)I

    move-result v6

    if-eqz v6, :cond_0

    const v7, 0x7f120fac

    if-ne v6, v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_0
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v9, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v7, v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v9, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v7, v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "gps"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v9, "content://com.sec.knox.provider/LocationPolicy"

    const-string/jumbo v10, "isGPSStateChangeAllowed"

    invoke-static {v7, v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_3
    iget-object v9, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_8

    xor-int/lit8 v7, p2, 0x1

    :goto_4
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_9

    xor-int/lit8 v7, p2, 0x1

    :goto_5
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_1

    xor-int/lit8 v8, p2, 0x1

    :cond_1
    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onModeChanged(IZ)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v7}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    :cond_2
    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/support/v7/preference/SecPreference;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez p2, :cond_7

    xor-int/lit8 v7, v3, 0x1

    :goto_6
    invoke-virtual {v9, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_3

    :cond_7
    move v7, v8

    goto :goto_6

    :cond_8
    move v7, v8

    goto :goto_4

    :cond_9
    move v7, v8

    goto :goto_5
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

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

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
