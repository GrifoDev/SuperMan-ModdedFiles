.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->a:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v2, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->b:I

    const v0, 0x7f0905a3

    if-eq v2, v0, :cond_0

    const v0, 0x7f0905a6

    if-ne v2, v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v0, v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->c:I

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->a(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;II)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f090584

    if-ne v2, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CALLING_ACTIVITY"

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const v0, 0x7f090644

    if-ne v2, v0, :cond_5

    invoke-static {}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->b()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-static {v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->a(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/contacts/common/vcard/ShareVCardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CALLING_ACTIVITY"

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "ImportExportDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->c:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0
.end method
