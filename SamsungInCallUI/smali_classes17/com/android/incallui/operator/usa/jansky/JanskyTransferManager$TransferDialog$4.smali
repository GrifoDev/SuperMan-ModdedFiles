.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;
.super Ljava/lang/Object;
.source "JanskyTransferManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;-><init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

.field final synthetic val$bgCall:Lcom/android/incallui/Call;

.field final synthetic val$fgCall:Lcom/android/incallui/Call;

.field final synthetic val$this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Lcom/android/incallui/Call;Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    iput-object p3, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    iput-object p4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v5, v5, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/incallui/TelecomAdapter;->requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-virtual {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->finish()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    iget-object v5, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v5, v5, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    const v6, 0x7f090115

    invoke-virtual {v5, v6}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    :cond_3
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getSecondaryNameForCall()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/TelecomAdapter;->explicitCallTransfer(Ljava/lang/String;)V

    const-string v4, "JanskyTransferManager"

    const-string v5, "onClick ECT"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1400(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v5, v5, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_6

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v4}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v5, v5, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1400(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    iget-object v4, v4, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "JanskyTransferManager"

    const-string v5, "onClick Consultative jansky transfer"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    iget-object v6, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v7, v7, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v7}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/incallui/TelecomAdapter;->requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    :cond_7
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v5, v5, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v6, v6, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v6}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/incallui/TelecomAdapter;->requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "JanskyTransferManager"

    const-string v5, "onClick jansky transfer"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
