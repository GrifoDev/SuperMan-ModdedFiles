.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-ge p2, v3, :cond_1

    :cond_0
    return v2

    :cond_1
    if-lt p3, v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v3, p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, p3, :cond_4

    const/4 v0, 0x1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_7

    :goto_3
    return v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    if-eqz v1, :cond_5

    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p2

    iput v3, p0, Landroid/graphics/Rect;->left:I

    :cond_5
    if-eqz v0, :cond_2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p3

    iput v3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    if-eqz v1, :cond_6

    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iput v3, p0, Landroid/graphics/Rect;->right:I

    :cond_6
    if-eqz v0, :cond_2

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p3

    iput v3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static applyResizeRect(Landroid/graphics/Rect;III)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput p2, p0, Landroid/graphics/Rect;->left:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :sswitch_1
    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static convertDesktopMouseIcon(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    return p0

    :sswitch_0
    const/16 v0, 0x2789

    return v0

    :sswitch_1
    const/16 v0, 0x278a

    return v0

    :sswitch_2
    const/16 v0, 0x278b

    return v0

    :sswitch_3
    const/16 v0, 0x278c

    return v0

    :sswitch_4
    const/16 v0, 0x278d

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3f6 -> :sswitch_1
        0x3f7 -> :sswitch_2
        0x3f8 -> :sswitch_4
        0x3f9 -> :sswitch_3
    .end sparse-switch
.end method

.method public static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .locals 2

    int-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static edgeFlagToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "EDGE_RIGHT_TOP"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "EDGE_LEFT_TOP"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLeftSide(II)Z
    .locals 1

    div-int/lit8 v0, p0, 0x2

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTopSide(II)Z
    .locals 1

    div-int/lit8 v0, p0, 0x2

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
