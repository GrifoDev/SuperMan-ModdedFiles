.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;
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

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string/jumbo v4, "portStatus"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbPortStatus;

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z

    const-string/jumbo v4, "UsbModeChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_USB_PORT_CHANGED - UsbPortStatus.getCurrentMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v5}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z

    return-void

    :cond_1
    const-string/jumbo v4, "UsbModeChooserActivity"

    const-string/jumbo v5, "ACTION_USB_PORT_CHANGED - UsbPortStatus is  null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eq v0, v7, :cond_3

    if-ne v0, v8, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbBackend;->updateUsbPort()V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbBackend;->getSupportedPowerRole()I

    move-result v1

    const-string/jumbo v4, "UsbModeChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_USB_PORT_CHANGED - mBackend.getCurrentMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "UsbModeChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_USB_PORT_CHANGED - currentPowerRole : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "UsbModeChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_USB_PORT_CHANGED - mPortPowerRole : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get7(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "UsbModeChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_USB_PORT_CHANGED - mSelectionSupplyingPower : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "UsbModeChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_USB_PORT_CHANGED - mPrevConnectedState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get8(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v1, v7, :cond_4

    const-string/jumbo v4, "UsbModeChooserActivity"

    const-string/jumbo v5, "Finish by role swap"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get7(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v1, v7, :cond_5

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get8(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v7}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b1a6a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0b04f0

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    sget v2, Lcom/android/settings/deviceinfo/UsbBackend;->MODE_DEFAULT_VALUE:I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4, v9}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z

    :cond_5
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v4, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V

    goto/16 :goto_1
.end method
