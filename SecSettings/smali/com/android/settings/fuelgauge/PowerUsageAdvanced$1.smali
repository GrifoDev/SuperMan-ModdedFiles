.class Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;
.super Landroid/os/Handler;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iget-object v8, v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->extractUsageType(Lcom/android/internal/os/BatterySipper;)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    iget-object v8, v2, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v8, v8, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->setUsageSummary(Landroid/support/v7/preference/Preference;J)V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
