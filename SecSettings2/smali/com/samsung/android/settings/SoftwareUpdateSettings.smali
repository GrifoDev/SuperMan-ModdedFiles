.class public Lcom/samsung/android/settings/SoftwareUpdateSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SoftwareUpdateSettings$1;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$2;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$3;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mCscFeatureUsOpen:Z

.field private static mEnablePrl:Z

.field private static mEnableSimUnlock:Z

.field private static mInitialHour:I

.field private static mInitialMin:I

.field private static salesCode:Ljava/lang/String;


# instance fields
.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mScheduleTimePref:Landroid/preference/Preference;

.field private mScheduledUpdatePref:Landroid/preference/SwitchPreference;

.field private mSoftwareUpdatePref:Landroid/preference/Preference;

.field mUiccUnlock:Landroid/preference/Preference;

.field mUpdatePrl:Landroid/preference/Preference;

.field mUpdateProfile:Landroid/preference/Preference;

.field private mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

.field private mWifiOnlyPref:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSupportInAppFOTASchedule()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getScheduledInstallTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sput v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    sput-boolean v2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    sput-boolean v2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    sput-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdatePrl:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateProfile:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUiccUnlock:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addSoftwareUpdateBadge()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    const v1, 0x7f040206

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private applySoftwareUpdatePolicy()V
    .locals 12

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v7, "false"

    aput-object v7, v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v9, "isOTAUpgradeAllowed"

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v9, "isFirmwareAutoUpdateAllowed"

    invoke-static {v7, v8, v9, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x1

    if-nez v3, :cond_0

    const-string/jumbo v7, "SoftwareUpdateSettings"

    const-string/jumbo v8, "FOTA is disabled by policy"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    if-ne v2, v11, :cond_1

    const-string/jumbo v7, "SoftwareUpdateSettings"

    const-string/jumbo v8, "FOTA AutoUpdate is fixed by policy"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    const-string/jumbo v7, "update"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    const-string/jumbo v7, "wifi_only"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    const-string/jumbo v6, "scheduled_update"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v0, v6

    goto :goto_0
.end method

.method private static getScheduledInstallTime(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move-wide v2, v4

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private initSoftwareUpdate()V
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v5, 0x7f08011f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v5, "update"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->addSoftwareUpdateBadge()V

    const-string/jumbo v5, "wifi_only"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    const-string/jumbo v5, "scheduled_update"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    const-string/jumbo v5, "scheduled_update_time"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v10, "CscFeature_SyncML_ConfigGroupOpCode"

    const-string/jumbo v11, ""

    invoke-virtual {v5, v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "USOpen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    :goto_0
    sput-boolean v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "wifi_only"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSupportInAppFOTASchedule()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "scheduled_update"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "scheduled_update_time"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0b137f

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    const-string/jumbo v5, "update_prl"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdatePrl:Landroid/preference/Preference;

    const-string/jumbo v5, "update_profile"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateProfile:Landroid/preference/Preference;

    const-string/jumbo v5, "uicc_unlock"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUiccUnlock:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v10, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v5, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v8, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "SPR"

    sget-object v8, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "BST"

    sget-object v8, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdatePrl:Landroid/preference/Preference;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "update_prl"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateProfile:Landroid/preference/Preference;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "update_profile"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUiccUnlock:Landroid/preference/Preference;

    if-eqz v5, :cond_5

    const-string/jumbo v5, "uicc_unlock"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    return-void

    :cond_6
    move v5, v8

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v11, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {v5, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v9

    :goto_5
    invoke-virtual {v10, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWifiOnlyPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_8
    move v5, v8

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getScheduledInstallTime(Landroid/content/Context;)J

    move-result-wide v6

    const-string/jumbo v5, "SoftwareUpdateSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "get scheduledUpdateTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    if-eqz v1, :cond_b

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    :cond_b
    :goto_7
    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v5, "SoftwareUpdateSettings"

    const-string/jumbo v10, "NullPointerException in setTimeInMillis"

    invoke-static {v5, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v5, "scheduled_update_time"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    move v0, v9

    goto/16 :goto_3

    :cond_e
    move v0, v8

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v5, "SoftwareUpdateSettings"

    const-string/jumbo v8, "Samsung FOTA - Sprint devices."

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "persist.sys.omadm_hfa_prl"

    const-string/jumbo v8, "1"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    const-string/jumbo v5, "SoftwareUpdateSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Is PRL enabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdatePrl:Landroid/preference/Preference;

    if-eqz v5, :cond_10

    sget-boolean v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnablePrl:Z

    if-eqz v5, :cond_11

    :cond_10
    :goto_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v8, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    const-string/jumbo v5, "SoftwareUpdateSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Is UICC Unlock enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUiccUnlock:Landroid/preference/Preference;

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableSimUnlock:Z

    if-nez v5, :cond_5

    const-string/jumbo v5, "uicc_unlock"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    const-string/jumbo v5, "update_prl"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_SyncML_DeltaBinaryDownVia"

    const-string/jumbo v7, "Not_Define"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "SMLDM_BEARER"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sget-object v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "TMB/TMK"

    sget-object v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    :goto_2
    return v0

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "wifi_dedicated"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2
.end method

.method private static isSupportInAppFOTASchedule()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setScheduledInstallTime(II)V
    .locals 9

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-ne p1, v7, :cond_1

    if-ne p2, v7, :cond_1

    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    sput p1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sput p2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    const/16 v7, 0xb

    invoke-virtual {v1, v7, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v1, v7, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :goto_1
    const-string/jumbo v3, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save scheduled install time to settings db :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "sec.fota.intent.SET_INSTALL_TIME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "changed_data"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    sput v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sput v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    goto :goto_1
.end method

.method private updateLastCheckedDate()V
    .locals 13

    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    if-nez v9, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, ""

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "SOFTWARE_UPDATE_LAST_CHECKED_DATE"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v9, v6, v10

    if-lez v9, :cond_6

    :cond_1
    if-eqz v3, :cond_5

    const-string/jumbo v9, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04cc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_SyncML_DisableWarning4DataCostDuringFota"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v3, :cond_2

    const-string/jumbo v9, "TMB/TMK"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_2
    if-eqz v3, :cond_9

    const-string/jumbo v9, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_SyncML_DeltaBinaryDownVia"

    const-string/jumbo v11, "Not_Define"

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "SMLDM_BEARER"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_c

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v9, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    const-string/jumbo v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b04ce

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v9, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04cc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "wifi_dedicated"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b04cd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/preference/Preference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private updatePreferenceStatus()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "SOFTWARE_UPDATE_SET_INSTALL_EVERYDAY"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, "onCreate Software Update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/16 v4, 0xc

    const/16 v2, 0xb

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    invoke-virtual {v6, v2, v1}, Ljava/util/Calendar;->set(II)V

    sget v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    invoke-virtual {v6, v4, v1}, Ljava/util/Calendar;->set(II)V

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v2, v5, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0b0431

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0201b1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "NameNotFoundException in onCreateOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mUpdateTimeReceiver:Lcom/samsung/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "update_your_device"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SoftwareUpdateSettings"

    const-string/jumbo v5, "ActivityNotFoundException in onOptionsItemSelected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "upgrade"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v7

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SoftwareUpdateSettings"

    const-string/jumbo v5, "NameNotFoundException in onOptionsItemSelected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoftwareUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "scheduled_update"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1002e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_EVERYDAY"

    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v1, :cond_2

    invoke-direct {p0, v8, v8}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updatePreferenceStatus()V

    :cond_1
    :goto_1
    return v4

    :cond_2
    sget v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sget v5, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "wifi_only"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1002e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "SOFTWARE_UPDATE_WIFI_ONLY2"

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "sec.fota.intent.WIFIONLY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "changed_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v3, 0x1

    const/16 v5, 0x20

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "Software Update Checked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    const-string/jumbo v2, "update_prl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "Update PRL is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.sprint.START_PRL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "update_profile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "Update Profile is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.sprint.START_DP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "uicc_unlock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "UICC Unlock is clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.sprint.SIM_UNLOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "scheduled_update_time"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removeDialog(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->showDialog(I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->initSoftwareUpdate()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->applySoftwareUpdatePolicy()V

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SoftwareUpdate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    :cond_0
    return-void
.end method
