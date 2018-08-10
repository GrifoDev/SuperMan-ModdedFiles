.class Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;
.super Ljava/lang/Object;
.source "BluetoothAVCSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled()V
    .locals 2

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onDialogCanceled ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogNegativeClicked()V
    .locals 3

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onDialogNegativeClicked ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogPositiveClicked()V
    .locals 3

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onDialogPositiveClicked ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
