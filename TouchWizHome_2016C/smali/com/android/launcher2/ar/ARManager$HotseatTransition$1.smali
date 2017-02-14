.class Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;
.super Ljava/lang/Object;
.source "ARManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ar/ARManager$HotseatTransition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/ar/ARManager$HotseatTransition;

.field final synthetic val$transX:F

.field final synthetic val$transY:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ar/ARManager$HotseatTransition;Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->this$1:Lcom/android/launcher2/ar/ARManager$HotseatTransition;

    iput-object p2, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$transX:F

    iput p4, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$transY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$transX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/ar/ARManager$HotseatTransition$1;->val$transY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
