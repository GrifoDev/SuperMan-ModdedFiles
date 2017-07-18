.class Lcom/android/launcher2/Folder$7;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$500(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v2, p0, Lcom/android/launcher2/Folder$7;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2, v0}, Lcom/android/launcher2/Folder;->access$402(Lcom/android/launcher2/Folder;Z)Z

    move v0, v1

    goto :goto_0
.end method
