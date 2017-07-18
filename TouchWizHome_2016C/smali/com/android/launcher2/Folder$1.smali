.class Lcom/android/launcher2/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
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

    iput-object p1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Folder;->getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1, v0, v2}, Lcom/android/launcher2/Folder;->access$100(Lcom/android/launcher2/Folder;Lcom/android/launcher2/Folder$FolderColor;Z)V

    iget-object v1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$200(Lcom/android/launcher2/Folder;)V

    iget-object v1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    return-void
.end method
