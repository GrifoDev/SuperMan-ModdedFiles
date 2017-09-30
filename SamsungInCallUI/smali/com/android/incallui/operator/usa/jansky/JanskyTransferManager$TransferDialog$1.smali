.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->val$this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$600(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$600(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$800(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$600(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$TransferDialog;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method
