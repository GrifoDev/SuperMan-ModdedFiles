.class Landroid/widget/Editor$HandleView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$targetHeight:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;II)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iput p2, p0, Landroid/widget/Editor$HandleView$7;->val$targetWidth:I

    iput p3, p0, Landroid/widget/Editor$HandleView$7;->val$targetHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0}, Landroid/widget/Editor$HandleView;->-get3(Landroid/widget/Editor$HandleView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, p0, Landroid/widget/Editor$HandleView$7;->val$targetWidth:I

    iget v3, p0, Landroid/widget/Editor$HandleView$7;->val$targetHeight:I

    invoke-static {v1, v2, v3}, Landroid/widget/Editor$HandleView;->-wrap0(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->removeHiderCallback()V

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v5}, Landroid/widget/Editor$HandleView;->-set3(Landroid/widget/Editor$HandleView;Z)Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v0, v4}, Landroid/widget/Editor$HandleView;->-set4(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->hideAfterDelay()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1}, Landroid/widget/Editor$HandleView;->-get2(Landroid/widget/Editor$HandleView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1}, Landroid/widget/Editor$HandleView;->-get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1, v5}, Landroid/widget/Editor$HandleView;->-set1(Landroid/widget/Editor$HandleView;Z)Z

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1}, Landroid/widget/Editor$HandleView;->-get4(Landroid/widget/Editor$HandleView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, v2, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1}, Landroid/widget/Editor$HandleView;->-get5(Landroid/widget/Editor$HandleView;)I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v1, v1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v1, v0, v5

    iget-object v2, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    iget v2, v2, Landroid/widget/Editor$HandleView;->mHotspotX:I

    iget-object v3, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v3}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v5

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1}, Landroid/widget/Editor$HandleView;->-get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;

    move-result-object v1

    aget v2, v0, v5

    aget v3, v0, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {v1, v4}, Landroid/widget/Editor$HandleView;->-set3(Landroid/widget/Editor$HandleView;Z)Z

    iget-object v1, p0, Landroid/widget/Editor$HandleView$7;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/Editor$HandleView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
