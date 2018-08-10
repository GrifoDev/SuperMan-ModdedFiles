.class Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    return-void
.end method

.method private updateWiredChargingStatus(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v5, "plugged"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v9, :cond_2

    if-ne v4, v10, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get11(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v5

    if-eq v5, v0, :cond_4

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsWiredCharging="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5, v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set2(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onWiredChargingChanged(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eq v4, v9, :cond_5

    if-ne v4, v10, :cond_8

    :cond_5
    const-string/jumbo v5, "hv_charger"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get12(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v5

    if-eq v5, v1, :cond_8

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isWiredFastCharging="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set3(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    const-string/jumbo v6, "batterymanager"

    invoke-virtual {v5, v8, v6}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    :cond_8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->updateWiredChargingStatus(Landroid/content/Intent;)V

    return-void
.end method

.method register()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->updateWiredChargingStatus(Landroid/content/Intent;)V

    return-void
.end method

.method unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
