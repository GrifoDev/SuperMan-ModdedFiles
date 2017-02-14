.class Lcom/android/launcher2/Folder$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->animateOpen()V
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

    iput-object p1, p0, Lcom/android/launcher2/Folder$20;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Folder$20;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$20;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Folder;->access$1502(Lcom/android/launcher2/Folder;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/Folder$20;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$1600(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->cancelAnimtion()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$20;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mFolderIconAnim:Lcom/android/launcher2/Folder$FolderIconAnim;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$1700(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderIconAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder$FolderIconAnim;->cancelAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Folder$20;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$20;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Folder;->access$1502(Lcom/android/launcher2/Folder;Z)Z

    return-void
.end method
