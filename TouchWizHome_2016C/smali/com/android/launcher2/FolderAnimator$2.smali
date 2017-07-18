.class Lcom/android/launcher2/FolderAnimator$2;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$animateScale:Z

.field final synthetic val$from:[I

.field final synthetic val$fromAlpha:F

.field final synthetic val$fromPlate:Z

.field final synthetic val$iconScale:F

.field final synthetic val$offset:[I

.field final synthetic val$scale:F

.field final synthetic val$toAlpha:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;[ILcom/android/launcher2/AnimationLayer$Anim;Z[IZFFFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$2;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$2;->val$offset:[I

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-boolean p4, p0, Lcom/android/launcher2/FolderAnimator$2;->val$fromPlate:Z

    iput-object p5, p0, Lcom/android/launcher2/FolderAnimator$2;->val$from:[I

    iput-boolean p6, p0, Lcom/android/launcher2/FolderAnimator$2;->val$animateScale:Z

    iput p7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$iconScale:F

    iput p8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$scale:F

    iput p9, p0, Lcom/android/launcher2/FolderAnimator$2;->val$fromAlpha:F

    iput p10, p0, Lcom/android/launcher2/FolderAnimator$2;->val$toAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$200(Lcom/android/launcher2/FolderAnimator;)[I

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->getFolderParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    :cond_0
    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$offset:[I

    aget v8, v8, v10

    add-int/2addr v7, v8

    int-to-float v5, v7

    aget v7, v0, v11

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$offset:[I

    aget v8, v8, v11

    add-int/2addr v7, v8

    int-to-float v6, v7

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$2;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v8}, Lcom/android/launcher2/FolderAnimator;->access$300(Lcom/android/launcher2/FolderAnimator;)Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    :cond_1
    iget-boolean v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$fromPlate:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$from:[I

    aget v8, v8, v10

    int-to-float v8, v8

    invoke-static {v8, v5, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$from:[I

    aget v8, v8, v11

    int-to-float v8, v8

    invoke-static {v8, v6, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    iget v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$iconScale:F

    mul-float v4, v2, v7

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$scale:F

    invoke-static {v8, v4, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$scale:F

    invoke-static {v8, v4, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$fromAlpha:F

    iget v9, p0, Lcom/android/launcher2/FolderAnimator$2;->val$toAlpha:F

    invoke-static {v8, v9, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->this$0:Lcom/android/launcher2/FolderAnimator;

    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$400(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    return-void

    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$animateScale:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    aget v8, v0, v10

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$2;->val$from:[I

    aget v9, v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8, v5, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    aget v8, v0, v11

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$2;->val$from:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8, v6, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$from:[I

    aget v8, v8, v10

    int-to-float v8, v8

    invoke-static {v8, v5, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$2;->val$from:[I

    aget v8, v8, v11

    int-to-float v8, v8

    invoke-static {v8, v6, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method
