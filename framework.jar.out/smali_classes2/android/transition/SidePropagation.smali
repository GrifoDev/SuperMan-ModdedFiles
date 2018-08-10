.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 6

    const/4 v5, 0x1

    iget v3, p0, Landroid/transition/SidePropagation;->mSide:I

    const v4, 0x800003

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x5

    :goto_1
    const/4 v0, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_2
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/transition/SidePropagation;->mSide:I

    const v4, 0x800005

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v5, :cond_3

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/transition/SidePropagation;->mSide:I

    goto :goto_1

    :sswitch_0
    sub-int v3, p8, p2

    sub-int v4, p5, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2

    :sswitch_1
    sub-int v3, p9, p3

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2

    :sswitch_2
    sub-int v3, p2, p6

    sub-int v4, p5, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2

    :sswitch_3
    sub-int v3, p3, p7

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v0, v3, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 1

    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 21

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    const/4 v12, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v15

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move-object/from16 v20, p3

    const/4 v12, -0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v5

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v8, v2, v3

    const/4 v2, 0x1

    aget v2, v18, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v9, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int v10, v8, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int v11, v9, v2

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v11}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v2

    int-to-float v13, v2

    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v14, v13, v19

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v16

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gez v2, :cond_2

    const-wide/16 v16, 0x12c

    :cond_2
    int-to-long v2, v12

    mul-long v2, v2, v16

    long-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    return-wide v2

    :cond_3
    move-object/from16 v20, p4

    goto :goto_0

    :cond_4
    add-int v2, v8, v10

    div-int/lit8 v6, v2, 0x2

    add-int v2, v9, v11

    div-int/lit8 v7, v2, 0x2

    goto :goto_1
.end method

.method public setPropagationSpeed(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    return-void
.end method

.method public setSide(I)V
    .locals 0

    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method
