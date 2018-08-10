.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    const/16 v0, 0xf

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    return-void
.end method

.method private adjustPicker(I)V
    .locals 8

    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->-get5(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v1

    const/4 v4, 0x0

    const/16 v3, 0x17

    :goto_0
    add-int v7, v2, p1

    mul-int v5, v7, v6

    invoke-static {v5, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->-get5(Landroid/widget/RadialTimePickerView;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v2

    const/4 v4, 0x1

    const/16 v3, 0xc

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v7

    div-int/lit8 v2, v7, 0x5

    const/4 v4, 0x0

    const/16 v3, 0x37

    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v7, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    goto :goto_1
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 16

    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v8

    invoke-direct/range {p0 .. p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v9

    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->-wrap0(Landroid/widget/RadialTimePickerView;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get1(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->-get6(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get4(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->-wrap2(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    :goto_1
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get7(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    add-float v10, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get8(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v13, v2

    sub-float v11, v12, v13

    sub-float v12, v10, v5

    float-to-int v12, v12

    sub-float v13, v11, v5

    float-to-int v13, v13

    add-float v14, v10, v5

    float-to-int v14, v14

    add-float v15, v11, v5

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get1(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->-get6(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get4(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    goto :goto_0

    :cond_1
    const/4 v12, 0x2

    if-ne v8, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get1(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v13}, Landroid/widget/RadialTimePickerView;->-get6(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12, v9}, Landroid/widget/RadialTimePickerView;->-wrap3(Landroid/widget/RadialTimePickerView;I)I

    move-result v12

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v12}, Landroid/widget/RadialTimePickerView;->-get4(Landroid/widget/RadialTimePickerView;)I

    move-result v12

    int-to-float v5, v12

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private getCircularDiff(III)I
    .locals 3

    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    if-le v0, v1, :cond_0

    sub-int v0, p3, v0

    :cond_0
    return v0
.end method

.method private getTypeFromId(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getValueFromId(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 5

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    add-int/lit8 v2, p2, 0x1

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v1, 0x17

    :goto_0
    if-gt v2, v1, :cond_3

    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    return v4

    :cond_0
    const/16 v1, 0xc

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    rem-int/lit8 v4, p2, 0x5

    sub-int v3, p2, v4

    add-int/lit8 v2, v3, 0x5

    if-ge p2, v0, :cond_2

    if-le v2, v0, :cond_2

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    return v4

    :cond_2
    const/16 v4, 0x3c

    if-ge v2, v4, :cond_3

    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    return v4

    :cond_3
    const/high16 v4, -0x80000000

    return v4
.end method

.method private hour12To24(II)I
    .locals 2

    move v0, p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    add-int/lit8 v0, p1, 0xc

    goto :goto_0
.end method

.method private hour24To12(I)I
    .locals 1

    const/16 v0, 0xc

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 v0, p1, -0xc

    return v0

    :cond_1
    return p1
.end method

.method private isVirtualViewSelected(II)Z
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeId(II)I
    .locals 2

    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    const/4 v15, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v0, v1, v15}, Landroid/widget/RadialTimePickerView;->-wrap4(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v4

    const/4 v14, -0x1

    if-eq v4, v14, :cond_3

    const/4 v14, 0x0

    invoke-static {v4, v14}, Landroid/widget/RadialTimePickerView;->-wrap7(II)I

    move-result v14

    rem-int/lit16 v10, v14, 0x168

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14}, Landroid/widget/RadialTimePickerView;->-get5(Landroid/widget/RadialTimePickerView;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v0, v1}, Landroid/widget/RadialTimePickerView;->-wrap1(Landroid/widget/RadialTimePickerView;FF)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14, v10, v8}, Landroid/widget/RadialTimePickerView;->-wrap5(Landroid/widget/RadialTimePickerView;IZ)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v5, v6

    :goto_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v7

    :goto_1
    return v7

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v5

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v14}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14, v4}, Landroid/widget/RadialTimePickerView;->-wrap6(Landroid/widget/RadialTimePickerView;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v14, v10}, Landroid/widget/RadialTimePickerView;->-wrap6(Landroid/widget/RadialTimePickerView;I)I

    move-result v11

    const/16 v14, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v14}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v3

    const/16 v14, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v12

    if-ge v3, v12, :cond_2

    move v9, v2

    :goto_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v7

    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_2

    :cond_3
    const/high16 v7, -0x80000000

    goto :goto_1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 6

    const/4 v5, 0x2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get5(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v2, 0x17

    :goto_1
    move v1, v3

    :goto_2
    if-gt v1, v2, :cond_4

    const/4 v4, 0x1

    invoke-direct {p0, v4, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_4

    invoke-direct {p0, v5, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    if-le v0, v1, :cond_3

    add-int/lit8 v4, v1, 0x5

    if-ge v0, v4, :cond_3

    invoke-direct {p0, v5, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x5

    goto :goto_3

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x10

    if-ne p2, v3, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v2

    if-ne v1, v4, :cond_1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-get3(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    return v4

    :cond_0
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-get0(Landroid/widget/RadialTimePickerView;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    return v4

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v3

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-direct {p0, v3, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result v1

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_0

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return v1

    :sswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
