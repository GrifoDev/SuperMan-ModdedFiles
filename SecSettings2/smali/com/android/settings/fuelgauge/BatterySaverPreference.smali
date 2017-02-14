.class public Lcom/android/settings/fuelgauge/BatterySaverPreference;
.super Landroid/preference/Preference;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySaverPreference$1;
    }
.end annotation


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/fuelgauge/BatterySaverPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->updateSwitch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverPreference$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;-><init>(Lcom/android/settings/fuelgauge/BatterySaverPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private updateSwitch()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0b19f5

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "low_power_trigger_level"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    const v4, 0x7f0b19f8

    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v1, 0x7f0b19f6

    goto :goto_0

    :cond_1
    const v4, 0x7f0b19f7

    goto :goto_1
.end method


# virtual methods
.method public onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
