.class Lcom/android/settings/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserInfoController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->-get0()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/users/EditUserInfoController;->-set0(Lcom/android/settings/users/EditUserInfoController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->-get0()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->-get0()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/users/EditUserInfoController;->-get0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b0e1f

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/users/EditUserInfoController$1;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    const-string/jumbo v2, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserInfoController;->-get1(Lcom/android/settings/users/EditUserInfoController;)Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    iget-object v2, v2, Lcom/android/settings/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/users/EditUserInfoController$1;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserInfoController;->-get1(Lcom/android/settings/users/EditUserInfoController;)Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
