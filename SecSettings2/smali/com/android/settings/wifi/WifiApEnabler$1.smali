.class Lcom/android/settings/wifi/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v8, 0xe

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "wifi_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    const-string/jumbo v6, "wifi_ap_error_code"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {v6, v5, v4}, Lcom/android/settings/wifi/WifiApEnabler;->-wrap1(Lcom/android/settings/wifi/WifiApEnabler;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {v6, v5, v7}, Lcom/android/settings/wifi/WifiApEnabler;->-wrap1(Lcom/android/settings/wifi/WifiApEnabler;II)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "availableArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v6, "activeArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v6, "erroredArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/wifi/WifiApEnabler;->-wrap2(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler$1;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApEnabler;->-wrap0(Lcom/android/settings/wifi/WifiApEnabler;)V

    goto :goto_0
.end method
