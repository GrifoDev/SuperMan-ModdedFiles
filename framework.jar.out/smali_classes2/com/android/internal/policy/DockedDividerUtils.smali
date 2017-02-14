.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_1
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    return-void

    :pswitch_0
    iput p0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_1
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    add-int v2, p0, p5

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_3
    add-int v2, p0, p5

    iput v2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .locals 4

    if-eqz p0, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    if-eqz p0, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p3, v2

    :goto_1
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    div-int/lit8 v3, p4, 0x2

    sub-int/2addr v2, v3

    return v2

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v2

    goto :goto_1
.end method

.method public static calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0

    :pswitch_1
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0

    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    return v0

    :pswitch_3
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDockSideFromCreatedMode(ZZ)I
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static invertDockSide(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method
