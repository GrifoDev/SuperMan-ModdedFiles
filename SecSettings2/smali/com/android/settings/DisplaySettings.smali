.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$1;,
        Lcom/android/settings/DisplaySettings$2;,
        Lcom/android/settings/DisplaySettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDozePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mFontSizePref:Landroid/support/v7/preference/Preference;

.field private mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModePreference:Landroid/support/v7/preference/ListPreference;

.field private mScreenSaverPreference:Landroid/support/v7/preference/Preference;

.field private mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x1120023

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11200ab

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v3, 0x10e009d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v3, "gesture.disable_camera_launch"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11200a5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isVrDisplayModeAvailable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private updateFontSizeSummary()V
    .locals 9

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "font_scale"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0036

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0c0037

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateFontSizeSummary()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "double_tap_to_wake"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "camera_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v1, :cond_a

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "camera_double_tap_power_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v1, :cond_b

    :goto_5
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    return-void

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_3

    :cond_a
    move v2, v4

    goto :goto_4

    :cond_b
    move v3, v4

    goto :goto_5
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1897

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const v10, 0x7f080065

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    const-string/jumbo v10, "screensaver"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x112006d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    const-string/jumbo v10, "font_size"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "auto_brightness"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "lift_to_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, "doze"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "tap_to_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "camera_gesture"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_5
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string/jumbo v10, "auto_rotate"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->allowAllRotations(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    const v6, 0x7f0b19e8

    :goto_6
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const v11, 0x7f0b19e5

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v11, "0"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "1"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v7, v10}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    new-instance v10, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v10, p0, v0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;Landroid/app/Activity;)V

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_8
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string/jumbo v10, "vr_display_pref"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/DropDownPreference;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const v11, 0x7f0b1986

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0b1987

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v11, "0"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "1"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v1, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "vr_display_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    new-instance v10, Lcom/android/settings/DisplaySettings$4;

    invoke-direct {v10, p0, v0}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_9
    const-string/jumbo v10, "night_mode"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v10, :cond_1

    const-string/jumbo v10, "uimode"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/UiModeManager;

    invoke-virtual {v8}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v10, "auto_brightness"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v10, "lift_to_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v10, "doze"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v10, "tap_to_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v10, "camera_gesture"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v10, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const v6, 0x7f0b19e6

    goto/16 :goto_6

    :cond_9
    const v6, 0x7f0b19e7

    goto/16 :goto_6

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_b
    const-string/jumbo v10, "auto_rotate"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    const-string/jumbo v10, "vr_display_pref"

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "screen_timeout"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "screen_off_timeout"

    invoke-static {v7, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v7, :cond_1

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_brightness_mode"

    if-eqz v1, :cond_8

    move v7, v8

    :goto_1
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v7, :cond_2

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wake_gesture_enabled"

    if-eqz v6, :cond_9

    move v7, v8

    :goto_2
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v7, :cond_3

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "doze_enabled"

    if-eqz v6, :cond_a

    move v7, v8

    :goto_3
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v7, :cond_4

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "double_tap_to_wake"

    if-eqz v6, :cond_b

    move v7, v8

    :goto_4
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v7, :cond_5

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "camera_gesture_disabled"

    if-eqz v6, :cond_c

    move v7, v9

    :goto_5
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v7, :cond_6

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "camera_double_tap_power_gesture_disabled"

    if-eqz v6, :cond_d

    :goto_6
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v7, :cond_7

    :try_start_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v7, "uimode"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/UiModeManager;

    invoke-virtual {v4, v5}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_7
    return v8

    :catch_0
    move-exception v2

    const-string/jumbo v7, "DisplaySettings"

    const-string/jumbo v10, "could not persist screen timeout setting"

    invoke-static {v7, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_8
    move v7, v9

    goto/16 :goto_1

    :cond_9
    move v7, v9

    goto/16 :goto_2

    :cond_a
    move v7, v9

    goto :goto_3

    :cond_b
    move v7, v9

    goto :goto_4

    :cond_c
    move v7, v8

    goto :goto_5

    :cond_d
    move v9, v8

    goto :goto_6

    :catch_1
    move-exception v2

    const-string/jumbo v7, "DisplaySettings"

    const-string/jumbo v9, "could not persist night mode setting"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public onResume()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_off_timeout"

    const-wide/16 v8, 0x7530

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    :cond_0
    const-string/jumbo v6, "wallpaper"

    const-string/jumbo v7, "no_set_wallpaper"

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DisplaySettings;->disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
