.class Lcom/android/launcher2/FolderAnimator$8;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v1}, Lcom/android/launcher2/FolderAnimator;->access$1000(Lcom/android/launcher2/FolderAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$1100(Lcom/android/launcher2/FolderAnimator;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$8;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$1200(Lcom/android/launcher2/FolderAnimator;)V

    goto :goto_0
.end method
