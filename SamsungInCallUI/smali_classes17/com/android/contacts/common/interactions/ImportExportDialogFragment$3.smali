.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$3;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->doShareFavoriteContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09057b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
