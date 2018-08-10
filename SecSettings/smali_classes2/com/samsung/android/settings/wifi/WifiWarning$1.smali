.class Lcom/samsung/android/settings/wifi/WifiWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    const-string/jumbo v4, "WifiWarning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " userID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v2, "WifiWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "do nothing, action is null or Knox userID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get1(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v4

    if-ne v4, v2, :cond_2

    const-string/jumbo v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    const-string/jumbo v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/WifiWarning;->-wrap0(Lcom/samsung/android/settings/wifi/WifiWarning;I)V

    :cond_2
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    invoke-static {v4, v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-set0(Lcom/samsung/android/settings/wifi/WifiWarning;Z)Z

    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_0
.end method
