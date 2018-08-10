.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0x23

    const/4 v3, 0x1

    const/16 v8, 0xe

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    const-string/jumbo v5, "WifiApWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " userID :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "do nothing, action is null or Knox userID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const-string/jumbo v6, "wifi_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    const-string/jumbo v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Received wifi ap state changes action"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "WifiApWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Intent extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wifi_state"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const-string/jumbo v6, "wifi_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v5

    const/16 v6, 0xb

    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    :goto_0
    invoke-static {v5, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    :cond_4
    const-string/jumbo v3, "com.samsung.android.net.wifi.WIFI_EXTENDER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "wifi_state"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v3, v4

    goto :goto_0

    :cond_7
    const/16 v3, 0xd

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    goto :goto_1
.end method
