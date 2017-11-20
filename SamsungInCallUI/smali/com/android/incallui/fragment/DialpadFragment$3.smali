.class Lcom/android/incallui/fragment/DialpadFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/DialpadFragment;->showSoftInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/DialpadFragment;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/DialpadFragment;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->this$0:Lcom/android/incallui/fragment/DialpadFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->this$0:Lcom/android/incallui/fragment/DialpadFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/incallui/wrapper/InputMethodManagerWrapper;->focusIn(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->this$0:Lcom/android/incallui/fragment/DialpadFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/incallui/fragment/DialpadFragment$3;->this$0:Lcom/android/incallui/fragment/DialpadFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
