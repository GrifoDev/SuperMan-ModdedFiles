.class Lcom/android/settings/bluetooth/DevicePickerActivity$3$1;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$1;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$1;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$1;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3$1;->this$1:Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    iget-object v0, v0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0
.end method
