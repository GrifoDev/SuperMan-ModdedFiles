.class public Lcom/android/settings/applications/WriteSettingsDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "WriteSettingsDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final APP_OPS_OP_CODE:[I


# instance fields
.field private mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mWriteSettingsDesc:Lcom/samsung/android/settings/UnclickablePreference;

.field private mWriteSettingsPrefs:Landroid/preference/Preference;

.field private mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x17

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/WriteSettingsDetails;->APP_OPS_OP_CODE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b18ae

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0b18af

    goto :goto_0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    goto :goto_0
.end method

.method private setCanWriteSettings(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x17

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/WriteSettingsDetails;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    const-string/jumbo v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsDesc:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b038b

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    const v2, 0x7f0b1984

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsDesc:Lcom/samsung/android/settings/UnclickablePreference;

    const v2, 0x7f0b1986

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.USAGE_ACCESS_CONFIG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v3}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/WriteSettingsDetails;->setCanWriteSettings(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/WriteSettingsDetails;->refreshUi()Z

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WriteSettingsDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to launch write system settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected refreshUi()Z
    .locals 4

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mAppBridge:Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsState:Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-boolean v2, v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mWriteSettingsPrefs:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public setCanWriteSettings(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x17

    invoke-virtual {v1, v2, p3, p2, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
