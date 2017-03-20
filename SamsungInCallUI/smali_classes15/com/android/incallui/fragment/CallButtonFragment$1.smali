.class Lcom/android/incallui/fragment/CallButtonFragment$1;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallButtonFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/CallButtonFragment;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    .line 565
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 566
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v2, v0}, Lcom/android/incallui/fragment/CallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/CallButtonFragment;->resetBluetoothDeviceList()V
    invoke-static {v2}, Lcom/android/incallui/fragment/CallButtonFragment;->access$100(Lcom/android/incallui/fragment/CallButtonFragment;)V

    .line 570
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 571
    iget-object v2, p0, Lcom/android/incallui/fragment/CallButtonFragment$1;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iput-object v4, v2, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, "event":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    const v2, 0x7f0903e6

    invoke-static {v2}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    :goto_0
    const v2, 0x7f090355

    invoke-static {v2}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v2, "CallButtonFragment"

    const-string v3, "Bluetooth List Popup is now dismissed"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void

    .line 578
    :cond_1
    const v2, 0x7f0903e5

    invoke-static {v2}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
