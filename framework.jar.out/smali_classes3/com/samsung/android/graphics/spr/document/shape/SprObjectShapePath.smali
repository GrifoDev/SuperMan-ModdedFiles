.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;,
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    }
.end annotation


# static fields
.field public static final TYPE_BEZIER_CURVETO:B = 0x4t

.field public static final TYPE_CLOSE:B = 0x6t

.field public static final TYPE_ELLIPTICAL_ARC:B = 0x5t

.field public static final TYPE_LINETO:B = 0x2t

.field public static final TYPE_MOVETO:B = 0x1t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_QUADRATIC_CURVETO:B = 0x3t


# instance fields
.field public final mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

.field public mPathInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private addCommand([FCC[F)V
    .locals 22

    const/16 v20, 0x2

    const/4 v3, 0x0

    aget v18, p1, v3

    const/4 v3, 0x1

    aget v19, p1, v3

    const/4 v3, 0x2

    aget v16, p1, v3

    const/4 v3, 0x3

    aget v17, p1, v3

    sparse-switch p3, :sswitch_data_0

    :goto_0
    const/16 v21, 0x0

    :goto_1
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_10

    sparse-switch p3, :sswitch_data_1

    :goto_2
    move/from16 p2, p3

    add-int v21, v21, v20

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    return-void

    :sswitch_1
    const/16 v20, 0x2

    goto :goto_0

    :sswitch_2
    const/16 v20, 0x1

    goto :goto_0

    :sswitch_3
    const/16 v20, 0x6

    goto :goto_0

    :sswitch_4
    const/16 v20, 0x4

    goto :goto_0

    :sswitch_5
    const/16 v20, 0x7

    goto :goto_0

    :sswitch_6
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v19, v19, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto :goto_2

    :sswitch_7
    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v19, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto :goto_2

    :sswitch_8
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v19, v19, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_2

    :sswitch_9
    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v19, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_2

    :sswitch_a
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_2

    :sswitch_b
    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_2

    :sswitch_c
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v19, v19, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_2

    :sswitch_d
    add-int/lit8 v3, v21, 0x0

    aget v19, p4, v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_2

    :sswitch_e
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v4, v18, v3

    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v5, v19, v3

    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v6, v18, v3

    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v7, v19, v3

    add-int/lit8 v3, v21, 0x4

    aget v3, p4, v3

    add-float v8, v18, v3

    add-int/lit8 v3, v21, 0x5

    aget v3, p4, v3

    add-float v9, v19, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v16, v18, v3

    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v17, v19, v3

    add-int/lit8 v3, v21, 0x4

    aget v3, p4, v3

    add-float v18, v18, v3

    add-int/lit8 v3, v21, 0x5

    aget v3, p4, v3

    add-float v19, v19, v3

    goto/16 :goto_2

    :sswitch_f
    add-int/lit8 v3, v21, 0x0

    aget v4, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v5, p4, v3

    add-int/lit8 v3, v21, 0x2

    aget v6, p4, v3

    add-int/lit8 v3, v21, 0x3

    aget v7, p4, v3

    add-int/lit8 v3, v21, 0x4

    aget v8, p4, v3

    add-int/lit8 v3, v21, 0x5

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v21, 0x4

    aget v18, p4, v3

    add-int/lit8 v3, v21, 0x5

    aget v19, p4, v3

    add-int/lit8 v3, v21, 0x2

    aget v16, p4, v3

    add-int/lit8 v3, v21, 0x3

    aget v17, p4, v3

    goto/16 :goto_2

    :sswitch_10
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x73

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_3
    sub-float v4, v18, v16

    sub-float v5, v19, v17

    :cond_1
    add-float v4, v4, v18

    add-float v5, v5, v19

    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v6, v18, v3

    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v7, v19, v3

    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v8, v18, v3

    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v9, v19, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v16, v18, v3

    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v17, v19, v3

    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v18, v18, v3

    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v19, v19, v3

    goto/16 :goto_2

    :cond_2
    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    goto :goto_3

    :sswitch_11
    move/from16 v4, v18

    move/from16 v5, v19

    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x73

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    :cond_3
    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v4, v3, v16

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v5, v3, v17

    :cond_4
    add-int/lit8 v3, v21, 0x0

    aget v6, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v7, p4, v3

    add-int/lit8 v3, v21, 0x2

    aget v8, p4, v3

    add-int/lit8 v3, v21, 0x3

    aget v9, p4, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v21, 0x0

    aget v16, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v17, p4, v3

    add-int/lit8 v3, v21, 0x2

    aget v18, p4, v3

    add-int/lit8 v3, v21, 0x3

    aget v19, p4, v3

    goto/16 :goto_2

    :cond_5
    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    goto :goto_4

    :sswitch_12
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v3, v3, v18

    add-int/lit8 v6, v21, 0x1

    aget v6, p4, v6

    add-float v6, v6, v19

    add-int/lit8 v7, v21, 0x2

    aget v7, p4, v7

    add-float v7, v7, v18

    add-int/lit8 v8, v21, 0x3

    aget v8, p4, v8

    add-float v8, v8, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v16, v18, v3

    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v17, v19, v3

    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v18, v18, v3

    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v19, v19, v3

    goto/16 :goto_2

    :sswitch_13
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v21, 0x1

    aget v6, p4, v6

    add-int/lit8 v7, v21, 0x2

    aget v7, p4, v7

    add-int/lit8 v8, v21, 0x3

    aget v8, p4, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-int/lit8 v3, v21, 0x0

    aget v16, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v17, p4, v3

    add-int/lit8 v3, v21, 0x2

    aget v18, p4, v3

    add-int/lit8 v3, v21, 0x3

    aget v19, p4, v3

    goto/16 :goto_2

    :sswitch_14
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x74

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    :cond_6
    :goto_5
    sub-float v4, v18, v16

    sub-float v5, v19, v17

    :cond_7
    add-float v3, v18, v4

    add-float v6, v19, v5

    add-int/lit8 v7, v21, 0x0

    aget v7, p4, v7

    add-float v7, v7, v18

    add-int/lit8 v8, v21, 0x1

    aget v8, p4, v8

    add-float v8, v8, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-float v16, v18, v4

    add-float v17, v19, v5

    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v19, v19, v3

    goto/16 :goto_2

    :cond_8
    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    goto :goto_5

    :sswitch_15
    move/from16 v4, v18

    move/from16 v5, v19

    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    const/16 v3, 0x74

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    :cond_9
    :goto_6
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v4, v3, v16

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v5, v3, v17

    :cond_a
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v21, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    move/from16 v16, v4

    move/from16 v17, v5

    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v19, p4, v3

    goto/16 :goto_2

    :cond_b
    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_a

    goto :goto_6

    :sswitch_16
    add-int/lit8 v3, v21, 0x5

    aget v3, p4, v3

    add-float v9, v3, v18

    add-int/lit8 v3, v21, 0x6

    aget v3, p4, v3

    add-float v10, v3, v19

    add-int/lit8 v3, v21, 0x0

    aget v11, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v12, p4, v3

    add-int/lit8 v3, v21, 0x2

    aget v13, p4, v3

    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_c

    const/4 v14, 0x1

    :goto_7
    add-int/lit8 v3, v21, 0x4

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_d

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v6, p0

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    add-int/lit8 v3, v21, 0x5

    aget v3, p4, v3

    add-float v18, v18, v3

    add-int/lit8 v3, v21, 0x6

    aget v3, p4, v3

    add-float v19, v19, v3

    move/from16 v16, v18

    move/from16 v17, v19

    goto/16 :goto_2

    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    goto :goto_8

    :sswitch_17
    add-int/lit8 v3, v21, 0x5

    aget v9, p4, v3

    add-int/lit8 v3, v21, 0x6

    aget v10, p4, v3

    add-int/lit8 v3, v21, 0x0

    aget v11, p4, v3

    add-int/lit8 v3, v21, 0x1

    aget v12, p4, v3

    add-int/lit8 v3, v21, 0x2

    aget v13, p4, v3

    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_e

    const/4 v14, 0x1

    :goto_9
    add-int/lit8 v3, v21, 0x4

    aget v3, p4, v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_f

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v6, p0

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    add-int/lit8 v3, v21, 0x5

    aget v18, p4, v3

    add-int/lit8 v3, v21, 0x6

    aget v19, p4, v3

    move/from16 v16, v18

    move/from16 v17, v19

    goto/16 :goto_2

    :cond_e
    const/4 v14, 0x0

    goto :goto_9

    :cond_f
    const/4 v15, 0x0

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    aput v18, p1, v3

    const/4 v3, 0x1

    aput v19, p1, v3

    const/4 v3, 0x2

    aput v16, p1, v3

    const/4 v3, 0x3

    aput v17, p1, v3

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method

.method private arcToBezier(DDDDDDDDD)V
    .locals 55

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v36

    move-wide/from16 v32, p15

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v46

    mul-double v4, p7, v50

    mul-double/2addr v4, v14

    sub-double v24, v2, v4

    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v46

    mul-double v4, p7, v18

    mul-double/2addr v4, v14

    add-double v26, v2, v4

    move/from16 v0, v36

    int-to-double v2, v0

    div-double v12, p17, v2

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, v36

    if-ge v9, v0, :cond_0

    add-double v34, v32, v12

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v2, p5, v18

    mul-double v2, v2, v16

    add-double v2, v2, p1

    mul-double v4, p7, v50

    mul-double v4, v4, v48

    sub-double v20, v2, v4

    mul-double v2, p5, v50

    mul-double v2, v2, v16

    add-double v2, v2, p3

    mul-double v4, p7, v18

    mul-double v4, v4, v48

    add-double v22, v2, v4

    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v48

    mul-double v4, p7, v50

    mul-double v4, v4, v16

    sub-double v28, v2, v4

    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v48

    mul-double v4, p7, v18

    mul-double v4, v4, v16

    add-double v30, v2, v4

    sub-double v2, v34, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v52

    sub-double v2, v34, v32

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v4, v4, v52

    mul-double v4, v4, v52

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v10, v2, v4

    mul-double v2, v10, v24

    add-double v38, p9, v2

    mul-double v2, v10, v26

    add-double v40, p11, v2

    mul-double v2, v10, v28

    sub-double v42, v20, v2

    mul-double v2, v10, v30

    sub-double v44, v22, v2

    move-wide/from16 v0, v38

    double-to-float v3, v0

    move-wide/from16 v0, v40

    double-to-float v4, v0

    move-wide/from16 v0, v42

    double-to-float v5, v0

    move-wide/from16 v0, v44

    double-to-float v6, v0

    move-wide/from16 v0, v20

    double-to-float v7, v0

    move-wide/from16 v0, v22

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    move-wide/from16 v32, v34

    move-wide/from16 p9, v20

    move-wide/from16 p11, v22

    move-wide/from16 v24, v28

    move-wide/from16 v26, v30

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private createNodesFromPathData(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x6d

    const/4 v6, 0x4

    new-array v0, v6, [F

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->nextStart(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v0, v2, v6, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_1
    move v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int v6, v1, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    new-array v7, v8, [F

    invoke-direct {p0, v0, v2, v6, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    :cond_3
    return-void
.end method

.method private drawArc(FFFFFFFZZ)V
    .locals 58

    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    move/from16 v0, p1

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v46, v2, v8

    move/from16 v0, p1

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v52, v2, v8

    move/from16 v0, p3

    float-to-double v2, v0

    mul-double v2, v2, v24

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v42

    add-double/2addr v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    div-double v48, v2, v8

    move/from16 v0, p3

    neg-float v2, v0

    float-to-double v2, v2

    mul-double v2, v2, v42

    move/from16 v0, p4

    float-to-double v8, v0

    mul-double v8, v8, v24

    add-double/2addr v2, v8

    move/from16 v0, p6

    float-to-double v8, v0

    div-double v54, v2, v8

    sub-double v30, v46, v48

    sub-double v32, v52, v54

    add-double v2, v46, v48

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v50, v2, v8

    add-double v2, v52, v54

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v56, v2, v8

    mul-double v2, v30, v30

    mul-double v8, v32, v32

    add-double v28, v2, v8

    const-wide/16 v2, 0x0

    cmpl-double v2, v28, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v28

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    sub-double v26, v2, v8

    const-wide/16 v2, 0x0

    cmpg-double v2, v26, v2

    if-gez v2, :cond_1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v8, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v8

    double-to-float v0, v2

    move/from16 v22, v0

    mul-float v7, p5, v22

    mul-float v8, p6, v22

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    return-void

    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    mul-double v38, v36, v30

    mul-double v40, v36, v32

    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    sub-double v4, v50, v40

    add-double v6, v56, v38

    :goto_0
    sub-double v2, v52, v6

    sub-double v8, v46, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    sub-double v2, v54, v6

    sub-double v8, v48, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    sub-double v20, v34, v18

    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    move/from16 v0, p9

    if-eq v0, v2, :cond_2

    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_5

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v2

    :cond_2
    :goto_2
    move/from16 v0, p5

    float-to-double v2, v0

    mul-double/2addr v4, v2

    move/from16 v0, p6

    float-to-double v2, v0

    mul-double/2addr v6, v2

    move-wide/from16 v44, v4

    mul-double v2, v4, v24

    mul-double v8, v6, v42

    sub-double v4, v2, v8

    mul-double v2, v44, v42

    mul-double v8, v6, v24

    add-double v6, v2, v8

    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v21}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcToBezier(DDDDDDDDD)V

    return-void

    :cond_3
    add-double v4, v50, v40

    sub-double v6, v56, v38

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v2

    goto :goto_2
.end method

.method private drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V
    .locals 7

    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v6, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V
    .locals 4

    move v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    :cond_1
    iput v1, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    return-void

    :sswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_1
    .end sparse-switch
.end method

.method private getFloats(Ljava/lang/String;)[F
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-eq v8, v9, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_1

    :cond_0
    new-array v8, v10, [F

    return-object v8

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;-><init>(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v0

    :goto_0
    if-ge v6, v7, :cond_3

    invoke-direct {p0, p1, v6, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    iget v3, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    if-ge v6, v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    :goto_1
    iget-boolean v8, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v8, :cond_2

    move v6, v3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v2

    throw v2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private nextStart(Ljava/lang/String;I)I
    .locals 3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_1

    :cond_0
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method


# virtual methods
.method public arcTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/Path;

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 3

    const/16 v1, 0x1f

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->save(I)I

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->alpha:F

    mul-float v0, p5, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->setShadowLayer()V

    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleFill:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawPath()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v16

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v17

    packed-switch v17, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unsupported command type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v7

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    add-float v4, v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    add-float v5, v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v14

    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v8 .. v14}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcTo(FFFFFF)V

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    goto :goto_1

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    :goto_0
    if-ge v10, v11, :cond_1f

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "name"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v15, "strokeWidth"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    new-instance v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v9}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>()V

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iput v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    iget v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    iget v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const v16, 0x3e99999a    # 0.3f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_2

    const v15, 0x3e99999a    # 0.3f

    iput v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v15, "strokeOpacity"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x23

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    :cond_5
    if-nez v5, :cond_6

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v13, v15

    iget v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    const v16, 0xffffff

    and-int v15, v15, v16

    shl-int/lit8 v16, v13, 0x18

    or-int v15, v15, v16

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v15, "strokeColor"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x23

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    :cond_9
    if-nez v5, :cond_a

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    :goto_2
    iget v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    iget v0, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    move/from16 v16, v0

    const v17, 0xffffff

    and-int v16, v16, v17

    move/from16 v0, v16

    not-int v0, v0

    move/from16 v16, v0

    or-int v15, v15, v16

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_1

    :cond_b
    const/high16 v15, -0x10000

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto :goto_2

    :cond_c
    const-string/jumbo v15, "fillColor"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    :cond_e
    if-nez v4, :cond_f

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string/jumbo v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_1

    :cond_10
    const/high16 v15, -0x10000

    iput v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v15, "fillOpacity"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    :cond_13
    if-nez v4, :cond_14

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v13, v15

    iget v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    const v16, 0xffffff

    and-int v15, v15, v16

    shl-int/lit8 v16, v13, 0x18

    or-int v15, v15, v16

    iput v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v15, "pathData"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->createNodesFromPathData(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v15, "trimPathStart"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "trimPathEnd"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "trimPathOffset"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "strokeLineCap"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>()V

    const-string/jumbo v15, "butt"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v15, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v15, "round"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_ROUND:B

    iput-byte v15, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_3

    :cond_19
    const-string/jumbo v15, "square"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_SQUARE:B

    iput-byte v15, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_3

    :cond_1a
    const-string/jumbo v15, "strokeLineJoin"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    new-instance v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v7}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>()V

    const-string/jumbo v15, "miter"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v15, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    :cond_1b
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v15, "round"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    iput-byte v15, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_4

    :cond_1d
    const-string/jumbo v15, "bevel"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    iput-byte v15, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_4

    :cond_1e
    const-string/jumbo v15, "strokeMiterLimit"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    new-instance v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>()V

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iput v15, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1f
    return-void
.end method

.method public getSPRSize()I
    .locals 4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, 0x4

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :pswitch_2
    add-int/lit8 v2, v2, 0x18

    goto :goto_0

    :pswitch_3
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    :pswitch_4
    add-int/lit8 v2, v2, 0x18

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v3

    add-int/2addr v3, v2

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :pswitch_2
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :pswitch_3
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :pswitch_4
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
