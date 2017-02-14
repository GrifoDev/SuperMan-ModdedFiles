.class Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;
.super Ljava/lang/Object;
.source "IrisPreveiwStyleFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->startAnimation()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

.field final synthetic val$ani_left_01:Landroid/view/animation/Animation;

.field final synthetic val$ani_left_02:Landroid/view/animation/Animation;

.field final synthetic val$ani_left_03:Landroid/view/animation/Animation;

.field final synthetic val$ani_right_01:Landroid/view/animation/Animation;

.field final synthetic val$ani_right_02:Landroid/view/animation/Animation;

.field final synthetic val$left_ani_01:Landroid/widget/ImageView;

.field final synthetic val$left_ani_02:Landroid/widget/ImageView;

.field final synthetic val$left_ani_03:Landroid/widget/ImageView;

.field final synthetic val$right_ani_01:Landroid/widget/ImageView;

.field final synthetic val$right_ani_02:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_right_01:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$right_ani_01:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$right_ani_02:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_right_02:Landroid/view/animation/Animation;

    iput-object p6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$left_ani_01:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_left_01:Landroid/view/animation/Animation;

    iput-object p8, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$left_ani_02:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_left_02:Landroid/view/animation/Animation;

    iput-object p10, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$left_ani_03:Landroid/widget/ImageView;

    iput-object p11, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_left_03:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_right_01:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$right_ani_01:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_right_01:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$right_ani_02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_right_02:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$left_ani_01:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_left_01:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$left_ani_02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_left_02:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$left_ani_03:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$1;->val$ani_left_03:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
