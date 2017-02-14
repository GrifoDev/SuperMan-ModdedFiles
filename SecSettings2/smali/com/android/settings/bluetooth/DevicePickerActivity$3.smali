.class Lcom/android/settings/bluetooth/DevicePickerActivity$3;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V
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

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get0(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-set2(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get0(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-set0(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get0(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get3(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->ScanBtnStateUpdate(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get4(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$3$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->-get1(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$3$2;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/DevicePickerActivity;->ScanBtnStateUpdate(Z)V

    goto :goto_0
.end method
