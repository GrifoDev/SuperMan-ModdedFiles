.class Lcom/android/launcher2/Folder$FolderIconAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder$FolderIconAnim;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Folder$FolderIconAnim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder$FolderIconAnim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v0, v0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v1, v1, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/launcher2/Folder$FolderIconAnim;->access$2700(Lcom/android/launcher2/Folder$FolderIconAnim;Lcom/android/launcher2/FolderIconView;Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v0, v0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/FolderIconView;->setDrawPlate(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v1, v1, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Folder$FolderIconAnim;->access$2700(Lcom/android/launcher2/Folder$FolderIconAnim;Lcom/android/launcher2/FolderIconView;Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderIconAnim$2;->this$1:Lcom/android/launcher2/Folder$FolderIconAnim;

    iget-object v0, v0, Lcom/android/launcher2/Folder$FolderIconAnim;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$2400(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIconView;->setDrawPlate(Z)V

    return-void
.end method
