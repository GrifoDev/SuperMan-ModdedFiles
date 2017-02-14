.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get6()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "UsbModeChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finish by UsbManager.USB_CONNECTE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4$1;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4$1;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;)V

    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set6(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get10(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/UsbBackend;->updateUsbPort()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I

    goto :goto_0
.end method
