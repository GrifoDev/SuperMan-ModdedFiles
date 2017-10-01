.class public Lcom/samsung/android/settings/DockSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DockSettings$1;,
        Lcom/samsung/android/settings/DockSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutomaticUnlock:Landroid/preference/SwitchPreference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mFastWirelessCharging:Landroid/preference/SwitchPreference;

.field private mLedCoverNotifications:Landroid/preference/PreferenceScreen;

.field private mSViewWallpaper:Landroid/preference/PreferenceScreen;

.field private mShowNotifications:Landroid/preference/PreferenceScreen;

.field private mSmartAccessoryAboutGalaxyMate:Landroid/preference/PreferenceScreen;

.field private mSmartAccessoryCategory:Landroid/preference/PreferenceCategory;

.field private mSmartAccessoryContactUs:Landroid/preference/PreferenceScreen;

.field private mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

.field private showWireLessChargeMenu:I


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DockSettings;->updateBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/DockSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DockSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DockSettings$1;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b02fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$3;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const v2, 0x7f0b05b8

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$4;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "smart_accessory"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessoryCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "smart_accessory_about_galaxy_mate"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessoryAboutGalaxyMate:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "smart_accessory_contact_us"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessoryContactUs:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02eb

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_wireless_charger_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    iget v1, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/preference/PreferenceScreen;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.mateagent"

    const-string/jumbo v4, "com.samsung.android.mateagent.setting.SettingActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessoryAboutGalaxyMate:Landroid/preference/PreferenceScreen;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.mateagent"

    const-string/jumbo v4, "com.samsung.android.mateagent.setting.AboutGalaxyMate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessoryContactUs:Landroid/preference/PreferenceScreen;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.mateagent"

    const-string/jumbo v4, "com.samsung.android.mateagent.setting.ContactUs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    :goto_3
    return-void

    :cond_3
    const-string/jumbo v1, "cover"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_5

    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02f2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "sview_wallpaper"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "led_cover_caller_id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "led_cover_notifications_icon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02f3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_4

    :cond_c
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0b02f1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v1, "fast_charing_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v1, "smart_accessory"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "smart_accessory_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "smart_accessory_about_galaxy_mate"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "smart_accessory_contact_us"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private static isMateCoverAttached(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mate_setting_activation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0b2e

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0b31

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->initDockSettings()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "automatic_unlock"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "automatic_unlock"

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string/jumbo v5, "cover_note"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "cover_note"

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "DockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Save KEY_COVER_NOTE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "cover_note_weather_unit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "cover_note_weather_unit"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "fast_wireless_charging"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wireless_fast_charging"

    if-eqz v2, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "automatic_unlock"

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->startMyThemeWallpaperActivity(Landroid/content/Context;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "SViewCover"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.ledcovergrace"

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace.app.LCoverNotiMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->showDialog(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 12

    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "automatic_unlock"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "cover_note"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "cover_note_weather_unit"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "oversea"

    const-string/jumbo v8, "ril.currentplmn"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0871

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0af2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_3
    :goto_3
    iget v5, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v5, v6, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "wireless_fast_charging"

    invoke-static {v1, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v11, :cond_4

    const-string/jumbo v5, "wireless_fast_charging"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    if-ne v3, v6, :cond_b

    :goto_4
    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.app.ledcovergrace"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b02f7

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_6
    :goto_5
    return-void

    :cond_7
    move v5, v7

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "dualclock_menu_settings"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_3

    :cond_b
    move v6, v7

    goto :goto_4

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0b02f8

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5
.end method
