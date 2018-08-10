.class public Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShowInfomationMenu.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;,
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;,
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClockStyle:Landroid/support/v7/preference/SecPreference;

.field private mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFromCoverSetting:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v7/preference/SecRestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updatePreferenceRelatedAOD()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;-><init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;-><init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private InitValue()V
    .locals 12

    const v8, 0x7f1208f0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string/jumbo v6, "ShowInfomationMenu"

    const-string/jumbo v7, "onResume() 1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "clock_style_pref"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->setClockStyleStateInRoaming()V

    :cond_0
    const-string/jumbo v6, "lock_screen_dualclock"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v2, 0x1

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    const-string/jumbo v6, "oversea"

    const-string/jumbo v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12132c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v10}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v7, 0x7f121676

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setTitle(I)V

    :cond_2
    const-string/jumbo v6, "lock_screen_menu_owner_infomation"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecRestrictedPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    const v7, 0x7f12063b

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecRestrictedPreference;->setTitle(I)V

    :cond_3
    const-string/jumbo v6, "lock_screen_additional_info"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.aodservice"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v7, 0x7f1200f3

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_4
    :goto_3
    const-string/jumbo v6, "lock_screen_settings_weather"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isWeatherState(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_11

    const v6, 0x7f121b3e

    :goto_4
    invoke-virtual {v7, v6}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_5
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_6
    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_8
    const-string/jumbo v6, "lock_screen_menu_weather"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "lock_screen_menu_weather"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingFaceWidgets(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v11, :cond_b

    const/4 v6, 0x3

    if-eq v1, v6, :cond_b

    const/4 v6, 0x6

    if-eq v1, v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_b
    return-void

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v11}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_2

    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v7, 0x7f1200f1

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_3

    :cond_11
    const v6, 0x7f121b3d

    goto/16 :goto_4

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private RemoveMenu()V
    .locals 2

    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume() 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "lock_screen_additional_info"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportWeatherStateSettings()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static existWeatherWidgetOnLauncher(Landroid/content/Context;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "ShowInfomationMenu"

    const-string/jumbo v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    const-string/jumbo v6, "WIDGET_COUNT"

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WIDGET_COUNT"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_0
    return v1

    :cond_3
    move v1, v10

    goto :goto_0
.end method

.method public static getRegisteredCityCount(Landroid/content/Context;)I
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "LOCATION"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v6

    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public static getWidgetCount(Landroid/content/Context;)I
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return v6

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWeatherState(Landroid/content/Context;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_0

    return v10

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    if-lez v8, :cond_3

    move v1, v9

    :goto_1
    return v1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v1, v10

    goto :goto_1
.end method

.method private launchClockStyleSettings()V
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "com.samsung.android.app.aodservice"

    :goto_0
    const-string/jumbo v4, "com.samsung.android.app.clockpack.settings.ClockPackSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v3, :cond_1

    if-eq v0, v5, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_0
    :goto_1
    const-string/jumbo v3, "fromcoversettings"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v3, "com.samsung.android.app.clockpack"

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ShowInfomationMenu"

    const-string/jumbo v4, "Not exist ClockPackSetting Activity"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private setClockStyleStateInRoaming()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "aod_mode"

    sget v8, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v10, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "roaming_clock_option"

    sget v8, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isIgnoreNationalRoaming(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v6, "ShowInfomationMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNetworkRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    if-nez v2, :cond_1

    xor-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_5

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c6

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c5

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c8

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_5
.end method

.method public static showWeatherWidgetMessageDialog(Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v2, "ShowInfomationMenu"

    const-string/jumbo v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f121e37

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v2, 0x7f120fe8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$4;

    invoke-direct {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$4;-><init>()V

    const v4, 0x7f1205fd

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    const v2, 0x7f121e38

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f1218d1

    if-eqz v1, :cond_3

    const v2, 0x7f1218d0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0
.end method

.method private updatePreferenceRelatedAOD()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1eaa

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150090

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->addPreferencesFromResource(I)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ClockAndFacewidgets"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "dualclock_menu_settings"

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->setClockStyleStateInRoaming()V

    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v5, 0x7f1208f0

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1

    :cond_2
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 14

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "clock_style_pref"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->launchClockStyleSettings()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->existWeatherWidgetOnLauncher(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v6, 0x1

    :goto_1
    if-nez v7, :cond_4

    if-eqz v6, :cond_6

    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "PACKAGE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_9

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.android.settings.WeatherSettings"

    const v3, 0x7f120fe8

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "lock_screen_menu_owner_infomation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const v12, 0x7f1213ec

    if-eqz v13, :cond_c

    const v12, 0x7f12063b

    :cond_c
    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v10

    const/16 v0, 0xc8

    invoke-virtual {v10, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v10, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->InitValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->RemoveMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "ClockAndFacewidgets"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
