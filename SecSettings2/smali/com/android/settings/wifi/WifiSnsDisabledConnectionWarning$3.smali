.class Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;
.super Ljava/lang/Object;
.source "WifiSnsDisabledConnectionWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->showWifiSnsDisabledConnectionWarningDialog()V
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

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->-get1(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x10a

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "disconnect_and_enable_SNS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "netId"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->-get2(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->-get1(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$3;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->finish()V

    return v4

    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiSnsDisabledConnectionWarning"

    const-string/jumbo v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
