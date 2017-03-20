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
    .param p1, "this$0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v2, v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    .line 192
    .local v2, "resId":I
    const v3, 0x7f0904e3

    if-eq v2, v3, :cond_0

    const v3, 0x7f0904e6

    if-ne v2, v3, :cond_2

    .line 193
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    .line 194
    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v3, v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mSubscriptionId:I

    .line 193
    # invokes: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(II)Z
    invoke-static {v4, v2, v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;II)Z

    move-result v0

    .line 218
    .local v0, "dismissDialog":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 221
    :cond_1
    return-void

    .line 195
    .end local v0    # "dismissDialog":Z
    :cond_2
    const v3, 0x7f0904c5

    if-ne v2, v3, :cond_3

    .line 196
    const/4 v0, 0x1

    .line 197
    .restart local v0    # "dismissDialog":Z
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .line 198
    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/contacts/common/vcard/ExportVCardActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v1, "exportIntent":Landroid/content/Intent;
    const-string v3, "CALLING_ACTIVITY"

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 202
    .end local v0    # "dismissDialog":Z
    .end local v1    # "exportIntent":Landroid/content/Intent;
    :cond_3
    const v3, 0x7f090579

    if-ne v2, v3, :cond_5

    .line 203
    const/4 v0, 0x1

    .line 204
    .restart local v0    # "dismissDialog":Z
    # getter for: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I
    invoke-static {}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$100()I

    move-result v3

    if-nez v3, :cond_4

    .line 205
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->doShareFavoriteContacts()V
    invoke-static {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->access$200(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    goto :goto_0

    .line 207
    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .line 208
    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/contacts/common/vcard/ShareVCardActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .restart local v1    # "exportIntent":Landroid/content/Intent;
    const-string v3, "CALLING_ACTIVITY"

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$callingActivity:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    .end local v0    # "dismissDialog":Z
    .end local v1    # "exportIntent":Landroid/content/Intent;
    :cond_5
    const/4 v0, 0x1

    .line 215
    .restart local v0    # "dismissDialog":Z
    const-string v3, "ImportExportDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .line 216
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

    .line 215
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
