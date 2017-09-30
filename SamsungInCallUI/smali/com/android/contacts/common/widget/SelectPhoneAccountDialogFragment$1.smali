.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;
.super Ljava/lang/Object;

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
.field final synthetic a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v0, v3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->a(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->a(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_selected_account_handle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "extra_set_default"

    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->b(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->c(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;->a:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->c(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
