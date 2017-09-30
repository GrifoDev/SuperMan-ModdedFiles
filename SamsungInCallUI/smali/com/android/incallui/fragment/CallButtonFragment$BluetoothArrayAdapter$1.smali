.class Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;->this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;->this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;->this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;->this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    iget-object v0, v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    const-string v0, "CallButtonFragment"

    const-string v1, "Bluetooth List Popup is now dismissed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CallButtonFragment"

    const-string v1, "Bluetooth List Popup is not initiated yet."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
