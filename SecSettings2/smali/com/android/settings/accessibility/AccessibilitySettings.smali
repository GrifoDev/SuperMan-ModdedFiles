.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilitySettings$1;,
        Lcom/android/settings/accessibility/AccessibilitySettings$2;,
        Lcom/android/settings/accessibility/AccessibilitySettings$3;,
        Lcom/android/settings/accessibility/AccessibilitySettings$4;,
        Lcom/android/settings/accessibility/AccessibilitySettings$5;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoclickPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mCaptioningPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFontSizePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

.field private mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "title"

    const v4, 0x7f0b15f2

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "summary"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b15f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-super {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleToggleEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "title"

    const v4, 0x7f0b15f5

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "summary"

    const v4, 0x7f0b15f8

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-super {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleLargePointerIconPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_large_pointer_icon"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleMasterMonoPreferenceClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_mono"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "high_text_contrast_enabled"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    const/16 v9, 0x1a

    const/4 v8, 0x0

    const-string/jumbo v6, "services_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "system_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "toggle_inversion_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    const-string/jumbo v6, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    const-string/jumbo v6, "toggle_speak_password_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "toggle_large_pointer_icon"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "toggle_master_mono"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0088

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v1

    aget-object v8, v3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v6, "captioning_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "screen_magnification_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "font_size_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "autoclick_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "daltonizer_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    return-void
.end method

.method private updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_autoclick_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    if-nez v1, :cond_1

    const v2, 0x7f0b160a

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_delay"

    const/16 v4, 0x258

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0b1609

    :goto_1
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b160a

    goto :goto_1
.end method

.method private updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "font_scale"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0036

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0c0037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v2

    aget-object v5, v1, v2

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateMasterMono()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "master_mono"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "accessibility_enabled"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    const/4 v11, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    if-ge v11, v7, :cond_9

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    new-instance v16, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_4

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    :goto_2
    if-eqz v18, :cond_5

    const v23, 0x7f0b1609

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_3
    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_6

    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    :goto_4
    if-nez v17, :cond_0

    if-eqz v18, :cond_7

    :cond_0
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_5
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    const-class v23, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/settingslib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v23, "preference_key"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settingslib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "checked"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    const v23, 0x7f0b1637

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    const-string/jumbo v23, "summary"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    const-string/jumbo v23, "settings_title"

    const v24, 0x7f0b1608

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "settings_component_name"

    new-instance v24, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v23, "component_name"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_5
    const v23, 0x7f0b160a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    invoke-static/range {v23 .. v25}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    if-eqz v5, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_5

    :cond_8
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v23

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    new-instance v23, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f0402e6

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f0b1636

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_b
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "high_text_contrast_enabled"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "accessibility_display_inversion_enabled"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const/16 v6, 0x1a

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "incall_power_button_behavior"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    const/4 v3, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "speak_password"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    :goto_3
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "accessibility_large_pointer_icon"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMasterMono()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "long_press_timeout"

    iget v10, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "accessibility_captioning_enabled"

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    const-string/jumbo v6, "accessibility_display_daltonizer_enabled"

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6, v9}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "enable_accessibility_global_gesture_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v0, v7

    :goto_5
    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const v7, 0x7f0b15f6

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :goto_6
    return-void

    :cond_1
    move v6, v8

    goto/16 :goto_0

    :cond_2
    move v6, v8

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_5
    move v6, v8

    goto :goto_4

    :cond_6
    move v0, v8

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const v7, 0x7f0b15f7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b188c

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    if-ne v0, p1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleInversionPreferenceChange(Z)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleLargePointerIconPreferenceClick()V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleMasterMonoPreferenceClick()V

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-ne v0, p1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleEnableAccessibilityGesturePreferenceClick()V

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-ne v0, p1, :cond_7

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    return v1

    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method
