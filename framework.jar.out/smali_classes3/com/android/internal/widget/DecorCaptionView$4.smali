.class Lcom/android/internal/widget/DecorCaptionView$4;
.super Landroid/view/ViewOutlineProvider;
.source "DecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get3(Lcom/android/internal/widget/DecorCaptionView;)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v1, v2, v3

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get2(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFreeform()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get2(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->canUseFreeformBorder()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get5(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get5(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get5(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$4;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get2(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->canUseFreeformBorder()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    goto :goto_1
.end method
