.class Lcom/android/launcher2/Folder$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->close(ZZZ)V
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

    iput-object p1, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$1800(Lcom/android/launcher2/Folder;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$1700(Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder$FolderIconAnim;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v2, v4}, Lcom/android/launcher2/Folder;->access$1502(Lcom/android/launcher2/Folder;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isAppsEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuAppIconView;->startUninstallFadeAnim(F)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Folder$21;->this$0:Lcom/android/launcher2/Folder;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
