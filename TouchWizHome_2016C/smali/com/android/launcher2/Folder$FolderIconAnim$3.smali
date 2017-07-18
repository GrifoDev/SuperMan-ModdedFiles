.class Lcom/android/launcher2/Folder$FolderIconAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder$FolderIconAnim;->showFolderIconText(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

.field final synthetic val$folderIconViewAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder$FolderIconAnim;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderIconAnim$3;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iput-object p2, p0, Lcom/android/launcher2/Folder$FolderIconAnim$3;->val$folderIconViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$3;->val$folderIconViewAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$3;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/Folder$FolderIconAnim;->access$3500(Lcom/android/launcher2/Folder$FolderIconAnim;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$3;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v0, v0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setDrawText(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$3;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v0, v0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    return-void
.end method
