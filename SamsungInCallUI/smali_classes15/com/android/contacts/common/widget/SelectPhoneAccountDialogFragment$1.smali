.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectPhoneAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 171
    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    # setter for: Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z
    invoke-static {v2, v4}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$002(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z

    .line 172
    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$100(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 173
    .local v1, "selectedAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "result":Landroid/os/Bundle;
    const-string v2, "extra_selected_account_handle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    const-string v2, "extra_set_default"

    iget-object v3, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 177
    # getter for: Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z
    invoke-static {v3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$200(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z

    move-result v3

    .line 176
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    invoke-static {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$300(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    # getter for: Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    invoke-static {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->access$300(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 181
    :cond_0
    return-void
.end method
