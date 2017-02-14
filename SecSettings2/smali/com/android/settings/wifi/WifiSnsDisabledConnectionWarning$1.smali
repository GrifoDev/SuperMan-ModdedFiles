.class Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSnsDisabledConnectionWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->finish()V

    :cond_2
    return-void
.end method
