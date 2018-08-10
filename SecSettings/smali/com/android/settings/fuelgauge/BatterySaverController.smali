.class public Lcom/android/settings/fuelgauge/BatterySaverController;
.super Lcom/android/settings/core/PreferenceController;
.source "BatterySaverController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnStart;
.implements Lcom/android/settings/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySaverController$1;,
        Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;
    }
.end annotation


# instance fields
.field private mBatterySaverPref:Lcom/android/settings/widget/MasterSwitchPreference;

.field private final mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fuelgauge/BatterySaverController;)Lcom/android/settings/widget/MasterSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Lcom/android/settings/widget/MasterSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fuelgauge/BatterySaverController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fuelgauge/BatterySaverController;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fuelgauge/BatterySaverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverController$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverController;Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;

    return-void
.end method

.method private updateSummary()V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f120354

    :goto_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "low_power_trigger_level"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const v3, 0x7f120352

    :goto_1
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f120353

    goto :goto_0

    :cond_1
    const v3, 0x7f120351

    goto :goto_1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "battery_saver_summary"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "battery_saver_summary"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->refreshConditionManager()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    const/4 v1, 0x1

    return v1
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;

    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->setListening(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->setListening(Z)V

    return-void
.end method

.method refreshConditionManager()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;->refreshState()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method
