.class Lcom/android/launcher2/CreateFolderDialog$5;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CreateFolderDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # getter for: Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/launcher2/CreateFolderDialog;->access$100(Lcom/android/launcher2/CreateFolderDialog;)Landroid/app/Dialog;

    move-result-object v1

    # invokes: Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
