.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

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
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$callingActivity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v2, v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    const v3, 0x7f0904d9

    if-eq v2, v3, :cond_0

    const v3, 0x7f0904dc

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v3, v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mSubscriptionId:I

    # invokes: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(II)Z
    invoke-static {v4, v2, v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;II)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const v3, 0x7f0904bb

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CALLING_ACTIVITY"

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const v3, 0x7f09057a

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    # getter for: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I
    invoke-static {}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$100()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->doShareFavoriteContacts()V
    invoke-static {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$200(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/contacts/common/vcard/ShareVCardActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CALLING_ACTIVITY"

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    const-string v3, "ImportExportDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
