.class Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateScanStateView()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    sput-boolean v3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1209ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    goto :goto_0
.end method
