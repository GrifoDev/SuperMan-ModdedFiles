.class Lcom/android/settings/ResetNetworkConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->-get9(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->-get2(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2, v4}, Lcom/android/settings/ResetNetworkConfirm;->-set1(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    return-void

    :cond_1
    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->-get3(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->-get5(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v3}, Lcom/android/settings/ResetNetworkConfirm;->-get7(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->-get9(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2, v5}, Lcom/android/settings/ResetNetworkConfirm;->-set3(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v2}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b1439

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2, v4}, Lcom/android/settings/ResetNetworkConfirm;->-set0(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/ResetNetworkConfirm;->-set2(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    goto :goto_0
.end method
