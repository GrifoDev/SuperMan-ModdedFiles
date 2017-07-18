.class Lcom/android/launcher2/FolderAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->FadeInHoverIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$from:[I

.field final synthetic val$pos:I

.field final synthetic val$pos_equal:I

.field final synthetic val$to:[I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[III)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$6;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$6;->val$from:[I

    iput-object p4, p0, Lcom/android/launcher2/FolderAnimator$6;->val$to:[I

    iput p5, p0, Lcom/android/launcher2/FolderAnimator$6;->val$pos:I

    iput p6, p0, Lcom/android/launcher2/FolderAnimator$6;->val$pos_equal:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$6;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$6;->val$from:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$6;->val$to:[I

    aget v5, v5, v8

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$6;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$6;->val$from:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$6;->val$to:[I

    aget v5, v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/FolderAnimator$6;->val$pos:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v3}, Lcom/android/launcher2/FolderAnimator;->access$600(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v4, v2, v8}, Lcom/android/launcher2/FolderAnimator;->access$700(Lcom/android/launcher2/FolderAnimator;IZ)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/launcher2/FolderAnimator$6;->val$pos:I

    iget v4, p0, Lcom/android/launcher2/FolderAnimator$6;->val$pos_equal:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v3}, Lcom/android/launcher2/FolderAnimator;->access$600(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$6;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v3}, Lcom/android/launcher2/FolderAnimator;->access$400(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    return-void
.end method
