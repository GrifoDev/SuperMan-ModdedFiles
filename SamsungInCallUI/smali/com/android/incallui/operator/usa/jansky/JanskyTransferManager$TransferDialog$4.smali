.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;
.super Ljava/lang/Object;

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
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/TelecomAdapter;->requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    const v2, 0x7f09016a

    invoke-virtual {v1, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1100(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    :cond_3
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryNameForCall()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->explicitCallTransfer(Ljava/lang/String;)V

    const-string v0, "JanskyTransferManager"

    const-string v1, "onClick ECT"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1400(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1400(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "JanskyTransferManager"

    const-string v1, "onClick Consultative jansky transfer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v3, v3, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v3}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$fgCall:Lcom/android/incallui/Call;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->val$bgCall:Lcom/android/incallui/Call;

    :cond_7
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1200(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$4;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v3, v3, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v3}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1300(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/TelecomAdapter;->requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JanskyTransferManager"

    const-string v1, "onClick jansky transfer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
