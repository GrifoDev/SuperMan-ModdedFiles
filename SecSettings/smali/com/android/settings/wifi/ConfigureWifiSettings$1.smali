.class Lcom/android/settings/wifi/ConfigureWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigureWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ConfigureWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get5(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-set1(Lcom/android/settings/wifi/ConfigureWifiSettings;Z)Z

    const-string/jumbo v1, "WiFiManageNetworks"

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get1(Lcom/android/settings/wifi/ConfigureWifiSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap4(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    :cond_0
    return-void
.end method
