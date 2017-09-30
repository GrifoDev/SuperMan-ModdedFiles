.class Lcom/android/incallui/fragment/CallButtonFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/CallButtonFragment;->showBluetoothDeviceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/CallButtonFragment;

.field final synthetic val$adapter:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallButtonFragment;Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/CallButtonFragment$4;->val$adapter:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/CallButtonFragment$4;->val$adapter:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment$4;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/CallButtonFragment;->mSelectedBluetoothItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->activeBTDevice(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method
