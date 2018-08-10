.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAllowMbOverride:Z

.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .locals 6

    const-string/jumbo v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    const-string/jumbo v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const-string/jumbo v3, "blockWidth must be a power of two"

    invoke-static {p1, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    const-string/jumbo v3, "blockHeight must be a power of two"

    invoke-static {p2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v3, v2, v1

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v3, v4

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v0, v3, v4

    if-eq v0, v6, :cond_0

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v2, v5

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v2, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    :cond_0
    mul-int v3, v2, v1

    div-int/2addr v3, p1

    div-int v0, v3, p2

    if-eq v0, v6, :cond_1

    invoke-static {p3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    int-to-long v4, v0

    invoke-static {p4, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    div-int v3, v1, p2

    div-int v4, v2, p1

    invoke-static {p5, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    :cond_1
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v3, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v3, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iput v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    return-void
.end method

.method private applyLevelLimits()V
    .locals 59

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v52

    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/16 v49, 0x18c

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v58, 0x1

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_0

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_1
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_1

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    :goto_2
    if-eqz v58, :cond_0

    and-int/lit8 v47, v47, -0x5

    :cond_0
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v49

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :sswitch_0
    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    const/16 v36, 0x18c

    goto :goto_1

    :sswitch_1
    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x80

    const/16 v36, 0x18c

    goto :goto_1

    :sswitch_2
    const/16 v42, 0xbb8

    const/16 v40, 0x18c

    const/16 v34, 0xc0

    const/16 v36, 0x384

    goto :goto_1

    :sswitch_3
    const/16 v42, 0x1770

    const/16 v40, 0x18c

    const/16 v34, 0x180

    const/16 v36, 0x948

    goto/16 :goto_1

    :sswitch_4
    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x300

    const/16 v36, 0x948

    goto/16 :goto_1

    :sswitch_5
    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x7d0

    const/16 v36, 0x948

    goto/16 :goto_1

    :sswitch_6
    const/16 v42, 0x4d58

    const/16 v40, 0x318

    const/16 v34, 0xfa0

    const/16 v36, 0x1290

    goto/16 :goto_1

    :sswitch_7
    const/16 v42, 0x4f1a

    const/16 v40, 0x654

    const/16 v34, 0xfa0

    const/16 v36, 0x1fa4

    goto/16 :goto_1

    :sswitch_8
    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x2710

    const/16 v36, 0x1fa4

    goto/16 :goto_1

    :sswitch_9
    const v42, 0x1a5e0

    const/16 v40, 0xe10

    const/16 v34, 0x36b0

    const/16 v36, 0x4650

    goto/16 :goto_1

    :sswitch_a
    const v42, 0x34bc0

    const/16 v40, 0x1400

    const/16 v34, 0x4e20

    const/16 v36, 0x5000

    goto/16 :goto_1

    :sswitch_b
    const v42, 0x3c000

    const/16 v40, 0x2000

    const/16 v34, 0x4e20

    const v36, 0x8000

    goto/16 :goto_1

    :sswitch_c
    const v42, 0x3c000

    const/16 v40, 0x2000

    const v34, 0xc350

    const v36, 0x8000

    goto/16 :goto_1

    :sswitch_d
    const v42, 0x7f800

    const/16 v40, 0x2200

    const v34, 0xc350

    const v36, 0x8800

    goto/16 :goto_1

    :sswitch_e
    const/high16 v42, 0x90000

    const/16 v40, 0x5640

    const v34, 0x20f58

    const v36, 0x1af40

    goto/16 :goto_1

    :sswitch_f
    const/high16 v42, 0xf0000

    const v40, 0x9000

    const v34, 0x3a980

    const v36, 0x2d000

    goto/16 :goto_1

    :sswitch_10
    const v42, 0x1fa400

    const v40, 0x9000

    const v34, 0x3a980

    const v36, 0x2d000

    goto/16 :goto_1

    :sswitch_11
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x4e2

    move/from16 v34, v0

    goto/16 :goto_2

    :sswitch_12
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0xbb8

    move/from16 v34, v0

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x2

    const/16 v58, 0x0

    :sswitch_14
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    goto/16 :goto_2

    :cond_1
    mul-int/lit8 v2, v5, 0x8

    int-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v3, v0

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move v4, v3

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    :goto_3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v4, v4, v47

    iput v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    return-void

    :cond_2
    const-string/jumbo v2, "video/mpeg2"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v51, 0xf

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    const/16 v58, 0x1

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v8, :pswitch_data_0

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_5
    if-eqz v58, :cond_3

    and-int/lit8 v47, v47, -0x5

    :cond_3
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_0
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_1

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto :goto_5

    :pswitch_1
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x3a98

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_2

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto/16 :goto_5

    :pswitch_3
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0xfa0

    goto/16 :goto_5

    :pswitch_4
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x3a98

    goto/16 :goto_5

    :pswitch_5
    const/16 v37, 0x3c

    const/16 v43, 0x5a

    const/16 v41, 0x44

    const v42, 0x2cd30

    const/16 v40, 0x17e8

    const v34, 0xea60

    goto/16 :goto_5

    :pswitch_6
    const/16 v37, 0x3c

    const/16 v43, 0x78

    const/16 v41, 0x44

    const v42, 0x3bc40

    const/16 v40, 0x1fe0

    const v34, 0x13880

    goto/16 :goto_5

    :pswitch_7
    const/16 v37, 0x3c

    const/16 v43, 0x78

    const/16 v41, 0x44

    const v42, 0x77880

    const/16 v40, 0x1fe0

    const v34, 0x13880

    goto/16 :goto_5

    :pswitch_8
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x2

    const/16 v58, 0x0

    goto/16 :goto_5

    :cond_4
    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move v11, v5

    move-wide v12, v6

    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v2, "video/mp4v-es"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v51, 0xf

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_6
    if-ge v2, v4, :cond_8

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x1

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_2

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_7
    if-eqz v58, :cond_6

    and-int/lit8 v47, v47, -0x5

    :cond_6
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    if-eqz v57, :cond_7

    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :sswitch_15
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_3

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto :goto_7

    :sswitch_16
    const/16 v57, 0x1

    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    goto/16 :goto_7

    :sswitch_17
    const/16 v37, 0x1e

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    goto/16 :goto_7

    :sswitch_18
    const/16 v57, 0x1

    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x80

    goto/16 :goto_7

    :sswitch_19
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x1734

    const/16 v40, 0x18c

    const/16 v34, 0x80

    goto/16 :goto_7

    :sswitch_1a
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x180

    goto/16 :goto_7

    :sswitch_1b
    const/16 v37, 0x1e

    const/16 v43, 0x28

    const/16 v41, 0x1e

    const v42, 0x8ca0

    const/16 v40, 0x4b0

    const/16 v34, 0xfa0

    goto/16 :goto_7

    :sswitch_1c
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x1f40

    goto/16 :goto_7

    :sswitch_1d
    const/16 v37, 0x1e

    const/16 v43, 0x50

    const/16 v41, 0x2d

    const v42, 0x1a5e0

    const/16 v40, 0xe10

    const/16 v34, 0x2ee0

    goto/16 :goto_7

    :sswitch_1e
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_4

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto/16 :goto_7

    :sswitch_1f
    const/16 v37, 0x1e

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0xb9a

    const/16 v40, 0x63

    const/16 v34, 0x80

    goto/16 :goto_7

    :sswitch_20
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x1734

    const/16 v40, 0x18c

    const/16 v34, 0x180

    goto/16 :goto_7

    :sswitch_21
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x300

    goto/16 :goto_7

    :sswitch_22
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x5dc

    goto/16 :goto_7

    :sswitch_23
    const/16 v37, 0x1e

    const/16 v43, 0x2c

    const/16 v41, 0x24

    const/16 v42, 0x5cd0

    const/16 v40, 0x318

    const/16 v34, 0xbb8

    goto/16 :goto_7

    :sswitch_24
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0xbdd8

    const/16 v40, 0x654

    const/16 v34, 0x1f40

    goto/16 :goto_7

    :sswitch_25
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x2

    const/16 v58, 0x0

    goto/16 :goto_7

    :cond_7
    mul-int/lit8 v8, v40, 0x2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v50

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v50

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/16 v8, 0x3c

    move/from16 v0, v37

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v0, v51

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v51

    goto/16 :goto_8

    :cond_8
    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move v11, v5

    move-wide v12, v6

    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v2, "video/3gpp"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v51, 0xf

    const/16 v13, 0xb

    const/16 v14, 0x9

    const/16 v22, 0x10

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_9
    if-ge v2, v4, :cond_e

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    move/from16 v54, v13

    move/from16 v53, v14

    const/16 v57, 0x0

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_5

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_a
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_6

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :sswitch_26
    if-eqz v57, :cond_d

    const/16 v54, 0xb

    const/16 v53, 0x9

    :goto_b
    and-int/lit8 v47, v47, -0x5

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    mul-int v8, v43, v41

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v8, 0xfa00

    mul-int v8, v8, v34

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    move/from16 v0, v54

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move/from16 v0, v53

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    :sswitch_27
    const/16 v57, 0x1

    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v34, 0x1

    const/16 v8, 0x63

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_a

    :sswitch_28
    const/16 v57, 0x1

    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x2

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_a

    :sswitch_29
    const/16 v57, 0x1

    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x6

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x1e

    goto/16 :goto_a

    :sswitch_2a
    const/16 v57, 0x1

    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x20

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x1e

    goto/16 :goto_a

    :sswitch_2b
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v11, 0x4

    if-ne v8, v11, :cond_c

    const/16 v57, 0x1

    :goto_c
    if-nez v57, :cond_a

    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    :cond_a
    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v34, 0x2

    const/16 v8, 0x63

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_a

    :cond_b
    const/16 v57, 0x1

    goto :goto_c

    :cond_c
    const/16 v57, 0x0

    goto :goto_c

    :sswitch_2c
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    const/16 v37, 0x3c

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x40

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_a

    :sswitch_2d
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    const/16 v37, 0x3c

    const/16 v43, 0x2d

    const/16 v41, 0x12

    const/16 v34, 0x80

    const/16 v8, 0x32a

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_a

    :sswitch_2e
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    const/16 v37, 0x3c

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const/16 v34, 0x100

    const/16 v8, 0x654

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_a

    :cond_d
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    goto/16 :goto_b

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v2, :cond_f

    new-instance v2, Landroid/util/Rational;

    const/16 v4, 0xb

    const/16 v8, 0x9

    invoke-direct {v2, v4, v8}, Landroid/util/Rational;-><init>(II)V

    new-instance v4, Landroid/util/Rational;

    const/16 v8, 0xb

    const/16 v11, 0x9

    invoke-direct {v4, v8, v11}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_f
    const/16 v20, 0x10

    const/16 v21, 0x10

    move-object/from16 v12, p0

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move/from16 v23, v22

    invoke-direct/range {v12 .. v23}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const v5, 0x7fffffff

    const-wide/32 v6, 0x7fffffff

    const v48, 0x5f5e100

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_d
    if-ge v2, v4, :cond_11

    aget-object v55, v56, v2

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_3

    :pswitch_9
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :pswitch_a
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v8, :pswitch_data_4

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :pswitch_b
    and-int/lit8 v47, v47, -0x5

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_11
    const/16 v46, 0x10

    const/16 v25, 0x7fff

    const/16 v26, 0x7fff

    const/16 v30, 0x10

    const/16 v31, 0x10

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-wide/32 v6, 0xca800

    const v5, 0x9000

    const v48, 0x30d40

    const/16 v50, 0x200

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_e
    if-ge v2, v4, :cond_13

    aget-object v55, v56, v2

    const-wide/16 v44, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_7

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_f
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_8

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :sswitch_2f
    and-int/lit8 v47, v47, -0x5

    move-wide/from16 v0, v44

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v35

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v50

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :sswitch_30
    const-wide/32 v44, 0xca800

    const v40, 0x9000

    const/16 v34, 0xc8

    const/16 v35, 0x200

    goto :goto_f

    :sswitch_31
    const-wide/32 v44, 0x2a3000

    const v40, 0x12000

    const/16 v34, 0x320

    const/16 v35, 0x300

    goto :goto_f

    :sswitch_32
    const-wide/32 v44, 0x465000

    const v40, 0x1e000

    const/16 v34, 0x708

    const/16 v35, 0x3c0

    goto :goto_f

    :sswitch_33
    const-wide/32 v44, 0x8ca000

    const v40, 0x3c000

    const/16 v34, 0xe10

    const/16 v35, 0x540

    goto/16 :goto_f

    :sswitch_34
    const-wide/32 v44, 0x13c6800

    const v40, 0x87000

    const/16 v34, 0x1c20

    const/16 v35, 0x800

    goto/16 :goto_f

    :sswitch_35
    const-wide/32 v44, 0x2328000

    const/high16 v40, 0xf0000

    const/16 v34, 0x2ee0

    const/16 v35, 0xac0

    goto/16 :goto_f

    :sswitch_36
    const-wide/32 v44, 0x4fb0000

    const/high16 v40, 0x220000

    const/16 v34, 0x4650

    const/16 v35, 0x1040

    goto/16 :goto_f

    :sswitch_37
    const-wide/32 v44, 0x9900000

    const/high16 v40, 0x220000

    const/16 v34, 0x7530

    const/16 v35, 0x1040

    goto/16 :goto_f

    :sswitch_38
    const-wide/32 v44, 0x12980000

    const/high16 v40, 0x880000

    const v34, 0xea60

    const/16 v35, 0x20c0

    goto/16 :goto_f

    :sswitch_39
    const-wide/32 v44, 0x23100000

    const/high16 v40, 0x880000

    const v34, 0x1d4c0

    const/16 v35, 0x20c0

    goto/16 :goto_f

    :sswitch_3a
    const-wide/32 v44, 0x46200000

    const/high16 v40, 0x880000

    const v34, 0x2bf20

    const/16 v35, 0x20c0

    goto/16 :goto_f

    :sswitch_3b
    const-wide/32 v44, 0x46200000

    const/high16 v40, 0x2200000

    const v34, 0x2bf20

    const/16 v35, 0x41c0

    goto/16 :goto_f

    :sswitch_3c
    const-wide v44, 0x8c400000L

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    const/16 v35, 0x41c0

    goto/16 :goto_f

    :sswitch_3d
    const-wide v44, 0x118800000L

    const/high16 v40, 0x2200000

    const v34, 0x75300

    const/16 v35, 0x41c0

    goto/16 :goto_f

    :cond_13
    const/16 v46, 0x8

    const/16 v2, 0x8

    move/from16 v0, v50

    invoke-static {v0, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    const/16 v2, 0x40

    invoke-static {v5, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    const-wide/16 v16, 0x40

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v6

    const/16 v30, 0x8

    const/16 v31, 0x8

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v25, v3

    move/from16 v26, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v2, "video/hevc"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v5, 0x240

    const/16 v2, 0x21c0

    int-to-long v6, v2

    const v48, 0x1f400

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_10
    if-ge v2, v4, :cond_15

    aget-object v55, v56, v2

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_9

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_11
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_a

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :sswitch_3e
    shr-int/lit8 v40, v40, 0x6

    and-int/lit8 v47, v47, -0x5

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v38

    move-wide/from16 v0, v16

    double-to-int v8, v0

    int-to-long v0, v8

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :sswitch_3f
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    const v40, 0x9000

    const/16 v34, 0x80

    goto :goto_11

    :sswitch_40
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x1e000

    const/16 v34, 0x5dc

    goto :goto_11

    :sswitch_41
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x3c000

    const/16 v34, 0xbb8

    goto :goto_11

    :sswitch_42
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x87000

    const/16 v34, 0x1770

    goto :goto_11

    :sswitch_43
    const-wide v38, 0x4040e00000000000L    # 33.75

    const/high16 v40, 0xf0000

    const/16 v34, 0x2710

    goto/16 :goto_11

    :sswitch_44
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x220000

    const/16 v34, 0x2ee0

    goto/16 :goto_11

    :sswitch_45
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x220000

    const/16 v34, 0x7530

    goto/16 :goto_11

    :sswitch_46
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x220000

    const/16 v34, 0x4e20

    goto/16 :goto_11

    :sswitch_47
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x220000

    const v34, 0xc350

    goto/16 :goto_11

    :sswitch_48
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x880000

    const/16 v34, 0x61a8

    goto/16 :goto_11

    :sswitch_49
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x880000

    const v34, 0x186a0

    goto/16 :goto_11

    :sswitch_4a
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x880000

    const v34, 0x9c40

    goto/16 :goto_11

    :sswitch_4b
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x880000

    const v34, 0x27100

    goto/16 :goto_11

    :sswitch_4c
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x880000

    const v34, 0xea60

    goto/16 :goto_11

    :sswitch_4d
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x880000

    const v34, 0x3a980

    goto/16 :goto_11

    :sswitch_4e
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x2200000

    const v34, 0xea60

    goto/16 :goto_11

    :sswitch_4f
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    goto/16 :goto_11

    :sswitch_50
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x2200000

    const v34, 0x1d4c0

    goto/16 :goto_11

    :sswitch_51
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x2200000

    const v34, 0x75300

    goto/16 :goto_11

    :sswitch_52
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    goto/16 :goto_11

    :sswitch_53
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x2200000

    const v34, 0xc3500

    goto/16 :goto_11

    :cond_15
    mul-int/lit8 v2, v5, 0x8

    int-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v3, v0

    const/16 v30, 0x8

    const/16 v31, 0x8

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v25, v3

    move/from16 v26, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported mime "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v48, 0xfa00

    const/16 v47, 0x6

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_14
        0x4 -> :sswitch_13
        0x8 -> :sswitch_11
        0x10 -> :sswitch_12
        0x20 -> :sswitch_13
        0x40 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_25
        0x4 -> :sswitch_25
        0x8 -> :sswitch_25
        0x10 -> :sswitch_25
        0x20 -> :sswitch_25
        0x40 -> :sswitch_25
        0x80 -> :sswitch_25
        0x100 -> :sswitch_25
        0x200 -> :sswitch_25
        0x400 -> :sswitch_25
        0x800 -> :sswitch_25
        0x1000 -> :sswitch_25
        0x2000 -> :sswitch_25
        0x4000 -> :sswitch_25
        0x8000 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_18
        0x4 -> :sswitch_17
        0x8 -> :sswitch_19
        0x10 -> :sswitch_1a
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1c
        0x100 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_1f
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_20
        0x10 -> :sswitch_21
        0x18 -> :sswitch_22
        0x20 -> :sswitch_23
        0x80 -> :sswitch_24
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_28
        0x4 -> :sswitch_29
        0x8 -> :sswitch_2a
        0x10 -> :sswitch_2b
        0x20 -> :sswitch_2c
        0x40 -> :sswitch_2d
        0x80 -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_26
        0x4 -> :sswitch_26
        0x8 -> :sswitch_26
        0x10 -> :sswitch_26
        0x20 -> :sswitch_26
        0x40 -> :sswitch_26
        0x80 -> :sswitch_26
        0x100 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_30
        0x2 -> :sswitch_31
        0x4 -> :sswitch_32
        0x8 -> :sswitch_33
        0x10 -> :sswitch_34
        0x20 -> :sswitch_35
        0x40 -> :sswitch_36
        0x80 -> :sswitch_37
        0x100 -> :sswitch_38
        0x200 -> :sswitch_39
        0x400 -> :sswitch_3a
        0x800 -> :sswitch_3b
        0x1000 -> :sswitch_3c
        0x2000 -> :sswitch_3d
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2f
        0x8 -> :sswitch_2f
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_2f
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        0x1 -> :sswitch_3f
        0x2 -> :sswitch_3f
        0x4 -> :sswitch_40
        0x8 -> :sswitch_40
        0x10 -> :sswitch_41
        0x20 -> :sswitch_41
        0x40 -> :sswitch_42
        0x80 -> :sswitch_42
        0x100 -> :sswitch_43
        0x200 -> :sswitch_43
        0x400 -> :sswitch_44
        0x800 -> :sswitch_45
        0x1000 -> :sswitch_46
        0x2000 -> :sswitch_47
        0x4000 -> :sswitch_48
        0x8000 -> :sswitch_49
        0x10000 -> :sswitch_4a
        0x20000 -> :sswitch_4b
        0x40000 -> :sswitch_4c
        0x80000 -> :sswitch_4d
        0x100000 -> :sswitch_4e
        0x200000 -> :sswitch_4f
        0x400000 -> :sswitch_50
        0x800000 -> :sswitch_51
        0x1000000 -> :sswitch_52
        0x2000000 -> :sswitch_53
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3e
        0x1000 -> :sswitch_3e
    .end sparse-switch
.end method

.method private applyMacroBlockLimits(IIIIIJIIII)V
    .locals 8

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    const/4 v4, 0x1

    invoke-direct {v3, p3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v7

    move-object v2, p0

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v3, v3, p8

    invoke-static {p1, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v4, p8

    div-int v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v3, v3, p9

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v4, p9

    div-int v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    return-void
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method

.method public static equivalentVP9Level(Landroid/media/MediaFormat;)I
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v12, "block-size"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Landroid/util/Size;

    const/16 v14, 0x8

    const/16 v15, 0x8

    invoke-direct {v13, v14, v15}, Landroid/util/Size;-><init>(II)V

    invoke-static {v12, v13}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v13

    mul-int v1, v12, v13

    const-string/jumbo v12, "block-count-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v12, "blocks-per-second-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v7

    if-nez v7, :cond_1

    const-wide/16 v4, 0x0

    :goto_1
    const-string/jumbo v12, "size-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v2, 0x0

    :goto_2
    const-string/jumbo v12, "bitrate-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v0, 0x0

    :goto_3
    const-wide/32 v12, 0xca800

    cmp-long v12, v4, v12

    if-gtz v12, :cond_4

    const v12, 0x9000

    if-gt v3, v12, :cond_4

    const/16 v12, 0xc8

    if-gt v0, v12, :cond_4

    const/16 v12, 0x200

    if-gt v2, v12, :cond_4

    const/4 v12, 0x1

    return v12

    :cond_0
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int v3, v1, v12

    goto :goto_0

    :cond_1
    int-to-long v14, v1

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    mul-long v4, v14, v12

    goto :goto_1

    :cond_2
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x3e8

    invoke-static {v12, v13}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    goto :goto_3

    :cond_4
    const-wide/32 v12, 0x2a3000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_5

    const v12, 0x12000

    if-gt v3, v12, :cond_5

    const/16 v12, 0x320

    if-gt v0, v12, :cond_5

    const/16 v12, 0x300

    if-gt v2, v12, :cond_5

    const/4 v12, 0x2

    return v12

    :cond_5
    const-wide/32 v12, 0x465000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_6

    const v12, 0x1e000

    if-gt v3, v12, :cond_6

    const/16 v12, 0x708

    if-gt v0, v12, :cond_6

    const/16 v12, 0x3c0

    if-gt v2, v12, :cond_6

    const/4 v12, 0x4

    return v12

    :cond_6
    const-wide/32 v12, 0x8ca000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_7

    const v12, 0x3c000

    if-gt v3, v12, :cond_7

    const/16 v12, 0xe10

    if-gt v0, v12, :cond_7

    const/16 v12, 0x540

    if-gt v2, v12, :cond_7

    const/16 v12, 0x8

    return v12

    :cond_7
    const-wide/32 v12, 0x13c6800

    cmp-long v12, v4, v12

    if-gtz v12, :cond_8

    const v12, 0x87000

    if-gt v3, v12, :cond_8

    const/16 v12, 0x1c20

    if-gt v0, v12, :cond_8

    const/16 v12, 0x800

    if-gt v2, v12, :cond_8

    const/16 v12, 0x10

    return v12

    :cond_8
    const-wide/32 v12, 0x2328000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_9

    const/high16 v12, 0xf0000

    if-gt v3, v12, :cond_9

    const/16 v12, 0x2ee0

    if-gt v0, v12, :cond_9

    const/16 v12, 0xac0

    if-gt v2, v12, :cond_9

    const/16 v12, 0x20

    return v12

    :cond_9
    const-wide/32 v12, 0x4fb0000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_a

    const/high16 v12, 0x220000

    if-gt v3, v12, :cond_a

    const/16 v12, 0x4650

    if-gt v0, v12, :cond_a

    const/16 v12, 0x1040

    if-gt v2, v12, :cond_a

    const/16 v12, 0x40

    return v12

    :cond_a
    const-wide/32 v12, 0x9900000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_b

    const/high16 v12, 0x220000

    if-gt v3, v12, :cond_b

    const/16 v12, 0x7530

    if-gt v0, v12, :cond_b

    const/16 v12, 0x1040

    if-gt v2, v12, :cond_b

    const/16 v12, 0x80

    return v12

    :cond_b
    const-wide/32 v12, 0x12980000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_c

    const/high16 v12, 0x880000

    if-gt v3, v12, :cond_c

    const v12, 0xea60

    if-gt v0, v12, :cond_c

    const/16 v12, 0x20c0

    if-gt v2, v12, :cond_c

    const/16 v12, 0x100

    return v12

    :cond_c
    const-wide/32 v12, 0x23100000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_d

    const/high16 v12, 0x880000

    if-gt v3, v12, :cond_d

    const v12, 0x1d4c0

    if-gt v0, v12, :cond_d

    const/16 v12, 0x20c0

    if-gt v2, v12, :cond_d

    const/16 v12, 0x200

    return v12

    :cond_d
    const-wide/32 v12, 0x46200000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_e

    const/high16 v12, 0x880000

    if-gt v3, v12, :cond_e

    const v12, 0x2bf20

    if-gt v0, v12, :cond_e

    const/16 v12, 0x20c0

    if-gt v2, v12, :cond_e

    const/16 v12, 0x400

    return v12

    :cond_e
    const-wide/32 v12, 0x46200000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_f

    const/high16 v12, 0x2200000

    if-gt v3, v12, :cond_f

    const v12, 0x2bf20

    if-gt v0, v12, :cond_f

    const/16 v12, 0x41c0

    if-gt v2, v12, :cond_f

    const/16 v12, 0x800

    return v12

    :cond_f
    const-wide v12, 0x8c400000L

    cmp-long v12, v4, v12

    if-gtz v12, :cond_10

    const/high16 v12, 0x2200000

    if-gt v3, v12, :cond_10

    const v12, 0x3a980

    if-gt v0, v12, :cond_10

    const/16 v12, 0x41c0

    if-gt v2, v12, :cond_10

    const/16 v12, 0x1000

    return v12

    :cond_10
    const-wide v12, 0x118800000L

    cmp-long v12, v4, v12

    if-gtz v12, :cond_11

    const/high16 v12, 0x2200000

    if-gt v3, v12, :cond_11

    const v12, 0x75300

    if-gt v0, v12, :cond_11

    const/16 v12, 0x41c0

    if-gt v2, v12, :cond_11

    const/16 v12, 0x2000

    return v12

    :cond_11
    const/16 v12, 0x2000

    return v12
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v3

    int-to-double v4, v3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    return-object v3
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    const/4 v0, 0x0

    const v2, 0x7fffffff

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v6

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_0

    move v2, v1

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBlockCount(II)I
    .locals 2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "measured-frame-rate-"

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    const/4 v10, 0x3

    aget-object v7, v9, v10

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-lez v10, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private initWithPlatformLimits()V
    .locals 2

    const/4 v1, 0x2

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 25

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v21

    new-instance v16, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v12, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    const/4 v15, 0x0

    const-string/jumbo v2, "block-size"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v16

    const-string/jumbo v2, "alignment"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    const-string/jumbo v2, "block-count-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v17

    const-string/jumbo v2, "blocks-per-second-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    const-string/jumbo v2, "size-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/util/Range;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/util/Range;

    :cond_0
    const-string/jumbo v2, "feature-can-swap-width-height"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v24, :cond_d

    invoke-virtual/range {v24 .. v24}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v20

    move-object/from16 v24, v20

    :cond_1
    :goto_0
    const-string/jumbo v2, "block-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v22

    const-string/jumbo v2, "pixel-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    const-string/jumbo v2, "frame-rate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v19

    if-eqz v19, :cond_2

    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :cond_2
    :goto_1
    const-string/jumbo v2, "bitrate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v13

    if-eqz v13, :cond_3

    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    :cond_3
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string/jumbo v3, "block-size width must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string/jumbo v3, "block-size height must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string/jumbo v3, "alignment width must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string/jumbo v3, "alignment height must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v11

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const-wide v6, 0x7fffffffffffffffL

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v2, :cond_f

    :cond_4
    if-eqz v24, :cond_5

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_5
    if-eqz v20, :cond_6

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_6
    if-eqz v17, :cond_7

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_7
    if-eqz v14, :cond_8

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_8
    if-eqz v15, :cond_9

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_9
    if-eqz v22, :cond_a

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_a
    if-eqz v19, :cond_b

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_b
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    :cond_c
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void

    :cond_d
    const-string/jumbo v2, "VideoCapabilities"

    const-string/jumbo v3, "feature can-swap-width-height is best used with size-range"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    goto/16 :goto_0

    :catch_0
    move-exception v18

    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "frame rate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v18

    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bitrate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_3

    :cond_f
    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_10
    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_11
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_12
    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_13
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_14
    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_15
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_16
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_3
.end method

.method private static parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "could not parse size range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v5
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 10

    const/4 v4, 0x1

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v6, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v6, v7

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v6, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v6, v7

    if-nez v6, :cond_6

    const/4 v4, 0x1

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    :cond_2
    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v6, v7, :cond_8

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v6, v7}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v6, v7}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int v0, v5, v1

    if-eqz v4, :cond_9

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v5, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    int-to-double v6, v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    mul-double v2, v6, v8

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    :cond_3
    return v4

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private updateLimits()V
    .locals 8

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public getAchievableFrameRatesFor(II)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "VideoCapabilities"

    const-string/jumbo v1, "Codec did not publish any measurement data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    goto :goto_0
.end method

.method public getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unsupported size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    mul-int v0, v2, v3

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v0

    div-double v4, v2, v4

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not get supported heights for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v4

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    :cond_2
    int-to-double v6, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-double v8, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not get supported widths for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    :cond_2
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, p1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method public getWidthAlignment()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0

    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v4, "width"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string/jumbo v4, "height"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string/jumbo v4, "frame-rate"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-direct {p0, v3, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-wrap0(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_1

    return v5

    :cond_1
    const/4 v4, 0x1

    return v4
.end method
