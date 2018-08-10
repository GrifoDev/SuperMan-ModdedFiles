.class Lcom/android/server/wifioffload/WifiOffloadService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    :cond_1
    :goto_0
    invoke-static {v6, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-set5(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-get4(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v4, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->-set1(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    :cond_2
    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wi-Fi status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->-get4(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentWifiState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v5, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-set4(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    :cond_5
    :goto_1
    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wi-Fi network state change, connected ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->-get3(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v4, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->-set4(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/16 v7, 0xc

    if-eq v1, v7, :cond_8

    const/16 v7, 0xd

    if-ne v1, v7, :cond_a

    :cond_8
    :goto_2
    invoke-static {v6, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-set2(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Mobile Hotspot setting changed, Enabled ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->-get1(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    move v4, v5

    goto :goto_2
.end method
