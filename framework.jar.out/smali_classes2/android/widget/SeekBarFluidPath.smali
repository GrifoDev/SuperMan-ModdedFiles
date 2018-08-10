.class public Landroid/widget/SeekBarFluidPath;
.super Ljava/lang/Object;
.source "SeekBarFluidPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SeekBarFluidPath$SVGCommand;
    }
.end annotation


# static fields
.field private static final synthetic -android-widget-SeekBarFluidPath$SVGCommandSwitchesValues:[I


# instance fields
.field private final CIRCLE_COUNT:I

.field private final CIRCLE_X:F

.field private final CIRCLE_Y:F

.field private final PATH_COUNT:I

.field private final RADIUS:F

.field private final SHAPE_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private final TAIL_WIDTH_FROM_CIRCLE_CENTER:F

.field private mLastX:F

.field private mLastX1:F

.field private mLastY:F

.field private mLastY1:F

.field private mPaths:[Landroid/graphics/Path;

.field private mScale:F


# direct methods
.method private static synthetic -getandroid-widget-SeekBarFluidPath$SVGCommandSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/widget/SeekBarFluidPath;->-android-widget-SeekBarFluidPath$SVGCommandSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/SeekBarFluidPath;->-android-widget-SeekBarFluidPath$SVGCommandSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/SeekBarFluidPath$SVGCommand;->values()[Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->H:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->L:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->S:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->V:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->Z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->m:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->s:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->v:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    invoke-virtual {v1}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Landroid/widget/SeekBarFluidPath;->-android-widget-SeekBarFluidPath$SVGCommandSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(F)V
    .locals 3

    const/16 v2, 0xf

    const v1, 0x434d09ba

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SeekBarFluidPath"

    iput-object v0, p0, Landroid/widget/SeekBarFluidPath;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->CIRCLE_COUNT:I

    const/16 v0, 0x9

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->SHAPE_COUNT:I

    iput v2, p0, Landroid/widget/SeekBarFluidPath;->PATH_COUNT:I

    const v0, 0x43ce7d2f

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->CIRCLE_X:F

    const v0, 0x436aaac1

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->CIRCLE_Y:F

    iput v1, p0, Landroid/widget/SeekBarFluidPath;->RADIUS:F

    const v0, 0x43a48ccd    # 329.1f

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->TAIL_WIDTH_FROM_CIRCLE_CENTER:F

    new-array v0, v2, [Landroid/graphics/Path;

    iput-object v0, p0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    div-float v0, p1, v1

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mScale:F

    invoke-direct {p0}, Landroid/widget/SeekBarFluidPath;->setPath()V

    return-void
.end method

.method private parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V
    .locals 9

    invoke-static {}, Landroid/widget/SeekBarFluidPath;->-getandroid-widget-SeekBarFluidPath$SVGCommandSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    goto :goto_0

    :sswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFF)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V
    .locals 9

    const/4 v7, 0x0

    invoke-static {}, Landroid/widget/SeekBarFluidPath;->-getandroid-widget-SeekBarFluidPath$SVGCommandSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/SeekBarFluidPath$SVGCommand;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-nez v7, :cond_0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX1:F

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY1:F

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/widget/SeekBarFluidPath$SVGCommand;->m:Landroid/widget/SeekBarFluidPath$SVGCommand;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->rMoveTo(FF)V

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float/2addr v0, p3

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float/2addr v0, p4

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    iput p3, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    iput p4, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX1:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY1:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float/2addr v0, p3

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float/2addr v0, p4

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iput p3, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    iput p4, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float/2addr v0, p3

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iput p3, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    goto :goto_0

    :pswitch_4
    sget-object v0, Landroid/widget/SeekBarFluidPath$SVGCommand;->v:Landroid/widget/SeekBarFluidPath$SVGCommand;

    if-ne p2, v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float/2addr v0, p4

    iput v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Path;->lineTo(FF)V

    iput p4, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto :goto_0

    :pswitch_5
    const/4 v7, 0x1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    sget-object v0, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    if-ne p2, v0, :cond_5

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float v1, p3, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float v3, p5, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float v5, p7, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float v2, p4, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float v4, p6, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float v6, p8, v0

    :cond_5
    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Landroid/widget/SeekBarFluidPath;->mLastX1:F

    iput v4, p0, Landroid/widget/SeekBarFluidPath;->mLastY1:F

    iput v5, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    iput v6, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto/16 :goto_0

    :pswitch_6
    const/4 v7, 0x1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    sget-object v0, Landroid/widget/SeekBarFluidPath$SVGCommand;->s:Landroid/widget/SeekBarFluidPath$SVGCommand;

    if-ne p2, v0, :cond_6

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float v3, p3, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    add-float v5, p5, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float v4, p4, v0

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    add-float v6, p6, v0

    :cond_6
    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    iget v8, p0, Landroid/widget/SeekBarFluidPath;->mLastX1:F

    sub-float v1, v0, v8

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    iget v8, p0, Landroid/widget/SeekBarFluidPath;->mLastY1:F

    sub-float v2, v0, v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Landroid/widget/SeekBarFluidPath;->mLastX1:F

    iput v4, p0, Landroid/widget/SeekBarFluidPath;->mLastY1:F

    iput v5, p0, Landroid/widget/SeekBarFluidPath;->mLastX:F

    iput v6, p0, Landroid/widget/SeekBarFluidPath;->mLastY:F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private setPath()V
    .locals 18

    const/4 v15, -0x1

    const v13, -0x3c3182d1

    const v14, -0x3c95553f

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    const v1, -0x3c3182d1

    const v3, -0x3c95553f

    invoke-virtual {v12, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/SeekBarFluidPath;->mScale:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SeekBarFluidPath;->mScale:F

    invoke-virtual {v12, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const v17, 0x4291f4bc

    const v10, 0x42cd09ba

    const/4 v11, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v11, v1, :cond_0

    add-int/lit8 v15, v15, 0x1

    int-to-float v1, v11

    const v3, 0x41ec53f8    # 29.541f

    mul-float/2addr v1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    const v3, 0x4291f4bc

    add-float v16, v3, v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const v3, 0x43ce7d2f

    const v4, 0x436aaac1

    move/from16 v0, v16

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43995042

    const v4, 0x436aaac1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, -0x3e67d0e5    # -19.023f

    const v6, 0x415d74bc    # 13.841f

    const v7, -0x3dcf1062

    const v8, 0x415d74bc    # 13.841f

    const v9, -0x3dcf1062

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x44bb645a    # -0.003f

    const v4, 0x3c343958    # 0.011f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41841893    # 16.512f

    const v5, -0x3df61375

    const v6, 0x424eeb85    # 51.73f

    const v7, -0x3d96d0e5

    const v8, 0x42b906a8    # 92.513f

    const v9, -0x3d96d0e5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x42627ae1    # 56.62f

    const/4 v5, 0x0

    const v6, 0x42cd09ba

    const v7, 0x4237999a    # 45.9f

    const v8, 0x42cd09ba

    const v9, 0x42cd09ba

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, 0x426279db    # 56.619f

    const v6, -0x3dc86873

    const v7, 0x42cd0937

    const v8, -0x3d32f646

    const v9, 0x42cd0937

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3ddcdf3b

    const/4 v5, 0x0

    const v6, -0x3d67ff7d    # -76.001f

    const v7, -0x3e417cee    # -23.814f

    const v8, -0x3d46f958    # -92.513f

    const v9, -0x3d96d1ec

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3b449ba6    # 0.003f

    const v4, 0x3c343958    # 0.011f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x43a03be7

    const v5, 0x438b7354    # 278.901f

    const v6, 0x43995042

    const v7, 0x437db0a4    # 253.69f

    const v8, 0x43995042

    const v9, 0x436aaac1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43ce7d2f

    const v4, 0x430425e3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3dd0c396

    const/4 v5, 0x0

    const v6, -0x3d5d9db2

    const v7, 0x41dbd917    # 27.481f

    const v8, -0x3d404312

    const v9, 0x42844937

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x43ec8b44    # -0.009f

    const v4, 0x3b03126f    # 0.002f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, -0x433b645a    # -0.024f

    const v7, 0x3d99999a    # 0.075f

    const v8, -0x4270a3d7    # -0.07f

    const v9, 0x3e50e560    # 0.204f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x4253f7cf    # -0.084f

    const v5, 0x3e6353f8    # 0.222f

    const v6, -0x41d0e560    # -0.171f

    const v7, 0x3ee2d0e5    # 0.443f

    const v8, -0x417e76c9    # -0.253f

    const v9, 0x3f2a7efa    # 0.666f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x407353f8    # -1.099f

    const v5, 0x402f3b64    # 2.738f

    const v6, -0x3f58dd2f    # -5.223f

    const v7, 0x41356c8b    # 11.339f

    const v8, -0x3e8b6873    # -15.287f

    const v9, 0x4183ac08    # 16.459f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3b449ba6    # 0.003f

    const v4, 0x3cc49ba6    # 0.024f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f1bb646    # -7.134f

    const v5, 0x4057ae14    # 3.37f

    const v6, -0x3e420e56    # -23.743f

    const v7, 0x4129be77    # 10.609f

    const v8, -0x3e420e56    # -23.743f

    const v9, 0x41982b02    # 19.021f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, 0x41064dd3    # 8.394f

    const v6, 0x4184b439    # 16.588f

    const v7, 0x4179e76d    # 15.619f

    const v8, 0x41bd9375    # 23.697f

    const v9, 0x4197fbe7    # 18.998f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3d3020c5    # 0.043f

    const v4, 0x3d9374bc    # 0.072f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41416873    # 12.088f

    const v5, 0x40c4bc6a    # 6.148f

    const v6, 0x4179c28f    # 15.61f

    const v7, 0x418a9fbe    # 17.328f

    const v8, 0x4179c28f    # 15.61f

    const v9, 0x418a9fbe    # 17.328f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3c656042    # 0.014f

    const v4, -0x441a9fbe    # -0.007f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x416ae979    # 14.682f

    const v5, 0x421a9cac    # 38.653f

    const v6, 0x42504083    # 52.063f

    const v7, 0x42844106

    const v8, 0x42bfba5e

    const v9, 0x42844106

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x426279db    # 56.619f

    const/4 v5, 0x0

    const v6, 0x42cd0937

    const v7, -0x3dc8676d

    const v8, 0x42cd0937

    const v9, -0x3d32f6c9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4400dfae

    const v5, 0x43320c4a

    const v6, 0x43eacc6a

    const v7, 0x430425e3

    const v8, 0x43ce7d2f

    const v9, 0x430425e3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43ce7d2f

    const v4, 0x430425e3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3ddc8c4a

    const/4 v5, 0x0

    const v6, -0x3d67b958    # -76.138f

    const v7, 0x41bf45a2    # 23.909f

    const v8, -0x3d46c8b4

    const/high16 v9, 0x426a0000    # 58.5f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->v:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x43cbc6a8    # -0.011f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, -0x4056872b    # -1.324f

    const v7, 0x402e5604    # 2.724f

    const v8, -0x3f6ad0e5    # -4.662f

    const v9, 0x40ca7efa    # 6.328f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x43958000    # 299.0f

    const/high16 v5, 0x43550000    # 213.0f

    const/high16 v6, 0x43890000    # 274.0f

    const/high16 v7, 0x43590000    # 217.0f

    const v8, 0x437e9cee

    const v9, 0x4364f70a

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3fa2e148    # -3.455f

    const v5, 0x40028f5c    # 2.04f

    const v6, -0x3f34624e    # -6.363f

    const v7, 0x40862d0e    # 4.193f

    const v8, -0x3f34624e    # -6.363f

    const v9, 0x40b62d0e    # 5.693f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->s:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x403a1cac    # 2.908f

    const v5, 0x4069db23    # 3.654f

    const v6, 0x40cb9db2    # 6.363f

    const v7, 0x40b6353f    # 5.694f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v4, 0x43890000    # 274.0f

    const v5, 0x437c50e5

    const v6, 0x43958000    # 299.0f

    const v7, 0x43802873

    const v8, 0x439dda7f    # 315.707f

    const v9, 0x43882ccd    # 272.35f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4055a1cb    # 3.338f

    const v5, 0x4066b852    # 3.605f

    const v6, 0x40952f1b    # 4.662f

    const v7, 0x40ca872b    # 6.329f

    const v8, 0x40952f1b    # 4.662f

    const v9, 0x40ca872b    # 6.329f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->v:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x43cbc6a8    # -0.011f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4183c49c    # 16.471f

    const v5, 0x420a5c29    # 34.59f

    const v6, 0x424efae1

    const/high16 v7, 0x426a0000    # 58.5f

    const v8, 0x42b9374c

    const/high16 v9, 0x426a0000    # 58.5f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x426279db    # 56.619f

    const/4 v5, 0x0

    const v6, 0x42cd0937

    const v7, -0x3dc870a4    # -45.89f

    const v8, 0x42cd0937

    const v9, -0x3d32fae1    # -102.51f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4400dfae

    const v5, 0x433209fc

    const v6, 0x43eacc6a

    const v7, 0x430425e3

    const v8, 0x43ce7d2f

    const v9, 0x430425e3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43ce7d2f

    const v4, 0x430425e3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3de80f5c    # -37.985f

    const/4 v5, 0x0

    const v6, -0x3d71b6c9

    const v7, 0x41a545a2    # 20.659f

    const v8, -0x3d4e49ba

    const v9, 0x424d6a7f    # 51.354f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x457ced91    # -0.001f

    const v4, -0x457ced91    # -0.001f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, -0x3ed32f1b    # -10.801f

    const v7, 0x41ad3f7d    # 21.656f

    const v8, -0x3de18419

    const v9, 0x41f7fdf4    # 30.999f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e8d5810    # -15.166f

    const v5, 0x409d5810    # 4.917f

    const v6, -0x3dfd8000    # -32.625f

    const v7, 0x412353f8    # 10.208f

    const v8, -0x3de88000    # -37.875f

    const/high16 v9, 0x413e0000    # 11.875f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f847ae1    # -3.93f

    const v5, 0x3f9fbe77    # 1.248f

    const/high16 v6, -0x3e920000    # -14.875f

    const v7, 0x40c15810    # 6.042f

    const/high16 v8, -0x3e920000    # -14.875f

    const v9, 0x4104ac08    # 8.292f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, 0x4003f7cf    # 2.062f

    const v6, 0x41276042    # 10.461f

    const v7, 0x40c1f3b6    # 6.061f

    const/high16 v8, 0x41640000    # 14.25f

    const v9, 0x40eea7f0    # 7.458f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4118872b    # 9.533f

    const v5, 0x4060e560    # 3.514f

    const v6, 0x41a86a7f    # 21.052f

    const v7, 0x40a87ae1    # 5.265f

    const/high16 v8, 0x42190000    # 38.25f

    const/high16 v9, 0x41340000    # 11.25f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v4, 0x41e30000    # 28.375f

    const/high16 v5, 0x411e0000    # 9.875f

    const v6, 0x421f7be7

    const v7, 0x4201d4fe    # 32.458f

    const v8, 0x421f7be7

    const v9, 0x4201d4fe    # 32.458f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3a83126f    # 0.001f

    const v4, -0x44fced91    # -0.002f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x418db021    # 17.711f

    const v5, 0x41f58d50    # 30.694f

    const v6, 0x424b7be7

    const v7, 0x424d6a7f    # 51.354f

    const v8, 0x42b1b646

    const v9, 0x424d6a7f    # 51.354f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x426279db    # 56.619f

    const/4 v5, 0x0

    const v6, 0x42cd0937

    const v7, -0x3dc8676d

    const v8, 0x42cd0937

    const v9, -0x3d32f6c9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4400dfae

    const v5, 0x43320c4a

    const v6, 0x43eacc6a

    const v7, 0x430425e3

    const v8, 0x43ce7d2f

    const v9, 0x430425e3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x4400dfae

    const v4, 0x436aaac1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, -0x3d9d851f    # -56.62f

    const v6, -0x3dc86873

    const v7, -0x3d32f646

    const v8, -0x3d32f6c9

    const v9, -0x3d32f646

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e22e148    # -27.64f

    const/4 v5, 0x0

    const v6, -0x3dad1aa0    # -52.724f

    const v7, 0x412f0625    # 10.939f

    const v8, -0x3d71ae14    # -71.16f

    const v9, 0x41e5c6a8    # 28.722f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3fec7ae1    # -2.305f

    const v5, 0x400e45a2    # 2.223f

    const v6, -0x3f6fd70a    # -4.505f

    const v7, 0x4091a9fc    # 4.552f

    const v8, -0x3f2d0625    # -6.593f

    const v9, 0x40df645a    # 6.981f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v4, 0x43a40000    # 328.0f

    const/high16 v5, 0x43300000    # 176.0f

    const/high16 v6, 0x43a20000    # 324.0f

    const/high16 v7, 0x433a0000    # 186.0f

    const v8, 0x439dd2b0

    const v9, 0x43419c6a

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3fde6666    # -2.525f

    const v5, 0x401dc28f    # 2.465f

    const v6, -0x3f516042    # -5.457f

    const v7, 0x40a0d4fe    # 5.026f

    const v8, -0x3ef272b0    # -8.847f

    const v9, 0x40f26e98    # 7.576f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3edd5c29    # -10.165f

    const v5, 0x40f4dd2f    # 7.652f

    const v6, -0x3e3c9168    # -24.429f

    const v7, 0x4173645a    # 15.212f

    const v8, -0x3dcfcdd3    # -44.049f

    const v9, 0x419e8106    # 19.813f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e7f5a1d    # -16.081f

    const v5, 0x40716873    # 3.772f

    const/high16 v6, -0x3de70000    # -38.25f

    const v7, 0x4112ac08    # 9.167f

    const/high16 v8, -0x3de70000    # -38.25f

    const v9, 0x4112ac08    # 9.167f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x3e558106    # -21.312f

    const v4, 0x408ec083    # 4.461f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x41e353f8    # -0.153f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x419ba5e3    # -0.223f

    const v4, 0x3d27ef9e    # 0.041f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v3, 0x41ac0000    # 21.5f

    const/high16 v4, 0x40900000    # 4.5f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x41b15a1d    # 22.169f

    const v7, 0x40aca3d7    # 5.395f

    const/high16 v8, 0x42190000    # 38.25f

    const v9, 0x4112ac08    # 9.167f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x419cf7cf    # 19.621f

    const v5, 0x40934396    # 4.602f

    const v6, 0x42078937

    const v7, 0x41429375    # 12.161f

    const v8, 0x42303333    # 44.05f

    const v9, 0x419e8106    # 19.813f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4058d4fe    # 3.388f

    const v5, 0x40233333    # 2.55f

    const v6, 0x40ca45a2    # 6.321f

    const v7, 0x40a38d50    # 5.111f

    const v8, 0x410d851f    # 8.845f

    const v9, 0x40f26e98    # 7.576f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4105ae14    # 8.355f

    const v5, 0x40f38d50    # 7.611f

    const v6, 0x4145ae14    # 12.355f

    const v7, 0x418ce354    # 17.611f

    const v8, 0x419ca1cb    # 19.579f

    const v9, 0x41ce147b    # 25.76f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4005b22d    # 2.089f

    const v5, 0x401b74bc    # 2.429f

    const v6, 0x40893f7d    # 4.289f

    const v7, 0x409849ba    # 4.759f

    const v8, 0x40d3020c    # 6.594f

    const v9, 0x40df645a    # 6.981f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41938106    # 18.438f

    const v5, 0x418e4396    # 17.783f

    const v6, 0x422e1581    # 43.521f

    const v7, 0x41e5c6a8    # 28.722f

    const v8, 0x428e51ec    # 71.16f

    const v9, 0x41e5c6a8    # 28.722f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x42626c8b

    const/4 v5, 0x0

    const v6, 0x42ccfdf4

    const v7, -0x3dc87cee

    const v8, 0x42cd08b4

    const v9, -0x3d330ac1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3e408312    # 0.188f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4400df9e

    const v5, 0x436ab1ec

    const v6, 0x4400dfae

    const v7, 0x436aae56    # 234.681f

    const v8, 0x4400dfae

    const v9, 0x436aaac1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43412000    # 193.125f

    const v4, 0x436c7df4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->v:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3b03126f    # 0.002f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x41d4999a    # 26.575f

    const v7, 0x4007ced9    # 2.122f

    const v8, 0x427c8000    # 63.125f

    const v9, 0x41250e56    # 10.316f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x412c1893    # 10.756f

    const v5, 0x401a5e35    # 2.412f

    const v6, 0x41a31aa0    # 20.388f

    const v7, 0x40c224dd    # 6.067f

    const v8, 0x41e751ec    # 28.915f

    const v9, 0x4125f3b6    # 10.372f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41086a7f    # 8.526f

    const v5, 0x4089c28f    # 4.305f

    const v6, 0x417f2b02    # 15.948f

    const v7, 0x411424dd    # 9.259f

    const v8, 0x41b247ae    # 22.285f

    const v9, 0x41644dd3    # 14.269f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x43a28000    # 325.0f

    const v5, 0x438da7ae    # 283.31f

    const/high16 v6, 0x43a70000    # 334.0f

    const v7, 0x439827ae    # 304.31f

    const v8, 0x43afacac    # 351.349f

    const v9, 0x439e47cf

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40b6b021    # 5.709f

    const v5, 0x40898937    # 4.298f

    const v6, 0x413e20c5    # 11.883f

    const v7, 0x41003d71    # 8.015f

    const v8, 0x419372b0    # 18.431f

    const v9, 0x4130fdf4    # 11.062f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41518937    # 13.096f

    const v5, 0x40c30a3d    # 6.095f

    const v6, 0x41dd8d50    # 27.694f

    const v7, 0x411828f6    # 9.51f

    const v8, 0x422c5d2f    # 43.091f

    const v9, 0x41189fbe    # 9.539f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x425ef7cf    # 55.742f

    const v5, 0x3dd4fdf4    # 0.104f

    const v6, 0x42cb6d0e

    const v7, -0x3dcba2d1    # -45.091f

    const v8, 0x42cd3852    # 102.61f

    const v9, -0x3d365917

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x3c23d70a    # 0.01f

    const v5, -0x40f6872b    # -0.537f

    const v6, 0x3be56042    # 0.007f

    const v7, -0x4076e979    # -1.071f

    const v8, 0x3be56042    # 0.007f

    const v9, -0x40326e98    # -1.606f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, -0x43333333    # -0.025f

    const/4 v6, 0x0

    const v7, -0x42b33333    # -0.05f

    const/4 v8, 0x0

    const v9, -0x426872b0    # -0.074f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, -0x43333333    # -0.025f

    const/4 v6, 0x0

    const v7, -0x42b33333    # -0.05f

    const/4 v8, 0x0

    const v9, -0x42666666    # -0.075f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, -0x40f70a3d    # -0.535f

    const v6, 0x3b449ba6    # 0.003f

    const v7, -0x40772b02    # -1.069f

    const v8, -0x441a9fbe    # -0.007f

    const v9, -0x40326e98    # -1.606f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x409a5e35    # -0.897f

    const v5, -0x3da11062

    const v6, -0x3dc4872b    # -46.868f

    const v7, -0x3d3623d7    # -100.93f

    const v8, -0x3d32c7ae    # -102.61f

    const v9, -0x3d365917

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e89a9fc    # -15.396f

    const v5, 0x3ced9168    # 0.029f

    const v6, -0x3e100a3d    # -29.995f

    const v7, 0x405c6a7f    # 3.444f

    const v8, -0x3dd3a2d1    # -43.091f

    const v9, 0x41189fbe    # 9.539f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f2e76c9    # -6.548f

    const v5, 0x4043020c    # 3.047f

    const v6, -0x3eb472b0    # -12.722f

    const v7, 0x40d872b0    # 6.764f

    const v8, -0x3e6c8d50    # -18.431f

    const v9, 0x4131020c    # 11.063f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v4, 0x43a70000    # 334.0f

    const/high16 v5, 0x43250000    # 165.0f

    const v6, 0x43a28000    # 325.0f

    const/high16 v7, 0x433a0000    # 186.0f

    const v8, 0x4399b99a

    const v9, 0x4345dbe7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f35374c    # -6.337f

    const v5, 0x40a051ec    # 5.01f

    const v6, -0x3ea3db23    # -13.759f

    const v7, 0x411f6c8b    # 9.964f

    const v8, -0x3e4db852    # -22.285f

    const v9, 0x41644dd3    # 14.269f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3ef79168    # -8.527f

    const v5, 0x4089c28f    # 4.305f

    const v6, -0x3e6eba5e    # -18.159f

    const v7, 0x40feb852    # 7.96f

    const v8, -0x3e18ae14    # -28.915f

    const v9, 0x4125f3b6    # 10.372f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3dedcccd    # -36.55f

    const v5, 0x41031eb8    # 8.195f

    const v6, -0x3d838000    # -63.125f

    const v7, 0x41250e56    # 10.316f

    const v8, -0x3d838000    # -63.125f

    const v9, 0x41250e56    # 10.316f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x3e6ffbe7    # -18.002f

    const v4, 0x3fe1cac1    # 1.764f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x4096872b    # -0.912f

    const v4, 0x3d810625    # 0.063f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3e010625    # 0.126f

    const v4, 0x3c449ba6    # 0.012f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x41fef9db    # -0.126f

    const v4, 0x3c449ba6    # 0.012f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3f6978d5    # 0.912f

    const v4, 0x3d7df3b6    # 0.062f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->L:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43412000    # 193.125f

    const v4, 0x436c7df4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43d6e5c3

    const v4, 0x430589fc

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f55999a    # -5.325f

    const v5, -0x409c28f6    # -0.89f

    const v6, -0x3ed36873    # -10.787f

    const v7, -0x40516873    # -1.364f

    const v8, -0x3e7d3958    # -16.347f

    const v9, -0x404e353f    # -1.389f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f85e354    # -3.908f

    const v5, 0x3e116873    # 0.142f

    const v6, -0x3f0547ae    # -7.835f

    const v7, 0x3eda1cac    # 0.426f

    const v8, -0x3ec3a1cb    # -11.773f

    const v9, 0x3f610625    # 0.879f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e969fbe    # -14.586f

    const v5, 0x3e9ba5e3    # 0.304f

    const v6, -0x3e22df3b    # -27.641f

    const v7, 0x408a45a2    # 4.321f

    const v8, -0x3de14ccd    # -39.675f

    const v9, 0x412a5a1d    # 10.647f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3fe6147b    # -2.405f

    const v5, 0x3fa20c4a    # 1.266f

    const v6, -0x3f6753f8    # -4.771f

    const v7, 0x4027df3b    # 2.623f

    const v8, -0x3f1cd4fe    # -7.099f

    const v9, 0x40820419    # 4.063f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3ed65e35    # -10.602f

    const v5, 0x40dae979    # 6.841f

    const v6, -0x3e67d0e5    # -19.023f

    const v7, 0x417c9ba6    # 15.788f

    const v8, -0x3e222b02    # -27.729f

    const v9, 0x41c49db2    # 24.577f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3ff4ac08    # -2.177f

    const v5, 0x400c9ba6    # 2.197f

    const v6, -0x3f741893    # -4.372f

    const v7, 0x408c4189    # 4.383f

    const v8, -0x3f2bd70a    # -6.63f

    const v9, 0x40d072b0    # 6.514f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x43948000    # 297.0f

    const v5, 0x43480042    # 200.001f

    const/high16 v6, 0x43870000    # 270.0f

    const v7, 0x435c0042    # 220.001f

    const v8, 0x436e3d2f

    const v9, 0x4361c396

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3fcc3958    # -2.809f

    const v5, 0x3f0f1aa0    # 0.559f

    const v6, -0x3f4bae14    # -5.635f

    const v7, 0x3f86e979    # 1.054f

    const v8, -0x3ef87efa    # -8.469f

    const/high16 v9, 0x3fc00000    # 1.5f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f68d4fe    # -4.724f

    const v5, 0x3f3e353f    # 0.743f

    const v6, -0x3ee86a7f    # -9.474f

    const v7, 0x3facac08    # 1.349f

    const v8, -0x3e9c8312    # -14.218f

    const v9, 0x3ff0c49c    # 1.881f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3fe820c5    # -2.373f

    const v5, 0x3e883127    # 0.266f

    const v6, -0x3f683127    # -4.744f

    const v7, 0x3f039581    # 0.514f

    const v8, -0x3f1c7ae1    # -7.11f

    const v9, 0x3f404189    # 0.751f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e5476c9    # -21.442f

    const v5, 0x4006b852    # 2.105f

    const v6, -0x3ddb9062

    const v7, 0x406e24dd    # 3.721f

    const v8, -0x3d85e560    # -62.526f

    const v9, 0x4097126f    # 4.721f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41ab5604    # 21.417f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x42245604    # 41.084f

    const v7, 0x40276c8b    # 2.616f

    const v8, 0x427a1aa0    # 62.526f

    const v9, 0x40970a3d    # 4.72f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40176c8b    # 2.366f

    const v5, 0x3e73b646    # 0.238f

    const v6, 0x40979581    # 4.737f

    const v7, 0x3ef8d4fe    # 0.486f

    const v8, 0x40e3851f    # 7.11f

    const v9, 0x3f408312    # 0.752f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4097ced9    # 4.744f

    const v5, 0x3f083127    # 0.532f

    const v6, 0x4117e76d    # 9.494f

    const v7, 0x3f91a9fc    # 1.138f

    const v8, 0x41637cee    # 14.218f

    const v9, 0x3ff0c49c    # 1.881f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40356042    # 2.834f

    const v5, 0x3ee45a1d    # 0.446f

    const v6, 0x40b51eb8    # 5.66f

    const v7, 0x3f70e560    # 0.941f

    const v8, 0x41078106    # 8.469f

    const/high16 v9, 0x3fc00000    # 1.5f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v4, 0x43870000    # 270.0f

    const v5, 0x43793ba6

    const v6, 0x43948000    # 297.0f

    const v7, 0x43869dd3

    const v8, 0x43a04560

    const v9, 0x439133b6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40108312    # 2.258f

    const v5, 0x4008624e    # 2.131f

    const v6, 0x408e7efa    # 4.453f

    const v7, 0x408a24dd    # 4.317f

    const v8, 0x40d428f6    # 6.63f

    const v9, 0x40d072b0    # 6.514f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x410b4bc7    # 8.706f

    const v5, 0x410c9fbe    # 8.789f

    const v6, 0x41890625    # 17.128f

    const v7, 0x418de354    # 17.736f

    const v8, 0x41ddd4fe    # 27.729f

    const v9, 0x41c49db2    # 24.577f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4014ed91    # 2.327f

    const v5, 0x3fb851ec    # 1.44f

    const v6, 0x40962d0e    # 4.693f

    const v7, 0x4033020c    # 2.797f

    const v8, 0x40e32b02    # 7.099f

    const v9, 0x4081fbe7    # 4.062f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41408b44    # 12.034f

    const v5, 0x40ca76c9    # 6.327f

    const v6, 0x41c8b646    # 25.089f

    const v7, 0x41258106    # 10.344f

    const v8, 0x421eb333    # 39.675f

    const v9, 0x412a5e35    # 10.648f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x407c0831    # 3.938f

    const v5, 0x3ee76c8b    # 0.452f

    const v6, 0x40fbae14    # 7.865f

    const v7, 0x3f3cac08    # 0.737f

    const v8, 0x413c5e35    # 11.773f

    const v9, 0x3f610625    # 0.879f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40b1eb85    # 5.56f

    const v5, -0x43333333    # -0.025f

    const v6, 0x41305604    # 11.021f

    const/high16 v7, -0x41000000    # -0.5f

    const v8, 0x4182c6a8    # 16.347f

    const v9, -0x404e353f    # -1.389f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x423fbf7d    # 47.937f

    const v5, -0x3effe76d    # -8.006f

    const v6, 0x42a9fb64

    const v7, -0x3db3d3f8    # -51.043f

    const v8, 0x42ab6148    # 85.69f

    const v9, -0x3d35d810

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4400b24e

    const v5, 0x433894fe    # 184.582f

    const v6, 0x43eedd91

    const v7, 0x430d8b85

    const v8, 0x43d6e5c3

    const v9, 0x430589fc

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x43ce7d2f

    const v4, 0x430425e3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f5dcac1    # -5.069f

    const/4 v5, 0x0

    const v6, -0x3edf2f1b    # -10.051f

    const v7, 0x3ebc6a7f    # 0.368f

    const v8, -0x3e910e56    # -14.934f

    const v9, 0x3f874bc7    # 1.057f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3eb3ced9    # -12.762f

    const v5, 0x400cbc6a    # 2.199f

    const v6, -0x3e395a1d    # -24.831f

    const v7, 0x40c11eb8    # 6.035f

    const v8, -0x3dee1581    # -36.479f

    const v9, 0x412dc6a8    # 10.861f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f878d50    # -3.882f

    const v5, 0x3fcdf3b6    # 1.609f

    const v6, -0x3f090625    # -7.718f

    const v7, 0x4054fdf4    # 3.328f

    const v8, -0x3ec7be77    # -11.516f

    const v9, 0x40a43958    # 5.132f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3fbb851f    # -3.07f

    const v5, 0x3fdc28f6    # 1.72f

    const v6, -0x3f3bced9    # -6.131f

    const v7, 0x405ec8b4    # 3.481f

    const v8, -0x3eed0625    # -9.186f

    const v9, 0x40a8bc6a    # 5.273f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3ef88b44    # -8.466f

    const v5, 0x40b43958    # 5.632f

    const v6, -0x3e78f9db    # -16.878f

    const v7, 0x4136b439    # 11.419f

    const v8, -0x3e353127    # -25.351f

    const v9, 0x4188d917    # 17.106f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f786a7f    # -4.237f

    const v5, 0x40360419    # 2.844f

    const v6, -0x3ef82d0e    # -8.489f

    const v7, 0x40b5374c    # 5.663f

    const v8, -0x3eb3be77    # -12.766f

    const v9, 0x4107126f    # 8.442f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e489fbe    # -22.922f

    const v5, 0x41763127    # 15.387f

    const v6, -0x3da5d2f2

    const v7, 0x41e420c5    # 28.516f

    const v8, -0x3d5fa666

    const v9, 0x4210a8f6    # 36.165f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x4015a1cb    # -1.831f

    const v5, 0x3f0c0831    # 0.547f

    const v6, -0x3f979db2    # -3.631f

    const v7, 0x3f8851ec    # 1.065f

    const v8, -0x3f535c29    # -5.395f

    const v9, 0x3fc6e979    # 1.554f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v4, 0x43510000    # 209.0f

    const/high16 v5, 0x435c0000    # 220.0f

    const/high16 v6, 0x434a0000    # 202.0f

    const/high16 v7, 0x435d0000    # 221.0f

    const v8, 0x434213b6

    const v9, 0x435ebefa

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, -0x400147ae    # -1.99f

    const v7, 0x3eab020c    # 0.334f

    const v8, -0x3f56353f    # -5.306f

    const v9, 0x3f641893    # 0.891f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e7b5604    # -16.583f

    const v5, 0x40322d0e    # 2.784f

    const v6, -0x3d7b5581    # -66.333f

    const v7, 0x41312f1b    # 11.074f

    const v8, -0x3d7b5581    # -66.333f

    const v9, 0x41312f1b    # 11.074f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->s:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/high16 v4, 0x42470000    # 49.75f

    const v5, 0x4104a3d7    # 8.29f

    const v6, 0x4284aa7f    # 66.333f

    const v7, 0x41312f1b    # 11.074f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40543958    # 3.316f

    const v5, 0x3f0e978d    # 0.557f

    const v6, 0x40a9cac1    # 5.306f

    const v7, 0x3f641893    # 0.891f

    const v8, 0x40a9cac1    # 5.306f

    const v9, 0x3f641893    # 0.891f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40fd9168    # 7.924f

    const v5, 0x3fdf5c29    # 1.745f

    const v6, 0x416ec8b4    # 14.924f

    const v7, 0x402fae14    # 2.745f

    const v8, 0x41b8ced9    # 23.101f

    const v9, 0x40a03958    # 5.007f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x3fe1cac1    # 1.764f

    const v5, 0x3efa5e35    # 0.489f

    const v6, 0x40641893    # 3.564f

    const v7, 0x3f810625    # 1.008f

    const v8, 0x40aca3d7    # 5.395f

    const v9, 0x3fc6e979    # 1.554f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41cd0a3d    # 25.63f

    const v5, 0x40f4c49c    # 7.649f

    const v6, 0x4265020c

    const v7, 0x41a63b64    # 20.779f

    const v8, 0x42a0599a

    const v9, 0x4210a8f6    # 36.165f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4088d4fe    # 4.276f

    const v5, 0x4031db23    # 2.779f

    const v6, 0x410872b0    # 8.528f

    const v7, 0x40b322d1    # 5.598f

    const v8, 0x414c4189    # 12.766f

    const v9, 0x4107126f    # 8.442f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41079168    # 8.473f

    const v5, 0x40b5fbe7    # 5.687f

    const v6, 0x4187147b    # 16.885f

    const v7, 0x41379581    # 11.474f

    const v8, 0x41caced9    # 25.351f

    const v9, 0x4188d917    # 17.106f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4043851f    # 3.055f

    const v5, 0x3fe56042    # 1.792f

    const v6, 0x40c3ae14    # 6.115f

    const v7, 0x4063645a    # 3.553f

    const v8, 0x4112f9db    # 9.186f

    const v9, 0x40a8bc6a    # 5.273f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4073126f    # 3.798f

    const v5, 0x3fe70a3d    # 1.805f

    const v6, 0x40f449ba    # 7.634f

    const v7, 0x406178d5    # 3.523f

    const v8, 0x41384189    # 11.516f

    const v9, 0x40a43958    # 5.132f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x413a5e35    # 11.648f

    const v5, 0x409a6e98    # 4.826f

    const v6, 0x41bdbe77    # 23.718f

    const v7, 0x410a9ba6    # 8.663f

    const v8, 0x4211ea7f    # 36.479f

    const v9, 0x412dcac1    # 10.862f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x409c4189    # 4.883f

    const v5, 0x3f3020c5    # 0.688f

    const v6, 0x411dd2f2    # 9.864f

    const v7, 0x3f872b02    # 1.056f

    const v8, 0x416ef1aa    # 14.934f

    const v9, 0x3f872b02    # 1.056f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x426279db    # 56.619f

    const/4 v5, 0x0

    const v6, 0x42cd0937

    const v7, -0x3dc83b64

    const v8, 0x42cd0937

    const v9, -0x3d32e042

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4400dfae

    const v5, 0x4332178d

    const v6, 0x43eacc6a

    const v7, 0x430425e3

    const v8, 0x43ce7d2f

    const v9, 0x430425e3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->M:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x4400df5c    # 515.49f

    const v4, 0x436a7687

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const/4 v4, 0x0

    const v5, -0x42d3f7cf    # -0.042f

    const v6, 0x3b449ba6    # 0.003f

    const v7, -0x4253f7cf    # -0.084f

    const v8, 0x3b449ba6    # 0.003f

    const v9, -0x41fef9db    # -0.126f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x443b645a    # -0.006f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x419db22d    # -0.221f

    const v5, -0x3de274bc

    const v6, -0x3e4add2f    # -22.642f

    const v7, -0x3d6cf958    # -73.513f

    const v8, -0x3da26b85    # -55.395f

    const v9, -0x3d4b051f    # -90.49f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f698106    # -4.703f

    const v5, -0x3fe3f7cf    # -2.438f

    const v6, -0x3ee6147b    # -9.62f

    const v7, -0x3f6f53f8    # -4.521f

    const v8, -0x3e9476c9    # -14.721f

    const v9, -0x3f38fdf4    # -6.219f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e3d6e98    # -24.321f

    const v5, -0x3efed917    # -8.072f

    const v6, -0x3dc3ef9e

    const v7, -0x3f505a1d    # -5.489f

    const v8, -0x3d767127    # -68.779f

    const v9, 0x4001cac1    # 2.028f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f74b439    # -4.353f

    const v5, 0x3fc0624e    # 1.503f

    const v6, -0x3ef54bc7    # -8.669f

    const v7, 0x404cfdf4    # 3.203f

    const v8, -0x3eb0b021    # -12.957f

    const v9, 0x40a18937    # 5.048f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3dd976c9

    const v5, 0x419a6873    # 19.301f

    const v6, -0x3d5cbb64

    const v7, 0x42253439

    const v8, -0x3d0789ba

    const v9, 0x425f9062

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f72d0e5    # -4.412f

    const v5, 0x3fba5e35    # 1.456f

    const v6, -0x3ef27ae1    # -8.845f

    const v7, 0x4035b22d    # 2.839f

    const v8, -0x3eab3b64    # -13.298f

    const v9, 0x4084f5c3    # 4.155f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3e4de148    # -22.265f

    const v5, 0x40d24dd3    # 6.572f

    const v6, -0x3dcbe042

    const v7, 0x41379db2    # 11.476f

    const v8, -0x3d778419

    const v9, 0x4172d4fe    # 15.177f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f6d2f1b    # -4.588f

    const v5, 0x3f2f9db2    # 0.686f

    const v6, -0x3eeced91    # -9.192f

    const v7, 0x3fa9ba5e    # 1.326f

    const v8, -0x3ea30a3d    # -13.81f

    const v9, 0x3ff76c8b    # 1.933f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, -0x3f76353f    # -4.306f

    const v5, 0x3f191687    # 0.598f

    const v6, -0x3ef66a7f    # -8.599f

    const v7, 0x3f9645a2    # 1.174f

    const v8, -0x3eb20831    # -12.873f

    const v9, 0x3fdeb852    # 1.74f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x3d59d893

    const v4, 0x412bcac1    # 10.737f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x40072b02    # -1.944f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3f78d4fe    # 0.972f

    const v4, 0x3e010625    # 0.126f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, -0x40872b02    # -0.972f

    const v4, 0x3e010625    # 0.126f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3ff8d4fe    # 1.944f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->l:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x42a6276d

    const v4, 0x412bcac1    # 10.737f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4088c49c    # 4.274f

    const v5, 0x3f10e560    # 0.566f

    const v6, 0x4109126f    # 8.567f

    const v7, 0x3f922d0e    # 1.142f

    const v8, 0x414df7cf    # 12.873f

    const v9, 0x3fdeb852    # 1.74f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4093c6a8    # 4.618f

    const v5, 0x3f1b645a    # 0.607f

    const v6, 0x41138d50    # 9.222f

    const v7, 0x3f9f9db2    # 1.247f

    const v8, 0x415cf5c3    # 13.81f

    const v9, 0x3ff76c8b    # 1.933f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41b9b021    # 23.211f

    const v5, 0x406cdd2f    # 3.701f

    const v6, 0x4237e873

    const v7, 0x4109ae14    # 8.605f

    const v8, 0x42887be7

    const v9, 0x4172d4fe    # 15.177f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x408e7efa    # 4.453f

    const v5, 0x3fa872b0    # 1.316f

    const v6, 0x410e2d0e    # 8.886f

    const v7, 0x402cbc6a    # 2.699f

    const v8, 0x4154c49c    # 13.298f

    const v9, 0x4084fdf4    # 4.156f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x422a6354    # 42.597f

    const v5, 0x41696c8b    # 14.589f

    const v6, 0x42a531aa    # 82.597f

    const v7, 0x42125b23    # 36.589f

    const v8, 0x42f87646

    const v9, 0x425f8f5c    # 55.89f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4089374c    # 4.288f

    const v5, 0x3fec28f6    # 1.845f

    const v6, 0x4109a9fc    # 8.604f

    const v7, 0x4062e148    # 3.545f

    const v8, 0x414f4fdf    # 12.957f

    const v9, 0x40a18937    # 5.048f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x41ae1cac    # 21.764f

    const v5, 0x40f08b44    # 7.517f

    const v6, 0x4231d4fe    # 44.458f

    const v7, 0x4121999a    # 10.1f

    const v8, 0x42898ed9    # 68.779f

    const v9, 0x4001cac1    # 2.028f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x40a33b64    # 5.101f

    const v5, -0x4026c8b4    # -1.697f

    const v6, 0x412049ba    # 10.018f

    const v7, -0x3f8e0419    # -3.781f

    const v8, 0x416b8937    # 14.721f

    const v9, -0x3f38fdf4    # -6.219f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->c:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x42030312

    const v5, -0x3e782f1b    # -16.977f

    const v6, 0x425cb22d    # 55.174f

    const v7, -0x3db39581    # -51.104f

    const v8, 0x425d947b    # 55.395f

    const v9, -0x3d4b051f    # -90.49f

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->h:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v3, 0x3bc49ba6    # 0.006f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;F)V

    sget-object v3, Landroid/widget/SeekBarFluidPath$SVGCommand;->C:Landroid/widget/SeekBarFluidPath$SVGCommand;

    const v4, 0x4400df8d

    const v5, 0x436a8c08

    const v6, 0x4400df5c    # 515.49f

    const v7, 0x436a8148

    const v8, 0x4400df5c    # 515.49f

    const v9, 0x436a7687

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;FFFFFF)V

    sget-object v1, Landroid/widget/SeekBarFluidPath$SVGCommand;->z:Landroid/widget/SeekBarFluidPath$SVGCommand;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Landroid/widget/SeekBarFluidPath;->parseVectorPath(Landroid/graphics/Path;Landroid/widget/SeekBarFluidPath$SVGCommand;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aput-object v2, v1, v15

    return-void
.end method


# virtual methods
.method public getCircleCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getPath(I)Landroid/graphics/Path;
    .locals 2

    iget-object v1, p0, Landroid/widget/SeekBarFluidPath;->mPaths:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    return-object v0
.end method

.method public getPathCount()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getTailWidthFromCircleCenter()F
    .locals 2

    iget v0, p0, Landroid/widget/SeekBarFluidPath;->mScale:F

    const v1, 0x43a48ccd    # 329.1f

    mul-float/2addr v0, v1

    return v0
.end method
