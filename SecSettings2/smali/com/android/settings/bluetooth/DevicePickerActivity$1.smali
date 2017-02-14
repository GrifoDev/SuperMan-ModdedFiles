.class Lcom/android/settings/bluetooth/DevicePickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x3e9

    const/16 v7, 0xbb

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    :cond_1
    const-string/jumbo v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "enable"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iget-boolean v2, v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->mIsTablet:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    const-string/jumbo v2, "DevicePickerActivity"

    const-string/jumbo v3, "Requesting system key event for Pinned Dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2, v8, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-wrap0(Lcom/android/settings/bluetooth/DevicePickerActivity;IZ)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2, v6, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-wrap0(Lcom/android/settings/bluetooth/DevicePickerActivity;IZ)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2, v7, v5}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-wrap0(Lcom/android/settings/bluetooth/DevicePickerActivity;IZ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "DevicePickerActivity"

    const-string/jumbo v3, "Removing system key request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2, v8, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-wrap0(Lcom/android/settings/bluetooth/DevicePickerActivity;IZ)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2, v6, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-wrap0(Lcom/android/settings/bluetooth/DevicePickerActivity;IZ)Z

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v2, v7, v4}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-wrap0(Lcom/android/settings/bluetooth/DevicePickerActivity;IZ)Z

    goto :goto_0
.end method
