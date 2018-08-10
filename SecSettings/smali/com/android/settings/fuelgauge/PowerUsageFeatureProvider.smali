.class public interface abstract Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProvider.java"


# virtual methods
.method public abstract getAdditionalBatteryInfoIntent()Landroid/content/Intent;
.end method

.method public abstract isAdditionalBatteryInfoEnabled()Z
.end method

.method public abstract isAdvancedUiEnabled()Z
.end method

.method public abstract isPowerAccountingToggleEnabled()Z
.end method

.method public abstract isTypeService(Lcom/android/internal/os/BatterySipper;)Z
.end method

.method public abstract isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
.end method
