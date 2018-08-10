.class public Lcom/samsung/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
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
.field private mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

.field private mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

.field private mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private showWireLessChargeMenu:I


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->sendDownloadPopupEventBoardcast()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/DockSettings;Landroid/content/Intent;)V
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

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

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

    const v1, 0x7f121b29

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121b28

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$3;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const v2, 0x7f1211a1

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
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x0

    const-string/jumbo v4, "cover"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v4, "sview_wallpaper"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "automatic_unlock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v4, "lock_screen_dualclock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "cover_show_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "cover_show_sec_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "fast_charing_category"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v4, "fast_wireless_charging"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v4, "led_cover_notifications_icon"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "led_icon_editor"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "about_led_view_cover"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "smart_accessory_settings"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v5, 0x7f1204fd

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    :cond_1
    const-string/jumbo v4, "cover"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "automatic_unlock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "sview_wallpaper"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "lock_screen_dualclock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_show_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_show_sec_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_cover_caller_id"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_cover_notifications_icon"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_icon_editor"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "about_led_view_cover"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string/jumbo v4, "automatic_unlock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string/jumbo v4, "cover_note"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecCheckBoxPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    const-string/jumbo v4, "cover_note_weather_unit"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecListPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "cover_note"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_note_weather_unit"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_wireless_charger_menu"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    iget v4, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v5, 0x7f120ae3

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f120ae5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f120ae7

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "smart_accessory"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "smart_accessory_settings"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f1208c2

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f1205be

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "sview_wallpaper"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "lock_screen_dualclock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_show_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_show_sec_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_cover_caller_id"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_cover_notifications_icon"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_icon_editor"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "about_led_view_cover"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v4, :cond_8

    if-nez v0, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v5, 0x7f121af6

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "sview_wallpaper"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "lock_screen_dualclock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "cover_show_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "cover_show_sec_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_4
    if-eq v0, v7, :cond_10

    const-string/jumbo v4, "led_cover_caller_id"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_cover_notifications_icon"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "led_icon_editor"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "about_led_view_cover"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    if-ne v0, v7, :cond_d

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v5, 0x7f121af7

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto :goto_3

    :cond_d
    if-ne v0, v8, :cond_e

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v5, 0x7f121af5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto :goto_3

    :cond_e
    const/16 v4, 0xb

    if-ne v0, v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v5, 0x7f121af8

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v4, "cover_show_notifications"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "led_cover_caller_id"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "led_cover_notifications_icon"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const-string/jumbo v4, "led_icon_editor"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_14
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.app.ledcoverdream"

    const-string/jumbo v5, "com.samsung.android.app.ledcover.app.LCoverAboutActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "about_led_view_cover"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/SecCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v5, 0x7f120ae2

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f120ae4

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v5, 0x7f120ae6

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v4, "fast_charing_category"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "fast_wireless_charging"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static isMateCoverAttached(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mate_setting_activation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendDownloadPopupEventBoardcast()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.app.applinker.action.REQUEST_DOWNLOAD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.app.ledcoverdream"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v4, v2

    add-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    array-length v4, v2

    const/4 v5, 0x2

    invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v4, "URI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v4, "DEVICE_TYPE"

    const-string/jumbo v5, "cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "NAME"

    const-string/jumbo v5, "LED Cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v4, "DockSettings"

    const-string/jumbo v5, "show great led download popup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setShowSecNotificationsSummary()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const v2, 0x7f1205bf

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x7f120ffe

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showDownloadLedCoverAppDialog()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v4, 0x7f121b2a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f1208e1

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f1208e0

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/DockSettings$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DockSettings$5;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const v6, 0x7f1211a1

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/DockSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DockSettings$6;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120ae0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v2, 0x7f120ae3

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120ae5

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120ae7

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v2, 0x7f120ae2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120ae4

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120ae6

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1dba

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15005c

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

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

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

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/SecCheckBoxPreference;->setChecked(Z)V

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
    iget-object v3, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

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

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "automatic_unlock"

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->startMyThemeWallpaperActivity(Landroid/content/Context;)V

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LNCS"

    const-string/jumbo v5, "SViewCover"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.ledcovergrace"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace"

    const-string/jumbo v3, "com.samsung.android.app.ledcovergrace.app.LCoverNotiMainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->showDialog(I)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.ledcoverdream"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->showDownloadLedCoverAppDialog()V

    goto :goto_1

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_a

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.ledcoverdream"

    const-string/jumbo v3, "com.samsung.android.app.ledcover.app.LCoverAboutActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_b

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.mateagent"

    const-string/jumbo v4, "com.samsung.android.mateagent.setting.SettingActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 12

    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "automatic_unlock"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_b

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    const v8, 0x7f1202c6

    invoke-virtual {v5, v8}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "cover_note"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_c

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/SecCheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "cover_note_weather_unit"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v8}, Landroid/support/v7/preference/SecListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "oversea"

    const-string/jumbo v8, "ril.currentplmn"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1208f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12132c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v8, 0x7f121676

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->setShowSecNotificationsSummary()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_5
    :goto_3
    iget v5, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v5, v6, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "wireless_fast_charging"

    invoke-static {v1, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v11, :cond_6

    const-string/jumbo v5, "wireless_fast_charging"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x1

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v3, v6, :cond_f

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "com.samsung.android.app.ledcovergrace"

    invoke-static {v5, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const v8, 0x7f121b2e

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_8
    :goto_5
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_a
    :goto_6
    return-void

    :cond_b
    move v5, v7

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "dualclock_menu_settings"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_f
    move v5, v7

    goto :goto_4

    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const v8, 0x7f121b2f

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_6
.end method
