.class Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartNetworkSwitchPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->-wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->-wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$2;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->-wrap0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    goto :goto_0
.end method
