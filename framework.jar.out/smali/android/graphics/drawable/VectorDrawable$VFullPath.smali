.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VFullPath"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VFullPath$1;
    }
.end annotation


# static fields
.field private static final FILL_ALPHA_INDEX:I = 0x4

.field private static final FILL_COLOR_INDEX:I = 0x3

.field private static final FILL_TYPE_INDEX:I = 0xb

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final STROKE_ALPHA_INDEX:I = 0x2

.field private static final STROKE_COLOR_INDEX:I = 0x1

.field private static final STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final STROKE_WIDTH_INDEX:I = 0x0

.field private static final TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final TRIM_PATH_END_INDEX:I = 0x6

.field private static final TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final TRIM_PATH_START_INDEX:I = 0x5

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFillColors:Landroid/content/res/ComplexColor;

.field private final mNativePtr:J

.field private mPropertyData:[B

.field mStrokeColors:Landroid/content/res/ComplexColor;

.field private mThemeAttrs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1419
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    .line 1418
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    .line 1401
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1442
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1438
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1439
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1443
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-wrap21()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1442
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .prologue
    const/4 v0, 0x0

    .line 1447
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1438
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1439
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1448
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap22(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1449
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1450
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1451
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1446
    return-void
.end method

.method private canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .locals 1
    .param p1, "complexColor"    # Landroid/content/res/ComplexColor;

    .prologue
    .line 1674
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 28
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1512
    const/16 v16, 0x30

    .line 1513
    .local v16, "byteCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    if-nez v2, :cond_0

    .line 1516
    move/from16 v0, v16

    new-array v2, v0, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 1521
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap0(J[BI)Z

    move-result v24

    .line 1522
    .local v24, "success":Z
    if-nez v24, :cond_1

    .line 1523
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error: inconsistent property count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1526
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 1527
    .local v21, "properties":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1528
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v4

    .line 1529
    .local v4, "strokeWidth":F
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 1530
    .local v5, "strokeColor":I
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    .line 1531
    .local v6, "strokeAlpha":F
    const/16 v2, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    .line 1532
    .local v7, "fillColor":I
    const/16 v2, 0x10

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v8

    .line 1533
    .local v8, "fillAlpha":F
    const/16 v2, 0x14

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v9

    .line 1534
    .local v9, "trimPathStart":F
    const/16 v2, 0x18

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    .line 1535
    .local v10, "trimPathEnd":F
    const/16 v2, 0x1c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v11

    .line 1536
    .local v11, "trimPathOffset":F
    const/16 v2, 0x20

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    .line 1537
    .local v13, "strokeLineCap":I
    const/16 v2, 0x24

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    .line 1538
    .local v14, "strokeLineJoin":I
    const/16 v2, 0x28

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v12

    .line 1539
    .local v12, "strokeMiterLimit":F
    const/16 v2, 0x2c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    .line 1540
    .local v15, "fillType":I
    const/16 v18, 0x0

    .line 1541
    .local v18, "fillGradient":Landroid/graphics/Shader;
    const/16 v23, 0x0

    .line 1543
    .local v23, "strokeGradient":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 1546
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1548
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1549
    .local v19, "pathName":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 1550
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 1551
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/graphics/drawable/VectorDrawable;->-wrap30(JLjava/lang/String;)V

    .line 1554
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1555
    .local v20, "pathString":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 1556
    new-instance v2, Landroid/util/PathParser$PathData;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1557
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap32(JLjava/lang/String;I)V

    .line 1561
    :cond_3
    const/4 v2, 0x1

    .line 1560
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v17

    .line 1562
    .local v17, "fillColors":Landroid/content/res/ComplexColor;
    if-eqz v17, :cond_4

    .line 1565
    move-object/from16 v0, v17

    instance-of v2, v0, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_6

    .line 1566
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    move-object/from16 v2, v17

    .line 1567
    check-cast v2, Landroid/content/res/GradientColor;

    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v18

    .line 1573
    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v7

    .line 1577
    :cond_4
    const/4 v2, 0x3

    .line 1576
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v22

    .line 1578
    .local v22, "strokeColors":Landroid/content/res/ComplexColor;
    if-eqz v22, :cond_5

    .line 1581
    move-object/from16 v0, v22

    instance-of v2, v0, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_8

    .line 1582
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    move-object/from16 v2, v22

    .line 1583
    check-cast v2, Landroid/content/res/GradientColor;

    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v23

    .line 1589
    .end local v23    # "strokeGradient":Landroid/graphics/Shader;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v5

    .line 1592
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v26, v0

    .line 1593
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    .line 1592
    :goto_2
    move-wide/from16 v0, v26

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap47(JJ)V

    .line 1594
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v26, v0

    .line 1595
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    .line 1594
    :goto_3
    move-wide/from16 v0, v26

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap49(JJ)V

    .line 1597
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 1600
    const/16 v2, 0x8

    .line 1599
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 1602
    const/16 v2, 0x9

    .line 1601
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 1604
    const/16 v2, 0xa

    .line 1603
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 1605
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1607
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1609
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 1612
    const/4 v2, 0x7

    .line 1611
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 1614
    const/4 v2, 0x5

    .line 1613
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 1615
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 1617
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static/range {v2 .. v15}, Landroid/graphics/drawable/VectorDrawable;->-wrap48(JFIFIFFFFFIII)V

    .line 1511
    return-void

    .line 1568
    .end local v22    # "strokeColors":Landroid/content/res/ComplexColor;
    .restart local v18    # "fillGradient":Landroid/graphics/Shader;
    .restart local v23    # "strokeGradient":Landroid/graphics/Shader;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1569
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto/16 :goto_0

    .line 1571
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto/16 :goto_0

    .line 1584
    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .restart local v22    # "strokeColors":Landroid/content/res/ComplexColor;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1585
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto/16 :goto_1

    .line 1587
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto/16 :goto_1

    .line 1593
    .end local v23    # "strokeGradient":Landroid/graphics/Shader;
    :cond_a
    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 1595
    :cond_b
    const-wide/16 v2, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1640
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v3, :cond_0

    .line 1641
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1642
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1643
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1649
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    .line 1650
    .local v1, "fillCanApplyTheme":Z
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    .line 1652
    .local v2, "strokeCanApplyTheme":Z
    if-eqz v1, :cond_1

    .line 1653
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v3, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1654
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v3, v3, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_3

    .line 1655
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1656
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v3, Landroid/content/res/GradientColor;

    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v6

    .line 1655
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/drawable/VectorDrawable;->-wrap47(JJ)V

    .line 1662
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1663
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v3, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1664
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v3, v3, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_4

    .line 1665
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1666
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v3, Landroid/content/res/GradientColor;

    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v6

    .line 1665
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/drawable/VectorDrawable;->-wrap49(JJ)V

    .line 1638
    :cond_2
    :goto_1
    return-void

    .line 1657
    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v3, v3, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 1658
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    invoke-static {v4, v5, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap29(JI)V

    goto :goto_0

    .line 1667
    :cond_4
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v3, v3, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 1668
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    invoke-static {v4, v5, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap40(JI)V

    goto :goto_1
.end method

.method public canApplyTheme()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1624
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v2, :cond_0

    .line 1625
    return v3

    .line 1628
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 1629
    .local v0, "fillCanApplyTheme":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    .line 1630
    .local v1, "strokeCanApplyTheme":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1631
    :cond_1
    return v3

    .line 1633
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method getFillAlpha()F
    .locals 2

    .prologue
    .line 1730
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap3(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFillColor()I
    .locals 2

    .prologue
    .line 1717
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap17(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 1500
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .locals 1

    .prologue
    .line 1495
    const/16 v0, 0x108

    return v0
.end method

.method getPropertyIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 1455
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    const/4 v0, -0x1

    return v0

    .line 1458
    :cond_0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 2

    .prologue
    .line 1705
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap10(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getStrokeColor()I
    .locals 2

    .prologue
    .line 1680
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap18(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getStrokeWidth()F
    .locals 2

    .prologue
    .line 1693
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap11(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTrimPathEnd()F
    .locals 2

    .prologue
    .line 1754
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap14(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTrimPathOffset()F
    .locals 2

    .prologue
    .line 1766
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap15(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTrimPathStart()F
    .locals 2

    .prologue
    .line 1742
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap16(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1506
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    .line 1505
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1507
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1508
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1504
    return-void
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1490
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStateChange([I)Z
    .locals 10
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1464
    const/4 v0, 0x0

    .line 1466
    .local v0, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v5, v5, Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_0

    .line 1467
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v4

    .line 1469
    .local v4, "oldStrokeColor":I
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v5, Landroid/content/res/ColorStateList;

    invoke-virtual {v5, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 1470
    .local v2, "newStrokeColor":I
    if-eq v4, v2, :cond_2

    move v0, v6

    .line 1471
    .local v0, "changed":Z
    :goto_0
    if-eq v4, v2, :cond_0

    .line 1472
    iget-wide v8, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v8, v9, v2}, Landroid/graphics/drawable/VectorDrawable;->-wrap40(JI)V

    .line 1476
    .end local v0    # "changed":Z
    .end local v2    # "newStrokeColor":I
    .end local v4    # "oldStrokeColor":I
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v5, v5, Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    .line 1477
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v3

    .line 1478
    .local v3, "oldFillColor":I
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v5, Landroid/content/res/ColorStateList;

    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 1479
    .local v1, "newFillColor":I
    if-eq v3, v1, :cond_3

    move v5, v6

    :goto_1
    or-int/2addr v0, v5

    .line 1480
    .restart local v0    # "changed":Z
    if-eq v3, v1, :cond_1

    .line 1481
    iget-wide v6, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v6, v7, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap29(JI)V

    .line 1485
    .end local v0    # "changed":Z
    .end local v1    # "newFillColor":I
    .end local v3    # "oldFillColor":I
    :cond_1
    return v0

    .local v0, "changed":Z
    .restart local v2    # "newStrokeColor":I
    .restart local v4    # "oldStrokeColor":I
    :cond_2
    move v0, v7

    .line 1470
    goto :goto_0

    .end local v0    # "changed":Z
    .end local v2    # "newStrokeColor":I
    .end local v4    # "oldStrokeColor":I
    .restart local v1    # "newFillColor":I
    .restart local v3    # "oldFillColor":I
    :cond_3
    move v5, v7

    .line 1479
    goto :goto_1
.end method

.method setFillAlpha(F)V
    .locals 2
    .param p1, "fillAlpha"    # F

    .prologue
    .line 1735
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap28(JF)V

    .line 1734
    :cond_0
    return-void
.end method

.method setFillColor(I)V
    .locals 2
    .param p1, "fillColor"    # I

    .prologue
    .line 1722
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1723
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1724
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap29(JI)V

    .line 1721
    :cond_0
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 2
    .param p1, "strokeAlpha"    # F

    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap39(JF)V

    .line 1709
    :cond_0
    return-void
.end method

.method setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    .prologue
    .line 1685
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1686
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap40(JI)V

    .line 1684
    :cond_0
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap41(JF)V

    .line 1697
    :cond_0
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 2
    .param p1, "trimPathEnd"    # F

    .prologue
    .line 1759
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap44(JF)V

    .line 1758
    :cond_0
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 2
    .param p1, "trimPathOffset"    # F

    .prologue
    .line 1771
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1772
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap45(JF)V

    .line 1770
    :cond_0
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 2
    .param p1, "trimPathStart"    # F

    .prologue
    .line 1747
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap46(JF)V

    .line 1746
    :cond_0
    return-void
.end method
