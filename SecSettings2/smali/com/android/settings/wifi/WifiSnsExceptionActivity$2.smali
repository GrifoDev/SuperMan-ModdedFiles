.class Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSnsExceptionActivity;
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

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "keep_connection"

    if-ne p2, v6, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "netId"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get3(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-set0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;Z)Z

    :cond_1
    :goto_1
    if-ne p2, v6, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string/jumbo v3, "AP_OFF"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSnsExceptionActivity"

    const-string/jumbo v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string/jumbo v3, "AP_ON"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2
.end method
