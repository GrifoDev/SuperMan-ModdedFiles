.class public Landroid/webkit/WebView$PrivateAccess;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateAccess"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awakenScrollBars(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap1(Landroid/webkit/WebView;I)Z

    return-void
.end method

.method public awakenScrollBars(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap0(Landroid/webkit/WebView;IZ)Z

    return-void
.end method

.method public getHorizontalScrollFactor()F
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->-wrap3(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->-wrap5(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public getVerticalScrollFactor()F
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->-wrap4(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)V
    .locals 10

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroid/webkit/WebView;->-wrap2(Landroid/webkit/WebView;IIIIIIIIZ)Z

    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap6(Landroid/webkit/WebView;II)V

    return-void
.end method

.method public setScrollXRaw(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Landroid/webkit/WebView;->-set0(Landroid/webkit/WebView;I)I

    return-void
.end method

.method public setScrollYRaw(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Landroid/webkit/WebView;->-set1(Landroid/webkit/WebView;I)I

    return-void
.end method

.method public super_computeScroll()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->-wrap15(Landroid/webkit/WebView;)V

    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap7(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_getScrollBarStyle()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->-wrap14(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public super_onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/webkit/WebView;->-wrap16(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap8(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap9(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap10(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public super_performLongClick()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->-wrap11(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method public super_requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap12(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public super_scrollTo(II)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap17(Landroid/webkit/WebView;II)V

    return-void
.end method

.method public super_setFrame(IIII)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->-wrap13(Landroid/webkit/WebView;IIII)Z

    move-result v0

    return v0
.end method

.method public super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Landroid/webkit/WebView;->-wrap18(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public super_startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->-wrap19(Landroid/webkit/WebView;Landroid/content/Intent;I)V

    return-void
.end method
