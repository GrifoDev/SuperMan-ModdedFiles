.class public Lcom/android/settings/vpn2/AppManagementFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppManagementFragment$1;,
        Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;,
        Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;
    }
.end annotation


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPackageUid:I

.field private mPreferenceAlwaysOn:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mPreferenceForget:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mPreferenceVersion:Landroid/preference/Preference;

.field private final mUserId:I

.field private mVpnLabel:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/vpn2/AppManagementFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/vpn2/AppManagementFragment;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/vpn2/AppManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    new-instance v0, Lcom/android/settings/vpn2/AppManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/AppManagementFragment$1;-><init>(Lcom/android/settings/vpn2/AppManagementFragment;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    return-void
.end method

.method private checkTargetVersion()Z
    .locals 5

    const/16 v4, 0x18

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v4, :cond_2

    return v2

    :cond_2
    const-string/jumbo v1, "AppManagementFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "AppManagementFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " targets SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; must"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " target at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to use always-on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getAlwaysOnVpnPackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLegacyVpnLockDownOrAnotherPackageAlwaysOn()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getAlwaysOnVpnPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isVpnActivated()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageUid:I

    iget-object v5, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    new-array v6, v1, [I

    const/16 v7, 0x2f

    aput v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isVpnAlwaysOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getAlwaysOnVpnPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadInfo()Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "empty bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "empty package name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageUid:I

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnActivated()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "package didn\'t register VPN profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "package not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private onAlwaysOnVpnClick(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isLegacyVpnLockDownOrAnotherPackageAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->show(Lcom/android/settings/vpn2/AppManagementFragment;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(Z)Z

    move-result v0

    return v0
.end method

.method private onForgetVpnClick()Z
    .locals 6

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    return v4
.end method

.method private setAlwaysOnVpnByUI(Z)Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v1, v4}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->show(Lcom/android/settings/vpn2/AppManagementFragment;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static show(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;)V
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "package"

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method private updateRestrictedViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v1, "no_config_vpn"

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "no_config_vpn"

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->checkTargetVersion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08013f

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceVersion:Landroid/preference/Preference;

    const-string/jumbo v0, "always_on_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v0, "forget_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/samsung/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "always_on_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(Z)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "AppManagementFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown key is clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "forget_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->onForgetVpnClick()Z

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "AppManagementFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown key is clicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->loadInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceVersion:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0b1800

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->finish()V

    goto :goto_0
.end method
