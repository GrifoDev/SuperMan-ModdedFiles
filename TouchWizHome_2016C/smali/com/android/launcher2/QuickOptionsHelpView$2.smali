.class Lcom/android/launcher2/QuickOptionsHelpView$2;
.super Ljava/lang/Object;
.source "QuickOptionsHelpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickOptionsHelpView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickOptionsHelpView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickOptionsHelpView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsHelpView;->access$000(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsHelpView;->access$000(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsHelpView$2;->this$0:Lcom/android/launcher2/QuickOptionsHelpView;

    # getter for: Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsHelpView;->access$000(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/QuickOptionsHelpView$2$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/QuickOptionsHelpView$2$1;-><init>(Lcom/android/launcher2/QuickOptionsHelpView$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
