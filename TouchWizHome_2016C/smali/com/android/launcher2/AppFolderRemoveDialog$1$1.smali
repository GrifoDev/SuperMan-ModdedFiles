.class Lcom/android/launcher2/AppFolderRemoveDialog$1$1;
.super Ljava/lang/Object;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppFolderRemoveDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iput-object p2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->this$1:Lcom/android/launcher2/AppFolderRemoveDialog$1;

    iget-object v2, v2, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v2

    mul-float v1, v2, v0

    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v2, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
