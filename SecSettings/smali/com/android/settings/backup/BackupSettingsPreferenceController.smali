.class public Lcom/android/settings/backup/BackupSettingsPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "BackupSettingsPreferenceController.java"


# instance fields
.field private mBackupSettingsIntent:Landroid/content/Intent;

.field private mBackupSettingsSummary:Ljava/lang/String;

.field private mBackupSettingsTitle:Ljava/lang/String;

.field private mManufacturerIntent:Landroid/content/Intent;

.field private mManufacturerLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettings()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelForBackupSettings()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsTitle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getSummaryForBackupSettings()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsSummary:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentProvidedByManufacturer()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelProvidedByManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    const-string/jumbo v2, "backup_settings"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string/jumbo v2, "manufacturer_backup"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
