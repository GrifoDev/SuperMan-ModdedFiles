.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;
.super Ljava/lang/Object;
.source "DeviceVisibilityEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceVisibilityObserver:Landroid/database/ContentObserver;

.field private mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->updateSwitchPreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SecSwitchPreference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler$1;-><init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f120809

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private updateSwitchPreference()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "DeviceVisibilityEnabler"

    const-string/jumbo v4, "updateSwitchPreference"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v0, v2, :cond_2

    const v1, 0x7f121b3e

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v0, v2, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const v1, 0x7f120807

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v6, "DeviceVisibilityEnabler"

    const-string/jumbo v9, "onPreferenceChange"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "Settings"

    invoke-static {v6, v9}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0b0122

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f0b018f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v3, :cond_1

    const/16 v6, 0x3e8

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v10, v11, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->hasPermissions(Landroid/content/Context;)Z

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->isQcFirstLaunched(Landroid/content/Context;)Z

    move-result v4

    if-eqz v1, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "DEVICE_VISIBILITY_STATE_VALUE"

    if-eqz v3, :cond_2

    move v6, v8

    :goto_1
    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.oneconnect"

    const-string/jumbo v8, "com.samsung.android.oneconnect.ui.SettingsPermissionActivity"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v7

    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "DeviceVisibilityEnabler"

    const-string/jumbo v8, "ActivityNotFoundException - SettingsPermissionActivity"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    move v7, v8

    :cond_4
    const-string/jumbo v9, "Settings"

    invoke-static {v6, v7, v9}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;ILjava/lang/String;)V

    return v8
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mDeviceVisibilityObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityEnabler;->updateSwitchPreference()V

    return-void
.end method
