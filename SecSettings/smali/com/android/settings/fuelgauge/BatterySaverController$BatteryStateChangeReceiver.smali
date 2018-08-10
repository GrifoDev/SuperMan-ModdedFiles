.class final Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryStateChangeReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySaverController;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverController;Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;-><init>(Lcom/android/settings/fuelgauge/BatterySaverController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/BatterySaverController;->-get0(Lcom/android/settings/fuelgauge/BatterySaverController;)Lcom/android/settings/widget/MasterSwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/BatterySaverController;->-get2(Lcom/android/settings/fuelgauge/BatterySaverController;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/BatterySaverController;->-wrap0(Lcom/android/settings/fuelgauge/BatterySaverController;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "status"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/BatterySaverController;->-get0(Lcom/android/settings/fuelgauge/BatterySaverController;)Lcom/android/settings/widget/MasterSwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->mRegistered:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatterySaverController;->-get1(Lcom/android/settings/fuelgauge/BatterySaverController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->mRegistered:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->mRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->this$0:Lcom/android/settings/fuelgauge/BatterySaverController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatterySaverController;->-get1(Lcom/android/settings/fuelgauge/BatterySaverController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController$BatteryStateChangeReceiver;->mRegistered:Z

    goto :goto_0
.end method
