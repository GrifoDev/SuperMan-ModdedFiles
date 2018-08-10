.class public Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "InstallCredentialsPrefController.java"


# static fields
.field private static DBG:Z


# instance fields
.field private final mInSetupWizard:Z

.field private mInstallCredentials:Landroid/support/v7/preference/SecPreference;

.field private mIntent:Landroid/content/Intent;

.field private mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIsAvailable:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInSetupWizard:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "install_credentials"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/SecPreference;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "install_as_uid"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInSetupWizard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIsAvailable:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIsAvailable:Z

    goto :goto_0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "install_credentials"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mInstallCredentials:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "install_credentials"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f121760

    const v2, 0x7f120a0b

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/InstallCredentialsPrefController;->mIsAvailable:Z

    return v0
.end method
