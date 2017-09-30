.class Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/util/AccountsListAdapter;

.field final synthetic b:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->b:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->a:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->b:Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;->a:Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/util/AccountsListAdapter;->b(I)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->a(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method
