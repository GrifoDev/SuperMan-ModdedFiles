.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;)V

    new-instance v1, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;)V

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    new-instance v3, Lcom/android/systemui/keyboard/BluetoothDialog;

    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v4, v4, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/keyboard/BluetoothDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/systemui/keyboard/KeyboardUI;->-set0(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/BluetoothDialog;)Lcom/android/systemui/keyboard/BluetoothDialog;

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const v3, 0x7f1202e4

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyboard/BluetoothDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const v3, 0x7f1202e3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyboard/BluetoothDialog;->setMessage(I)V

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const v3, 0x7f1202e2

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/keyboard/BluetoothDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/keyboard/BluetoothDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyboard/BluetoothDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyboard/BluetoothDialog;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->-get0(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyboard/BluetoothDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
