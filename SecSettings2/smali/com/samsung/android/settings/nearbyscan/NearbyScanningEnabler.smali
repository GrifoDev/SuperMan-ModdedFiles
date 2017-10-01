.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;,
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;,
        Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInit:Z

.field private mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

.field private mNearbyScanningObserver:Landroid/database/ContentObserver;

.field private mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

.field private mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/samsung/android/settings/SettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$3;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    instance-of v0, p2, Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/samsung/android/settings/SettingsSwitchPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/android/settings/widget/SwitchBar;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/preference/SwitchPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    goto :goto_0
.end method


# virtual methods
.method public getNearbyScanningSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public init()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne v0, v3, :cond_1

    const v1, 0x7f0b19db

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    :cond_0
    :goto_1
    const-string/jumbo v1, "NearbyScanningEnabler"

    const-string/jumbo v2, "Switch is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    return v1

    :cond_1
    const v1, 0x7f0b19dc

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearByScanningSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    goto :goto_1
.end method

.method public onDestroyView()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mOnSwitchChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "Init is faild"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "ContentResolver is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mIsInit:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Init is faild"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "ContentResolver is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    :try_start_0
    const-string/jumbo v3, "nearby_scanning_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v0, v3, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/SettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne v2, v4, :cond_3

    const v3, 0x7f0b19db

    :goto_1
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSettingsSwitch:Lcom/samsung/android/settings/SettingsSwitchPreference;

    if-ne v2, v4, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const v3, 0x7f0b19dc

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->mNearbyScanningSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v2, v4, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return v4

    :cond_7
    const-string/jumbo v3, "NearbyScanningEnabler"

    const-string/jumbo v4, "Switch is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method
