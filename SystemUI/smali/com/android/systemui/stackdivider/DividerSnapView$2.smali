.class Lcom/android/systemui/stackdivider/DividerSnapView$2;
.super Ljava/lang/Object;
.source "DividerSnapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerSnapView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$2;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapView$2;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get7(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapView$2;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get0(Lcom/android/systemui/stackdivider/DividerSnapView;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    add-int v2, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    add-int v0, v3, v5

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/RippleDrawable;->setBounds(IIII)V

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapView$2;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get7(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->drawableHotspotChanged(FF)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapView$2;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get7(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/widget/FrameLayout;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setPressed(Z)V

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapView$2;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get7(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setPressed(Z)V

    goto :goto_0
.end method
