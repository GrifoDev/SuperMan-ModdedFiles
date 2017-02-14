.class Lcom/android/launcher2/AppFolderRemoveDialog$1;
.super Ljava/lang/Object;
.source "AppFolderRemoveDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppFolderRemoveDialog;->animateInItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppFolderRemoveDialog;

.field final synthetic val$al:Lcom/android/launcher2/AnimationLayer;

.field final synthetic val$appIcon:Lcom/android/launcher2/AppIconView;

.field final synthetic val$cellLayout:Lcom/android/launcher2/CellLayout;

.field final synthetic val$icon:Landroid/graphics/Bitmap;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppFolderRemoveDialog;Lcom/android/launcher2/AnimationLayer;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->this$0:Lcom/android/launcher2/AppFolderRemoveDialog;

    iput-object p2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iput-object p3, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$icon:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$appIcon:Lcom/android/launcher2/AppIconView;

    iput-object p6, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$icon:Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$v:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v7

    aget v0, v7, v8

    iget-object v2, p0, Lcom/android/launcher2/AppFolderRemoveDialog$1;->val$appIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v7, v8

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/view/View;

    move-result-object v0

    aget v1, v7, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/view/View;

    move-result-object v0

    aget v1, v7, v8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    new-instance v0, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;

    invoke-direct {v0, p0, v6}, Lcom/android/launcher2/AppFolderRemoveDialog$1$1;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v6, v0, v8}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AppFolderRemoveDialog$1$2;-><init>(Lcom/android/launcher2/AppFolderRemoveDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
