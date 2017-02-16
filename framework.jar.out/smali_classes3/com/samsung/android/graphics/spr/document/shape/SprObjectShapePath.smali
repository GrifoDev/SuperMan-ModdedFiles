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

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 65
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 2
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 65
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 65
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 92
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 88
    return-void
.end method

.method private addCommand([FCC[F)V
    .locals 22
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .prologue
    .line 664
    const/16 v20, 0x2

    .line 665
    .local v20, "incr":I
    const/4 v3, 0x0

    aget v18, p1, v3

    .line 666
    .local v18, "currentX":F
    const/4 v3, 0x1

    aget v19, p1, v3

    .line 667
    .local v19, "currentY":F
    const/4 v3, 0x2

    aget v16, p1, v3

    .line 668
    .local v16, "ctrlPointX":F
    const/4 v3, 0x3

    aget v17, p1, v3

    .line 672
    .local v17, "ctrlPointY":F
    sparse-switch p3, :sswitch_data_0

    .line 706
    :goto_0
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_1
    move-object/from16 v0, p4

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_10

    .line 707
    sparse-switch p3, :sswitch_data_1

    .line 850
    :goto_2
    move/from16 p2, p3

    .line 706
    add-int v21, v21, v20

    goto :goto_1

    .line 675
    .end local v21    # "k":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    .line 676
    return-void

    .line 683
    :sswitch_1
    const/16 v20, 0x2

    .line 684
    goto :goto_0

    .line 689
    :sswitch_2
    const/16 v20, 0x1

    .line 690
    goto :goto_0

    .line 693
    :sswitch_3
    const/16 v20, 0x6

    .line 694
    goto :goto_0

    .line 699
    :sswitch_4
    const/16 v20, 0x4

    .line 700
    goto :goto_0

    .line 703
    :sswitch_5
    const/16 v20, 0x7

    .line 704
    goto :goto_0

    .line 709
    .restart local v21    # "k":I
    :sswitch_6
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 710
    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 712
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto :goto_2

    .line 715
    :sswitch_7
    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    .line 716
    add-int/lit8 v3, v21, 0x1

    aget v19, p4, v3

    .line 718
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto :goto_2

    .line 721
    :sswitch_8
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 722
    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 723
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_2

    .line 726
    :sswitch_9
    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    .line 727
    add-int/lit8 v3, v21, 0x1

    aget v19, p4, v3

    .line 728
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_2

    .line 732
    :sswitch_a
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 733
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_2

    .line 736
    :sswitch_b
    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    .line 737
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_2

    .line 740
    :sswitch_c
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 741
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_2

    .line 744
    :sswitch_d
    add-int/lit8 v3, v21, 0x0

    aget v19, p4, v3

    .line 745
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_2

    .line 748
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

    .line 749
    add-int/lit8 v3, v21, 0x4

    aget v3, p4, v3

    add-float v8, v18, v3

    add-int/lit8 v3, v21, 0x5

    aget v3, p4, v3

    add-float v9, v19, v3

    move-object/from16 v3, p0

    .line 748
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    .line 750
    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v16, v18, v3

    .line 751
    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v17, v19, v3

    .line 752
    add-int/lit8 v3, v21, 0x4

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 753
    add-int/lit8 v3, v21, 0x5

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 755
    goto/16 :goto_2

    .line 757
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

    .line 758
    add-int/lit8 v3, v21, 0x4

    aget v18, p4, v3

    .line 759
    add-int/lit8 v3, v21, 0x5

    aget v19, p4, v3

    .line 760
    add-int/lit8 v3, v21, 0x2

    aget v16, p4, v3

    .line 761
    add-int/lit8 v3, v21, 0x3

    aget v17, p4, v3

    goto/16 :goto_2

    .line 764
    :sswitch_10
    const/4 v4, 0x0

    .line 765
    .local v4, "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    .line 766
    .local v5, "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x73

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 767
    :cond_0
    :goto_3
    sub-float v4, v18, v16

    .line 768
    sub-float v5, v19, v17

    .line 770
    :cond_1
    add-float v4, v4, v18

    add-float v5, v5, v19

    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    add-float v6, v18, v3

    .line 771
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

    .line 770
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    .line 773
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v16, v18, v3

    .line 774
    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v17, v19, v3

    .line 775
    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 776
    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 777
    goto/16 :goto_2

    .line 766
    .restart local v4    # "reflectiveCtrlPointX":F
    .restart local v5    # "reflectiveCtrlPointY":F
    :cond_2
    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    goto :goto_3

    .line 779
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_11
    move/from16 v4, v18

    .line 780
    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v19

    .line 781
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x63

    move/from16 v0, p2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x73

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 782
    :cond_3
    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v4, v3, v16

    .line 783
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v5, v3, v17

    .line 785
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

    .line 786
    add-int/lit8 v3, v21, 0x0

    aget v16, p4, v3

    .line 787
    add-int/lit8 v3, v21, 0x1

    aget v17, p4, v3

    .line 788
    add-int/lit8 v3, v21, 0x2

    aget v18, p4, v3

    .line 789
    add-int/lit8 v3, v21, 0x3

    aget v19, p4, v3

    goto/16 :goto_2

    .line 781
    :cond_5
    const/16 v3, 0x43

    move/from16 v0, p2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x53

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    goto :goto_4

    .line 792
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
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

    .line 793
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v16, v18, v3

    .line 794
    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v17, v19, v3

    .line 795
    add-int/lit8 v3, v21, 0x2

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 796
    add-int/lit8 v3, v21, 0x3

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 797
    goto/16 :goto_2

    .line 799
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

    .line 800
    add-int/lit8 v3, v21, 0x0

    aget v16, p4, v3

    .line 801
    add-int/lit8 v3, v21, 0x1

    aget v17, p4, v3

    .line 802
    add-int/lit8 v3, v21, 0x2

    aget v18, p4, v3

    .line 803
    add-int/lit8 v3, v21, 0x3

    aget v19, p4, v3

    goto/16 :goto_2

    .line 806
    :sswitch_14
    const/4 v4, 0x0

    .line 807
    .restart local v4    # "reflectiveCtrlPointX":F
    const/4 v5, 0x0

    .line 808
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x74

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    .line 809
    :cond_6
    :goto_5
    sub-float v4, v18, v16

    .line 810
    sub-float v5, v19, v17

    .line 812
    :cond_7
    add-float v3, v18, v4

    add-float v6, v19, v5

    add-int/lit8 v7, v21, 0x0

    aget v7, p4, v7

    add-float v7, v7, v18

    .line 813
    add-int/lit8 v8, v21, 0x1

    aget v8, p4, v8

    add-float v8, v8, v19

    .line 812
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    .line 814
    add-float v16, v18, v4

    .line 815
    add-float v17, v19, v5

    .line 816
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 817
    add-int/lit8 v3, v21, 0x1

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 818
    goto/16 :goto_2

    .line 808
    :cond_8
    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_6

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    goto :goto_5

    .line 820
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
    :sswitch_15
    move/from16 v4, v18

    .line 821
    .restart local v4    # "reflectiveCtrlPointX":F
    move/from16 v5, v19

    .line 822
    .restart local v5    # "reflectiveCtrlPointY":F
    const/16 v3, 0x71

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    const/16 v3, 0x74

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 823
    :cond_9
    :goto_6
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v4, v3, v16

    .line 824
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v5, v3, v17

    .line 826
    :cond_a
    add-int/lit8 v3, v21, 0x0

    aget v3, p4, v3

    add-int/lit8 v6, v21, 0x1

    aget v6, p4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    .line 827
    move/from16 v16, v4

    .line 828
    move/from16 v17, v5

    .line 829
    add-int/lit8 v3, v21, 0x0

    aget v18, p4, v3

    .line 830
    add-int/lit8 v3, v21, 0x1

    aget v19, p4, v3

    goto/16 :goto_2

    .line 822
    :cond_b
    const/16 v3, 0x51

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    const/16 v3, 0x54

    move/from16 v0, p2

    if-ne v0, v3, :cond_a

    goto :goto_6

    .line 834
    .end local v4    # "reflectiveCtrlPointX":F
    .end local v5    # "reflectiveCtrlPointY":F
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

    .line 835
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

    .line 834
    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    .line 836
    add-int/lit8 v3, v21, 0x5

    aget v3, p4, v3

    add-float v18, v18, v3

    .line 837
    add-int/lit8 v3, v21, 0x6

    aget v3, p4, v3

    add-float v19, v19, v3

    .line 838
    move/from16 v16, v18

    .line 839
    move/from16 v17, v19

    .line 840
    goto/16 :goto_2

    .line 835
    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    :cond_d
    const/4 v15, 0x0

    goto :goto_8

    .line 842
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

    .line 843
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

    .line 842
    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    .line 844
    add-int/lit8 v3, v21, 0x5

    aget v18, p4, v3

    .line 845
    add-int/lit8 v3, v21, 0x6

    aget v19, p4, v3

    .line 846
    move/from16 v16, v18

    .line 847
    move/from16 v17, v19

    .line 848
    goto/16 :goto_2

    .line 843
    :cond_e
    const/4 v14, 0x0

    goto :goto_9

    :cond_f
    const/4 v15, 0x0

    goto :goto_a

    .line 852
    :cond_10
    const/4 v3, 0x0

    aput v18, p1, v3

    .line 853
    const/4 v3, 0x1

    aput v19, p1, v3

    .line 854
    const/4 v3, 0x2

    aput v16, p1, v3

    .line 855
    const/4 v3, 0x3

    aput v17, p1, v3

    .line 662
    return-void

    .line 672
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

    .line 707
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
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .prologue
    .line 954
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v36

    .line 956
    .local v36, "numSegments":I
    move-wide/from16 v32, p15

    .line 957
    .local v32, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 958
    .local v18, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    .line 959
    .local v50, "sinTheta":D
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 960
    .local v14, "cosEta1":D
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    .line 961
    .local v46, "sinEta1":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v46

    mul-double v4, p7, v50

    mul-double/2addr v4, v14

    sub-double v24, v2, v4

    .line 962
    .local v24, "ep1x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v46

    mul-double v4, p7, v18

    mul-double/2addr v4, v14

    add-double v26, v2, v4

    .line 964
    .local v26, "ep1y":D
    move/from16 v0, v36

    int-to-double v2, v0

    div-double v12, p17, v2

    .line 965
    .local v12, "anglePerSegment":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v36

    if-ge v9, v0, :cond_0

    .line 966
    add-double v34, v32, v12

    .line 967
    .local v34, "eta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    .line 968
    .local v48, "sinEta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 969
    .local v16, "cosEta2":D
    mul-double v2, p5, v18

    mul-double v2, v2, v16

    add-double v2, v2, p1

    mul-double v4, p7, v50

    mul-double v4, v4, v48

    sub-double v20, v2, v4

    .line 970
    .local v20, "e2x":D
    mul-double v2, p5, v50

    mul-double v2, v2, v16

    add-double v2, v2, p3

    mul-double v4, p7, v18

    mul-double v4, v4, v48

    add-double v22, v2, v4

    .line 971
    .local v22, "e2y":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v48

    mul-double v4, p7, v50

    mul-double v4, v4, v16

    sub-double v28, v2, v4

    .line 972
    .local v28, "ep2x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v48

    mul-double v4, p7, v18

    mul-double v4, v4, v16

    add-double v30, v2, v4

    .line 973
    .local v30, "ep2y":D
    sub-double v2, v34, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v52

    .line 974
    .local v52, "tanDiff2":D
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

    .line 975
    .local v10, "alpha":D
    mul-double v2, v10, v24

    add-double v38, p9, v2

    .line 976
    .local v38, "q1x":D
    mul-double v2, v10, v26

    add-double v40, p11, v2

    .line 977
    .local v40, "q1y":D
    mul-double v2, v10, v28

    sub-double v42, v20, v2

    .line 978
    .local v42, "q2x":D
    mul-double v2, v10, v30

    sub-double v44, v22, v2

    .line 980
    .local v44, "q2y":D
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

    .line 981
    move-wide/from16 v32, v34

    .line 982
    move-wide/from16 p9, v20

    .line 983
    move-wide/from16 p11, v22

    .line 984
    move-wide/from16 v24, v28

    .line 985
    move-wide/from16 v26, v30

    .line 965
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 949
    .end local v10    # "alpha":D
    .end local v16    # "cosEta2":D
    .end local v20    # "e2x":D
    .end local v22    # "e2y":D
    .end local v28    # "ep2x":D
    .end local v30    # "ep2y":D
    .end local v34    # "eta2":D
    .end local v38    # "q1x":D
    .end local v40    # "q1y":D
    .end local v42    # "q2x":D
    .end local v44    # "q2y":D
    .end local v48    # "sinEta2":D
    .end local v52    # "tanDiff2":D
    :cond_0
    return-void
.end method

.method private createNodesFromPathData(Ljava/lang/String;)V
    .locals 9
    .param p1, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 532
    if-nez p1, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    const/4 v4, 0x0

    .line 536
    .local v4, "start":I
    const/4 v1, 0x1

    .line 538
    .local v1, "end":I
    const/16 v2, 0x6d

    .line 539
    .local v2, "previousCmd":C
    const/4 v6, 0x4

    new-array v0, v6, [F

    .line 541
    .end local v2    # "previousCmd":C
    .local v0, "current":[F
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 542
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->nextStart(Ljava/lang/String;I)I

    move-result v1

    .line 543
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 545
    invoke-direct {p0, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 546
    .local v5, "val":[F
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v0, v2, v6, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    .line 547
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 550
    .end local v5    # "val":[F
    :cond_1
    move v4, v1

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    sub-int v6, v1, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 554
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    new-array v7, v8, [F

    invoke-direct {p0, v0, v2, v6, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    .line 531
    :cond_3
    return-void
.end method

.method private drawArc(FFFFFFFZZ)V
    .locals 58
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .prologue
    .line 862
    move/from16 v0, p7

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 864
    .local v16, "thetaD":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 865
    .local v24, "cosTheta":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    .line 868
    .local v42, "sinTheta":D
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

    .line 869
    .local v46, "x0p":D
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

    .line 870
    .local v52, "y0p":D
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

    .line 871
    .local v48, "x1p":D
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

    .line 874
    .local v54, "y1p":D
    sub-double v30, v46, v48

    .line 875
    .local v30, "dx":D
    sub-double v32, v52, v54

    .line 876
    .local v32, "dy":D
    add-double v2, v46, v48

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v50, v2, v8

    .line 877
    .local v50, "xm":D
    add-double v2, v52, v54

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v56, v2, v8

    .line 879
    .local v56, "ym":D
    mul-double v2, v30, v30

    mul-double v8, v32, v32

    add-double v28, v2, v8

    .line 880
    .local v28, "dsq":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v28, v2

    if-nez v2, :cond_0

    .line 881
    return-void

    .line 883
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v28

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    sub-double v26, v2, v8

    .line 884
    .local v26, "disc":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v26, v2

    if-gez v2, :cond_1

    .line 885
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v8, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v2, v8

    double-to-float v0, v2

    move/from16 v22, v0

    .line 886
    .local v22, "adjust":F
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

    .line 887
    return-void

    .line 889
    .end local v22    # "adjust":F
    :cond_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 890
    .local v36, "s":D
    mul-double v38, v36, v30

    .line 891
    .local v38, "sdx":D
    mul-double v40, v36, v32

    .line 894
    .local v40, "sdy":D
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    .line 895
    sub-double v4, v50, v40

    .line 896
    .local v4, "cx":D
    add-double v6, v56, v38

    .line 902
    .local v6, "cy":D
    :goto_0
    sub-double v2, v52, v6

    sub-double v8, v46, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 904
    .local v18, "eta0":D
    sub-double v2, v54, v6

    sub-double v8, v48, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    .line 906
    .local v34, "eta1":D
    sub-double v20, v34, v18

    .line 907
    .local v20, "sweep":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    move/from16 v0, p9

    if-eq v0, v2, :cond_2

    .line 908
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_5

    .line 909
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v2

    .line 915
    :cond_2
    :goto_2
    move/from16 v0, p5

    float-to-double v2, v0

    mul-double/2addr v4, v2

    .line 916
    move/from16 v0, p6

    float-to-double v2, v0

    mul-double/2addr v6, v2

    .line 917
    move-wide/from16 v44, v4

    .line 918
    .local v44, "tcx":D
    mul-double v2, v4, v24

    mul-double v8, v6, v42

    sub-double v4, v2, v8

    .line 919
    mul-double v2, v44, v42

    mul-double v8, v6, v24

    add-double v6, v2, v8

    .line 921
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

    .line 859
    return-void

    .line 898
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v18    # "eta0":D
    .end local v20    # "sweep":D
    .end local v34    # "eta1":D
    .end local v44    # "tcx":D
    :cond_3
    add-double v4, v50, v40

    .line 899
    .restart local v4    # "cx":D
    sub-double v6, v56, v38

    .restart local v6    # "cy":D
    goto :goto_0

    .line 907
    .restart local v18    # "eta0":D
    .restart local v20    # "sweep":D
    .restart local v34    # "eta1":D
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 911
    :cond_5
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v2

    goto :goto_2
.end method

.method private drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V
    .locals 7
    .param p1, "p"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    .prologue
    .line 205
    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 215
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

    .line 219
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 223
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

    .line 227
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 205
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
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "result"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    .prologue
    .line 636
    move v1, p2

    .line 637
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .line 638
    .local v2, "foundSeparator":Z
    const/4 v3, 0x0

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    .line 639
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 640
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 641
    .local v0, "currentChar":C
    sparse-switch v0, :sswitch_data_0

    .line 653
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 659
    .end local v0    # "currentChar":C
    :cond_1
    iput v1, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    .line 634
    return-void

    .line 644
    .restart local v0    # "currentChar":C
    :sswitch_0
    const/4 v2, 0x1

    .line 645
    goto :goto_1

    .line 647
    :sswitch_1
    if-eq v1, p2, :cond_0

    .line 648
    const/4 v2, 0x1

    .line 649
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    goto :goto_1

    .line 639
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
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
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 587
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-eq v8, v9, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_1

    .line 588
    :cond_0
    new-array v8, v10, [F

    return-object v8

    .line 591
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 592
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 593
    .local v0, "count":I
    const/4 v6, 0x1

    .line 594
    .local v6, "startPosition":I
    const/4 v3, 0x0

    .line 596
    .local v3, "endPosition":I
    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;-><init>(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    .line 597
    .local v4, "result":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 602
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v6, v7, :cond_3

    .line 603
    invoke-direct {p0, p1, v6, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    .line 604
    iget v3, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    .line 606
    if-ge v6, v3, :cond_4

    .line 607
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 610
    :goto_1
    iget-boolean v8, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v8, :cond_2

    .line 612
    move v6, v3

    :goto_2
    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 614
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    add-int/lit8 v6, v3, 0x1

    goto :goto_2

    .line 617
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_3
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 618
    .end local v1    # "count":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/NumberFormatException;
    throw v2

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v3    # "endPosition":I
    .restart local v4    # "result":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :cond_4
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method private nextStart(Ljava/lang/String;I)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "end"    # I

    .prologue
    .line 561
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 563
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_1

    .line 564
    :cond_0
    return p2

    .line 566
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "c":C
    :cond_2
    return p2
.end method


# virtual methods
.method public arcTo(FFFFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .prologue
    .line 166
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 167
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 168
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 169
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 170
    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    .line 171
    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    .line 172
    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    .line 173
    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    .line 175
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 165
    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    .line 505
    .local v0, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 506
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    .line 508
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "path$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    .line 509
    .local v1, "path":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    .end local v1    # "path":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    .end local v2    # "path$iterator":Ljava/util/Iterator;
    :cond_0
    new-instance v3, Landroid/graphics/Path;

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    .line 515
    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 184
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 186
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 182
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x"    # F
    .param p6, "y"    # F

    .prologue
    .line 149
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 150
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 151
    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 152
    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 153
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    .line 154
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    .line 155
    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    .line 156
    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    .line 158
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 148
    return-void
.end method

.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 3
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .prologue
    .line 991
    const/16 v1, 0x1f

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 993
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    mul-float v0, p5, v1

    .line 995
    .local v0, "curAlpha":F
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 996
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->setShadowLayer()V

    .line 1000
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v1, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1003
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1006
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clearShadowLayer()V

    .line 1008
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 990
    return-void
.end method

.method public drawPath()V
    .locals 3

    .prologue
    .line 194
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 199
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    .line 200
    .local v0, "p":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    goto :goto_0

    .line 193
    .end local v0    # "p":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
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

    .prologue
    .line 100
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    :cond_0
    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 18
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v2, 0x0

    .local v2, "x1":F
    const/4 v3, 0x0

    .local v3, "y1":F
    const/4 v4, 0x0

    .local v4, "x2":F
    const/4 v5, 0x0

    .line 235
    .local v5, "y2":F
    const/4 v6, 0x0

    .local v6, "lastX":F
    const/4 v7, 0x0

    .line 236
    .local v7, "lastY":F
    const/4 v13, 0x0

    .local v13, "startAngle":F
    const/4 v14, 0x0

    .line 238
    .local v14, "endAngle":F
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v16

    .local v16, "n":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v17

    .line 240
    .local v17, "type":B
    packed-switch v17, :pswitch_data_0

    .line 289
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

    .line 242
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    .line 238
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 248
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_1

    .line 254
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v6

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v7

    move-object/from16 v1, p0

    .line 261
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    goto :goto_1

    .line 265
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v6

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v7

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    goto :goto_1

    .line 275
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    add-float v4, v1, v2

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    add-float v5, v1, v3

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v13

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v14

    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    .line 282
    invoke-virtual/range {v8 .. v14}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcTo(FFFFFF)V

    goto :goto_1

    .line 286
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    goto :goto_1

    .line 293
    .end local v17    # "type":B
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 233
    return-void

    .line 240
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
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .local v11, "n":I
    :goto_0
    if-ge v10, v11, :cond_1f

    .line 385
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    .line 386
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 388
    .local v14, "value":Ljava/lang/String;
    const-string/jumbo v15, "name"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 384
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const-string/jumbo v15, "strokeWidth"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 391
    new-instance v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v9}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>()V

    .line 392
    .local v9, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iput v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 393
    iget v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    iget v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const v16, 0x3e99999a    # 0.3f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_2

    .line 394
    const v15, 0x3e99999a    # 0.3f

    iput v15, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    .line 396
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v9    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;
    :cond_3
    const-string/jumbo v15, "strokeOpacity"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 398
    const/4 v5, 0x0

    .line 399
    .local v5, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "attr$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 400
    .local v2, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x23

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object v5, v2

    .line 401
    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .line 405
    .end local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .end local v5    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :cond_5
    if-nez v5, :cond_6

    .line 406
    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    .line 407
    .local v5, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v5    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :cond_6
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v13, v15

    .line 411
    .local v13, "opacity":I
    iget v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    const v16, 0xffffff

    and-int v15, v15, v16

    shl-int/lit8 v16, v13, 0x18

    or-int v15, v15, v16

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    goto/16 :goto_1

    .line 412
    .end local v3    # "attr$iterator":Ljava/util/Iterator;
    .end local v13    # "opacity":I
    :cond_7
    const-string/jumbo v15, "strokeColor"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 413
    const/4 v5, 0x0

    .line 414
    .local v5, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "attr$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 415
    .restart local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x23

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object v5, v2

    .line 416
    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .line 420
    .end local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .end local v5    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :cond_9
    if-nez v5, :cond_a

    .line 421
    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    .line 422
    .local v5, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v5    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :cond_a
    const-string/jumbo v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 426
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 431
    :goto_2
    iget v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    iget v0, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    move/from16 v16, v0

    const v17, 0xffffff

    and-int v16, v16, v17

    move/from16 v0, v16

    not-int v0, v0

    move/from16 v16, v0

    or-int v15, v15, v16

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    goto/16 :goto_1

    .line 428
    :cond_b
    const/high16 v15, -0x10000

    iput v15, v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    goto :goto_2

    .line 432
    .end local v3    # "attr$iterator":Ljava/util/Iterator;
    :cond_c
    const-string/jumbo v15, "fillColor"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 433
    const/4 v4, 0x0

    .line 434
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "attr$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 435
    .restart local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    move-object v4, v2

    .line 436
    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 440
    .end local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :cond_e
    if-nez v4, :cond_f

    .line 441
    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    .line 442
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :cond_f
    const-string/jumbo v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 446
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    iput v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    goto/16 :goto_1

    .line 448
    :cond_10
    const/high16 v15, -0x10000

    iput v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    goto/16 :goto_1

    .line 450
    .end local v3    # "attr$iterator":Ljava/util/Iterator;
    :cond_11
    const-string/jumbo v15, "fillOpacity"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 451
    const/4 v4, 0x0

    .line 452
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "attr$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 453
    .restart local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v15, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    move-object v4, v2

    .line 454
    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 458
    .end local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :cond_13
    if-nez v4, :cond_14

    .line 459
    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    .line 460
    .local v4, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v4    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :cond_14
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    float-to-int v13, v15

    .line 464
    .restart local v13    # "opacity":I
    iget v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    const v16, 0xffffff

    and-int v15, v15, v16

    shl-int/lit8 v16, v13, 0x18

    or-int v15, v15, v16

    iput v15, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    goto/16 :goto_1

    .line 465
    .end local v3    # "attr$iterator":Ljava/util/Iterator;
    .end local v13    # "opacity":I
    :cond_15
    const-string/jumbo v15, "pathData"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 466
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->createNodesFromPathData(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 467
    :cond_16
    const-string/jumbo v15, "trimPathStart"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 469
    const-string/jumbo v15, "trimPathEnd"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 471
    const-string/jumbo v15, "trimPathOffset"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 473
    const-string/jumbo v15, "strokeLineCap"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 474
    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>()V

    .line 475
    .local v6, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;
    const-string/jumbo v15, "butt"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 476
    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v15, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    .line 482
    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 477
    :cond_18
    const-string/jumbo v15, "round"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 478
    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_ROUND:B

    iput-byte v15, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_3

    .line 479
    :cond_19
    const-string/jumbo v15, "square"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 480
    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_SQUARE:B

    iput-byte v15, v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_3

    .line 483
    .end local v6    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;
    :cond_1a
    const-string/jumbo v15, "strokeLineJoin"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 484
    new-instance v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v7}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>()V

    .line 485
    .local v7, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;
    const-string/jumbo v15, "miter"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 486
    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v15, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    .line 492
    :cond_1b
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 487
    :cond_1c
    const-string/jumbo v15, "round"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 488
    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    iput-byte v15, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_4

    .line 489
    :cond_1d
    const-string/jumbo v15, "bevel"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 490
    sget-byte v15, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    iput-byte v15, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_4

    .line 493
    .end local v7    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;
    :cond_1e
    const-string/jumbo v15, "strokeMiterLimit"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 494
    new-instance v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v8}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>()V

    .line 495
    .local v8, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iput v15, v8, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    .line 496
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 383
    .end local v8    # "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public getSPRSize()I
    .locals 4

    .prologue
    .line 348
    const/4 v2, 0x4

    .line 350
    .local v2, "size":I
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 351
    return v2

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, 0x4

    .line 356
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pathInfo$iterator":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    .line 357
    .local v0, "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    iget-byte v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_1
    add-int/lit8 v2, v2, 0x8

    .line 361
    goto :goto_0

    .line 364
    :pswitch_2
    add-int/lit8 v2, v2, 0x18

    .line 365
    goto :goto_0

    .line 368
    :pswitch_3
    add-int/lit8 v2, v2, 0x10

    .line 369
    goto :goto_0

    .line 372
    :pswitch_4
    add-int/lit8 v2, v2, 0x18

    .line 373
    goto :goto_0

    .line 380
    .end local v0    # "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v3

    add-int/2addr v3, v2

    return v3

    .line 357
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

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    return v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 121
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 122
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 123
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 124
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 126
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 120
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 108
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 109
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 110
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 111
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 113
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 107
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 134
    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    .line 135
    .local v0, "newPath":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    .line 136
    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    .line 137
    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    .line 138
    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    .line 139
    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    .line 141
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    .line 133
    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 299
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 300
    return-void

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pathInfo$iterator":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    .line 305
    .local v0, "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    iget-byte v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 306
    iget-byte v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 309
    :pswitch_1
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 310
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 315
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 316
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 317
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 318
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 319
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 323
    :pswitch_3
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 324
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 325
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 326
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 330
    :pswitch_4
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 331
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 332
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 333
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 334
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 335
    iget v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0

    .line 343
    .end local v0    # "pathInfo":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 297
    return-void

    .line 306
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
