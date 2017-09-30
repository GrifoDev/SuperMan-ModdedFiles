.class Lcom/android/incallui/TransferManager$TransferDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$this$0:Lcom/android/incallui/TransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iput-object p2, p0, Lcom/android/incallui/TransferManager$TransferDialog$1;->val$this$0:Lcom/android/incallui/TransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/TransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-static {v0}, Lcom/android/incallui/TransferManager;->access$200(Lcom/android/incallui/TransferManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/TransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-static {v0}, Lcom/android/incallui/TransferManager;->access$200(Lcom/android/incallui/TransferManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-static {v1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/TransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v0, v0, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-static {v0}, Lcom/android/incallui/TransferManager;->access$200(Lcom/android/incallui/TransferManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/TransferManager$TransferDialog$1;->this$1:Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, v1, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-static {v1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
