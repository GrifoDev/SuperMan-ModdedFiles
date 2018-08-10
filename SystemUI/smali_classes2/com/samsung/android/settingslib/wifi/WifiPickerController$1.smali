.class Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPickerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/WifiPickerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiPickerController"

    const-string/jumbo v2, "received scan result available action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->-get0(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->-wrap0(Lcom/samsung/android/settingslib/wifi/WifiPickerController;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiPickerController$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiPickerController;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiPickerController;->stopTracking()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "WifiPickerController"

    const-string/jumbo v2, "ignore to show picker dialog because Wi-Fi is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
