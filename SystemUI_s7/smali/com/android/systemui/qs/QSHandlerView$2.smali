.class Lcom/android/systemui/qs/QSHandlerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSHandlerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSHandlerView;->startCueAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSHandlerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSHandlerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSHandlerView;->-get2(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSHandlerView;->-get1(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSHandlerView;->-set0(Lcom/android/systemui/qs/QSHandlerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSHandlerView;->-get2(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSHandlerView;->-get1(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSHandlerView;->-get3(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSHandlerView;->-get0(Lcom/android/systemui/qs/QSHandlerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSHandlerView$2;->this$0:Lcom/android/systemui/qs/QSHandlerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSHandlerView;->-set0(Lcom/android/systemui/qs/QSHandlerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
