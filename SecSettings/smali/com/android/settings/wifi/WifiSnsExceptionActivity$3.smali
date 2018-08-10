.class Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-wrap0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;I)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0xc9

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "keep_connection"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "netId"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get4(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3, v6}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-set0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;Z)Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    return v6

    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiSnsExceptionActivity"

    const-string/jumbo v4, "WifiManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    return v5
.end method
