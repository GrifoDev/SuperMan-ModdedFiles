.class public Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "BatteryOptimizationPreferenceController.java"


# instance fields
.field private mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

.field private mFragment:Landroid/app/Fragment;

.field private mPackageName:Ljava/lang/String;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    return-void
.end method

.method constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerWhitelistBackend;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "battery_optimization"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, "battery_optimization"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v8}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v0, "classname"

    const-class v1, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Landroid/app/Fragment;

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120d12

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v8
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f120d17

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    const v1, 0x7f120d16

    goto :goto_0
.end method
