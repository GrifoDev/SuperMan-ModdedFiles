.class Lcom/android/incallui/TransferManager$TransferDialog$3;
.super Ljava/lang/Object;
.source "TransferManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/TransferManager$TransferDialog;-><init>(Lcom/android/incallui/TransferManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/TransferManager$TransferDialog;

.field final synthetic val$bgCall:Lcom/android/incallui/Call;

.field final synthetic val$fgCall:Lcom/android/incallui/Call;

.field final synthetic val$this$0:Lcom/android/incallui/TransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;Lcom/android/incallui/Call;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/incallui/TransferManager$TransferDialog;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->val$this$0:Lcom/android/incallui/TransferManager;

    iput-object p3, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->val$fgCall:Lcom/android/incallui/Call;

    iput-object p4, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->val$bgCall:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->val$fgCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->val$bgCall:Lcom/android/incallui/Call;

    if-nez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->val$fgCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->explicitCallTransfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-virtual {v1}, Lcom/android/incallui/TransferManager;->finish()V

    .line 231
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    iget-object v2, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v2, v2, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    const v3, 0x7f090113

    invoke-virtual {v2, v3}, Lcom/android/incallui/TransferManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/incallui/TransferManager;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/TransferManager;->access$600(Lcom/android/incallui/TransferManager;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/TransferManager$TransferDialog$3;->val$fgCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->explicitCallTransfer(Ljava/lang/String;)V

    goto :goto_0
.end method
