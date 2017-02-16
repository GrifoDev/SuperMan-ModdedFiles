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

    .prologue
    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .locals 6
    .param p1, "widthAlignment"    # I
    .param p2, "heightAlignment"    # I

    .prologue
    .line 1929
    const-string/jumbo v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1930
    const-string/jumbo v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1932
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_1

    .line 1935
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1936
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1937
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    .line 1934
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 1940
    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1941
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1943
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1944
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1928
    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 7
    .param p1, "blockWidth"    # I
    .param p2, "blockHeight"    # I
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

    .prologue
    .local p3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p4, "rates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local p5, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v6, 0x1

    .line 1891
    const-string/jumbo v3, "blockWidth must be a power of two"

    invoke-static {p1, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1892
    const-string/jumbo v3, "blockHeight must be a power of two"

    invoke-static {p2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1894
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1895
    .local v2, "newBlockWidth":I
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1899
    .local v1, "newBlockHeight":I
    mul-int v3, v2, v1

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v3, v4

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v0, v3, v4

    .line 1900
    .local v0, "factor":I
    if-eq v0, v6, :cond_0

    .line 1901
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1903
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v4, v0

    .line 1902
    invoke-static {v3, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1905
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1906
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    .line 1907
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v2, v5

    .line 1904
    invoke-static {v3, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1909
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v2, v4

    .line 1908
    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1911
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    .line 1910
    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1913
    :cond_0
    mul-int v3, v2, v1

    div-int/2addr v3, p1

    div-int v0, v3, p2

    .line 1914
    if-eq v0, v6, :cond_1

    .line 1915
    invoke-static {p3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    .line 1916
    int-to-long v4, v0

    invoke-static {p4, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    .line 1918
    div-int v3, v1, p2

    .line 1919
    div-int v4, v2, p1

    .line 1917
    invoke-static {p5, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    .line 1921
    :cond_1
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1922
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v3, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1923
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v3, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1924
    iput v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1925
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1890
    return-void
.end method

.method private applyLevelLimits()V
    .locals 59

    .prologue
    .line 2035
    const-wide/16 v6, 0x0

    .line 2036
    .local v6, "maxBlocksPerSecond":J
    const/4 v5, 0x0

    .line 2037
    .local v5, "maxBlocks":I
    const/16 v48, 0x0

    .line 2038
    .local v48, "maxBps":I
    const/16 v49, 0x0

    .line 2040
    .local v49, "maxDPBBlocks":I
    const/16 v47, 0x4

    .line 2041
    .local v47, "errors":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v56, v0

    .line 2042
    .local v56, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v52

    .line 2044
    .local v52, "mime":Ljava/lang/String;
    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2045
    const/16 v5, 0x63

    .line 2046
    const-wide/16 v6, 0x5cd

    .line 2047
    const v48, 0xfa00

    .line 2048
    const/16 v49, 0x18c

    .line 2049
    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v55, v56, v2

    .line 2050
    .local v55, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    .local v42, "MBPS":I
    const/16 v40, 0x0

    .local v40, "FS":I
    const/16 v34, 0x0

    .local v34, "BR":I
    const/16 v36, 0x0

    .line 2051
    .local v36, "DPB":I
    const/16 v58, 0x1

    .line 2052
    .local v58, "supported":Z
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_0

    .line 2088
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2089
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2088
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2089
    const-string/jumbo v12, " for "

    .line 2088
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    or-int/lit8 v47, v47, 0x1

    .line 2092
    :goto_1
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_1

    .line 2109
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2110
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2109
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2110
    const-string/jumbo v12, " for "

    .line 2109
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    or-int/lit8 v47, v47, 0x1

    .line 2112
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    .line 2114
    :goto_2
    if-eqz v58, :cond_0

    .line 2115
    and-int/lit8 v47, v47, -0x5

    .line 2117
    :cond_0
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2118
    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2119
    move/from16 v0, v34

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    .line 2120
    move/from16 v0, v49

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    .line 2049
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2054
    :sswitch_0
    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    const/16 v36, 0x18c

    goto :goto_1

    .line 2056
    :sswitch_1
    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x80

    const/16 v36, 0x18c

    goto :goto_1

    .line 2058
    :sswitch_2
    const/16 v42, 0xbb8

    const/16 v40, 0x18c

    const/16 v34, 0xc0

    const/16 v36, 0x384

    goto :goto_1

    .line 2060
    :sswitch_3
    const/16 v42, 0x1770

    const/16 v40, 0x18c

    const/16 v34, 0x180

    const/16 v36, 0x948

    goto/16 :goto_1

    .line 2062
    :sswitch_4
    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x300

    const/16 v36, 0x948

    goto/16 :goto_1

    .line 2064
    :sswitch_5
    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x7d0

    const/16 v36, 0x948

    goto/16 :goto_1

    .line 2066
    :sswitch_6
    const/16 v42, 0x4d58

    const/16 v40, 0x318

    const/16 v34, 0xfa0

    const/16 v36, 0x1290

    goto/16 :goto_1

    .line 2068
    :sswitch_7
    const/16 v42, 0x4f1a

    const/16 v40, 0x654

    const/16 v34, 0xfa0

    const/16 v36, 0x1fa4

    goto/16 :goto_1

    .line 2070
    :sswitch_8
    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x2710

    const/16 v36, 0x1fa4

    goto/16 :goto_1

    .line 2072
    :sswitch_9
    const v42, 0x1a5e0

    const/16 v40, 0xe10

    const/16 v34, 0x36b0

    const/16 v36, 0x4650

    goto/16 :goto_1

    .line 2074
    :sswitch_a
    const v42, 0x34bc0

    const/16 v40, 0x1400

    const/16 v34, 0x4e20

    const/16 v36, 0x5000

    goto/16 :goto_1

    .line 2076
    :sswitch_b
    const v42, 0x3c000

    const/16 v40, 0x2000

    const/16 v34, 0x4e20

    const v36, 0x8000

    goto/16 :goto_1

    .line 2078
    :sswitch_c
    const v42, 0x3c000

    const/16 v40, 0x2000

    const v34, 0xc350

    const v36, 0x8000

    goto/16 :goto_1

    .line 2080
    :sswitch_d
    const v42, 0x7f800

    const/16 v40, 0x2200

    const v34, 0xc350

    const v36, 0x8800

    goto/16 :goto_1

    .line 2082
    :sswitch_e
    const/high16 v42, 0x90000

    const/16 v40, 0x5640

    const v34, 0x20f58

    const v36, 0x1af40

    goto/16 :goto_1

    .line 2084
    :sswitch_f
    const/high16 v42, 0xf0000

    const v40, 0x9000

    const v34, 0x3a980

    const v36, 0x2d000

    goto/16 :goto_1

    .line 2086
    :sswitch_10
    const v42, 0x1fa400

    const v40, 0x9000

    const v34, 0x3a980

    const v36, 0x2d000

    goto/16 :goto_1

    .line 2094
    :sswitch_11
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x4e2

    move/from16 v34, v0

    goto/16 :goto_2

    .line 2096
    :sswitch_12
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0xbb8

    move/from16 v34, v0

    goto/16 :goto_2

    .line 2100
    :sswitch_13
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2101
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2100
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2101
    const-string/jumbo v12, " for "

    .line 2100
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    or-int/lit8 v47, v47, 0x2

    .line 2103
    const/16 v58, 0x0

    .line 2107
    :sswitch_14
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    goto/16 :goto_2

    .line 2123
    .end local v34    # "BR":I
    .end local v36    # "DPB":I
    .end local v40    # "FS":I
    .end local v42    # "MBPS":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v58    # "supported":Z
    :cond_1
    mul-int/lit8 v2, v5, 0x8

    int-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 2127
    .local v3, "maxLengthInBlocks":I
    const/16 v8, 0x10

    const/16 v9, 0x10

    .line 2128
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move v4, v3

    .line 2124
    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2623
    .end local v3    # "maxLengthInBlocks":I
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

    .line 2624
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v4, v4, v47

    iput v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 2034
    return-void

    .line 2129
    :cond_2
    const-string/jumbo v2, "video/mpeg2"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2130
    const/16 v9, 0xb

    .local v9, "maxWidth":I
    const/16 v10, 0x9

    .local v10, "maxHeight":I
    const/16 v51, 0xf

    .line 2131
    .local v51, "maxRate":I
    const/16 v5, 0x63

    .line 2132
    const-wide/16 v6, 0x5cd

    .line 2133
    const v48, 0xfa00

    .line 2134
    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-object v55, v56, v2

    .line 2135
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    .restart local v42    # "MBPS":I
    const/16 v40, 0x0

    .restart local v40    # "FS":I
    const/16 v34, 0x0

    .restart local v34    # "BR":I
    const/16 v37, 0x0

    .local v37, "FR":I
    const/16 v43, 0x0

    .local v43, "W":I
    const/16 v41, 0x0

    .line 2136
    .local v41, "H":I
    const/16 v58, 0x1

    .line 2137
    .restart local v58    # "supported":Z
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v8, :pswitch_data_0

    .line 2178
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2179
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2179
    const-string/jumbo v12, " for "

    .line 2178
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    or-int/lit8 v47, v47, 0x1

    .line 2182
    :goto_5
    if-eqz v58, :cond_3

    .line 2183
    and-int/lit8 v47, v47, -0x5

    .line 2185
    :cond_3
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2186
    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2187
    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    .line 2188
    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2189
    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2190
    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 2134
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2139
    :pswitch_0
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_1

    .line 2143
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2144
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2143
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2144
    const-string/jumbo v12, "/"

    .line 2143
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2145
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2143
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2145
    const-string/jumbo v12, " for "

    .line 2143
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    or-int/lit8 v47, v47, 0x1

    goto :goto_5

    .line 2141
    :pswitch_1
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x3a98

    goto/16 :goto_5

    .line 2150
    :pswitch_2
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_2

    .line 2162
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2163
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2162
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2163
    const-string/jumbo v12, "/"

    .line 2162
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2164
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2162
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2164
    const-string/jumbo v12, " for "

    .line 2162
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    or-int/lit8 v47, v47, 0x1

    goto/16 :goto_5

    .line 2152
    :pswitch_3
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0xfa0

    goto/16 :goto_5

    .line 2154
    :pswitch_4
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x3a98

    goto/16 :goto_5

    .line 2156
    :pswitch_5
    const/16 v37, 0x3c

    const/16 v43, 0x5a

    const/16 v41, 0x44

    const v42, 0x2cd30

    const/16 v40, 0x17e8

    const v34, 0xea60

    goto/16 :goto_5

    .line 2158
    :pswitch_6
    const/16 v37, 0x3c

    const/16 v43, 0x78

    const/16 v41, 0x44

    const v42, 0x3bc40

    const/16 v40, 0x1fe0

    const v34, 0x13880

    goto/16 :goto_5

    .line 2160
    :pswitch_7
    const/16 v37, 0x3c

    const/16 v43, 0x78

    const/16 v41, 0x44

    const v42, 0x77880

    const/16 v40, 0x1fe0

    const v34, 0x13880

    goto/16 :goto_5

    .line 2172
    :pswitch_8
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2173
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2172
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2173
    const-string/jumbo v12, " for "

    .line 2172
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    or-int/lit8 v47, v47, 0x2

    .line 2175
    const/16 v58, 0x0

    .line 2176
    goto/16 :goto_5

    .line 2194
    .end local v34    # "BR":I
    .end local v37    # "FR":I
    .end local v40    # "FS":I
    .end local v41    # "H":I
    .end local v42    # "MBPS":I
    .end local v43    # "W":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v58    # "supported":Z
    :cond_4
    const/16 v14, 0x10

    const/16 v15, 0x10

    .line 2195
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move v11, v5

    move-wide v12, v6

    .line 2192
    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2196
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

    .line 2197
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v51    # "maxRate":I
    :cond_5
    const-string/jumbo v2, "video/mp4v-es"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2198
    const/16 v9, 0xb

    .restart local v9    # "maxWidth":I
    const/16 v10, 0x9

    .restart local v10    # "maxHeight":I
    const/16 v51, 0xf

    .line 2199
    .restart local v51    # "maxRate":I
    const/16 v5, 0x63

    .line 2200
    const-wide/16 v6, 0x5cd

    .line 2201
    const v48, 0xfa00

    .line 2202
    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_6
    if-ge v2, v4, :cond_8

    aget-object v55, v56, v2

    .line 2203
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    .restart local v42    # "MBPS":I
    const/16 v40, 0x0

    .restart local v40    # "FS":I
    const/16 v34, 0x0

    .restart local v34    # "BR":I
    const/16 v37, 0x0

    .restart local v37    # "FR":I
    const/16 v43, 0x0

    .restart local v43    # "W":I
    const/16 v41, 0x0

    .line 2204
    .restart local v41    # "H":I
    const/16 v57, 0x0

    .line 2205
    .local v57, "strict":Z
    const/16 v58, 0x1

    .line 2206
    .restart local v58    # "supported":Z
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_2

    .line 2281
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2282
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2281
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2282
    const-string/jumbo v12, " for "

    .line 2281
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    or-int/lit8 v47, v47, 0x1

    .line 2285
    :goto_7
    if-eqz v58, :cond_6

    .line 2286
    and-int/lit8 v47, v47, -0x5

    .line 2288
    :cond_6
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2289
    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2290
    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    .line 2291
    if-eqz v57, :cond_7

    .line 2292
    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2293
    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2294
    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 2202
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2208
    :sswitch_15
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_3

    .line 2228
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2229
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2228
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2229
    const-string/jumbo v12, "/"

    .line 2228
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2230
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2228
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2230
    const-string/jumbo v12, " for "

    .line 2228
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    or-int/lit8 v47, v47, 0x1

    goto :goto_7

    .line 2210
    :sswitch_16
    const/16 v57, 0x1

    .line 2211
    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    goto/16 :goto_7

    .line 2213
    :sswitch_17
    const/16 v37, 0x1e

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    goto/16 :goto_7

    .line 2215
    :sswitch_18
    const/16 v57, 0x1

    .line 2216
    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x80

    goto/16 :goto_7

    .line 2218
    :sswitch_19
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x1734

    const/16 v40, 0x18c

    const/16 v34, 0x80

    goto/16 :goto_7

    .line 2220
    :sswitch_1a
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x180

    goto/16 :goto_7

    .line 2222
    :sswitch_1b
    const/16 v37, 0x1e

    const/16 v43, 0x28

    const/16 v41, 0x1e

    const v42, 0x8ca0

    const/16 v40, 0x4b0

    const/16 v34, 0xfa0

    goto/16 :goto_7

    .line 2224
    :sswitch_1c
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x1f40

    goto/16 :goto_7

    .line 2226
    :sswitch_1d
    const/16 v37, 0x1e

    const/16 v43, 0x50

    const/16 v41, 0x2d

    const v42, 0x1a5e0

    const/16 v40, 0xe10

    const/16 v34, 0x2ee0

    goto/16 :goto_7

    .line 2235
    :sswitch_1e
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_4

    .line 2250
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2251
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2250
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2251
    const-string/jumbo v12, "/"

    .line 2250
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2252
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2250
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2252
    const-string/jumbo v12, " for "

    .line 2250
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    or-int/lit8 v47, v47, 0x1

    goto/16 :goto_7

    .line 2238
    :sswitch_1f
    const/16 v37, 0x1e

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0xb9a

    const/16 v40, 0x63

    const/16 v34, 0x80

    goto/16 :goto_7

    .line 2240
    :sswitch_20
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x1734

    const/16 v40, 0x18c

    const/16 v34, 0x180

    goto/16 :goto_7

    .line 2242
    :sswitch_21
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x300

    goto/16 :goto_7

    .line 2244
    :sswitch_22
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x5dc

    goto/16 :goto_7

    .line 2246
    :sswitch_23
    const/16 v37, 0x1e

    const/16 v43, 0x2c

    const/16 v41, 0x24

    const/16 v42, 0x5cd0

    const/16 v40, 0x318

    const/16 v34, 0xbb8

    goto/16 :goto_7

    .line 2248
    :sswitch_24
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0xbdd8

    const/16 v40, 0x654

    const/16 v34, 0x1f40

    goto/16 :goto_7

    .line 2275
    :sswitch_25
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2276
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2275
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2276
    const-string/jumbo v12, " for "

    .line 2275
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    or-int/lit8 v47, v47, 0x2

    .line 2278
    const/16 v58, 0x0

    .line 2279
    goto/16 :goto_7

    .line 2297
    :cond_7
    mul-int/lit8 v8, v40, 0x2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v50, v0

    .line 2298
    .local v50, "maxDim":I
    move/from16 v0, v50

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2299
    move/from16 v0, v50

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2300
    const/16 v8, 0x3c

    move/from16 v0, v37

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v0, v51

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v51

    goto/16 :goto_8

    .line 2305
    .end local v34    # "BR":I
    .end local v37    # "FR":I
    .end local v40    # "FS":I
    .end local v41    # "H":I
    .end local v42    # "MBPS":I
    .end local v43    # "W":I
    .end local v50    # "maxDim":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v57    # "strict":Z
    .end local v58    # "supported":Z
    :cond_8
    const/16 v14, 0x10

    const/16 v15, 0x10

    .line 2306
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move v11, v5

    move-wide v12, v6

    .line 2303
    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2307
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

    .line 2308
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v51    # "maxRate":I
    :cond_9
    const-string/jumbo v2, "video/3gpp"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2309
    const/16 v9, 0xb

    .restart local v9    # "maxWidth":I
    const/16 v10, 0x9

    .restart local v10    # "maxHeight":I
    const/16 v51, 0xf

    .restart local v51    # "maxRate":I
    const/16 v13, 0xb

    .local v13, "minWidth":I
    const/16 v14, 0x9

    .line 2311
    .local v14, "minHeight":I
    const/16 v22, 0x10

    .line 2312
    .local v22, "minAlignment":I
    const/16 v5, 0x63

    .line 2313
    const-wide/16 v6, 0x5cd

    .line 2314
    const v48, 0xfa00

    .line 2315
    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_9
    if-ge v2, v4, :cond_e

    aget-object v55, v56, v2

    .line 2316
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v42, 0x0

    .restart local v42    # "MBPS":I
    const/16 v34, 0x0

    .restart local v34    # "BR":I
    const/16 v37, 0x0

    .restart local v37    # "FR":I
    const/16 v43, 0x0

    .restart local v43    # "W":I
    const/16 v41, 0x0

    .restart local v41    # "H":I
    move/from16 v54, v13

    .local v54, "minW":I
    move/from16 v53, v14

    .line 2317
    .local v53, "minH":I
    const/16 v57, 0x0

    .line 2318
    .restart local v57    # "strict":Z
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_5

    .line 2353
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

    .line 2354
    const-string/jumbo v12, "/"

    .line 2353
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2354
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2353
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2354
    const-string/jumbo v12, " for "

    .line 2353
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    or-int/lit8 v47, v47, 0x1

    .line 2357
    .end local v57    # "strict":Z
    :goto_a
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_6

    .line 2369
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2370
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2369
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2370
    const-string/jumbo v12, " for "

    .line 2369
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    or-int/lit8 v47, v47, 0x1

    .line 2373
    :sswitch_26
    if-eqz v57, :cond_d

    .line 2378
    const/16 v54, 0xb

    const/16 v53, 0x9

    .line 2385
    :goto_b
    and-int/lit8 v47, v47, -0x5

    .line 2386
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2387
    mul-int v8, v43, v41

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2388
    const v8, 0xfa00

    mul-int v8, v8, v34

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    .line 2389
    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2390
    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2391
    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 2392
    move/from16 v0, v54

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2393
    move/from16 v0, v53

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2315
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 2320
    .restart local v57    # "strict":Z
    :sswitch_27
    const/16 v57, 0x1

    .line 2321
    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v34, 0x1

    const/16 v8, 0x63

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_a

    .line 2323
    :sswitch_28
    const/16 v57, 0x1

    .line 2324
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x2

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_a

    .line 2326
    :sswitch_29
    const/16 v57, 0x1

    .line 2327
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x6

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x1e

    goto/16 :goto_a

    .line 2329
    :sswitch_2a
    const/16 v57, 0x1

    .line 2330
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x20

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x1e

    goto/16 :goto_a

    .line 2333
    :sswitch_2b
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    .line 2334
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2335
    const/4 v11, 0x4

    .line 2334
    if-ne v8, v11, :cond_c

    const/16 v57, 0x1

    .line 2336
    .local v57, "strict":Z
    :goto_c
    if-nez v57, :cond_a

    .line 2337
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    .line 2339
    :cond_a
    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v34, 0x2

    const/16 v8, 0x63

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_a

    .line 2333
    .local v57, "strict":Z
    :cond_b
    const/16 v57, 0x1

    goto :goto_c

    .line 2334
    :cond_c
    const/16 v57, 0x0

    goto :goto_c

    .line 2342
    :sswitch_2c
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    .line 2343
    const/16 v37, 0x3c

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x40

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_a

    .line 2346
    :sswitch_2d
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    .line 2347
    const/16 v37, 0x3c

    const/16 v43, 0x2d

    const/16 v41, 0x12

    const/16 v34, 0x80

    const/16 v8, 0x32a

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_a

    .line 2350
    :sswitch_2e
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    .line 2351
    const/16 v37, 0x3c

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const/16 v34, 0x100

    const/16 v8, 0x654

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_a

    .line 2383
    .end local v57    # "strict":Z
    :cond_d
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    goto/16 :goto_b

    .line 2397
    .end local v34    # "BR":I
    .end local v37    # "FR":I
    .end local v41    # "H":I
    .end local v42    # "MBPS":I
    .end local v43    # "W":I
    .end local v53    # "minH":I
    .end local v54    # "minW":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v2, :cond_f

    .line 2399
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

    .line 2398
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2405
    :cond_f
    const/16 v20, 0x10

    const/16 v21, 0x10

    move-object/from16 v12, p0

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move/from16 v23, v22

    .line 2401
    invoke-direct/range {v12 .. v23}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 2407
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

    .line 2408
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v13    # "minWidth":I
    .end local v14    # "minHeight":I
    .end local v22    # "minAlignment":I
    .end local v51    # "maxRate":I
    :cond_10
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2409
    const v5, 0x7fffffff

    .line 2410
    const-wide/32 v6, 0x7fffffff

    .line 2413
    const v48, 0x5f5e100

    .line 2417
    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_d
    if-ge v2, v4, :cond_11

    aget-object v55, v56, v2

    .line 2418
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_3

    .line 2425
    :pswitch_9
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2426
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2425
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2426
    const-string/jumbo v12, " for "

    .line 2425
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    or-int/lit8 v47, v47, 0x1

    .line 2429
    :pswitch_a
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v8, :pswitch_data_4

    .line 2433
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2434
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2433
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2434
    const-string/jumbo v12, " for "

    .line 2433
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    or-int/lit8 v47, v47, 0x1

    .line 2437
    :pswitch_b
    and-int/lit8 v47, v47, -0x5

    .line 2417
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2440
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_11
    const/16 v46, 0x10

    .line 2441
    .local v46, "blockSize":I
    const/16 v25, 0x7fff

    const/16 v26, 0x7fff

    .line 2442
    const/16 v30, 0x10

    const/16 v31, 0x10

    .line 2443
    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    .line 2441
    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    .line 2444
    .end local v46    # "blockSize":I
    :cond_12
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2445
    const-wide/32 v6, 0xca800

    .line 2446
    const v5, 0x9000

    .line 2447
    const v48, 0x30d40

    .line 2448
    const/16 v50, 0x200

    .line 2450
    .restart local v50    # "maxDim":I
    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_e
    if-ge v2, v4, :cond_13

    aget-object v55, v56, v2

    .line 2451
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v44, 0x0

    .line 2452
    .local v44, "SR":J
    const/16 v40, 0x0

    .line 2453
    .restart local v40    # "FS":I
    const/16 v34, 0x0

    .line 2454
    .restart local v34    # "BR":I
    const/16 v35, 0x0

    .line 2455
    .local v35, "D":I
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_7

    .line 2485
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2486
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2485
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2486
    const-string/jumbo v12, " for "

    .line 2485
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    or-int/lit8 v47, v47, 0x1

    .line 2489
    :goto_f
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_8

    .line 2498
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2499
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2498
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2499
    const-string/jumbo v12, " for "

    .line 2498
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    or-int/lit8 v47, v47, 0x1

    .line 2502
    :sswitch_2f
    and-int/lit8 v47, v47, -0x5

    .line 2503
    move-wide/from16 v0, v44

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2504
    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2505
    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    .line 2506
    move/from16 v0, v35

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 2450
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 2457
    :sswitch_30
    const-wide/32 v44, 0xca800

    const v40, 0x9000

    const/16 v34, 0xc8

    const/16 v35, 0x200

    goto :goto_f

    .line 2459
    :sswitch_31
    const-wide/32 v44, 0x2a3000

    const v40, 0x12000

    const/16 v34, 0x320

    const/16 v35, 0x300

    goto :goto_f

    .line 2461
    :sswitch_32
    const-wide/32 v44, 0x465000

    const v40, 0x1e000

    const/16 v34, 0x708

    const/16 v35, 0x3c0

    goto :goto_f

    .line 2463
    :sswitch_33
    const-wide/32 v44, 0x8ca000

    const v40, 0x3c000

    const/16 v34, 0xe10

    const/16 v35, 0x540

    goto/16 :goto_f

    .line 2465
    :sswitch_34
    const-wide/32 v44, 0x13c6800

    const v40, 0x87000

    const/16 v34, 0x1c20

    const/16 v35, 0x800

    goto/16 :goto_f

    .line 2467
    :sswitch_35
    const-wide/32 v44, 0x2328000

    const/high16 v40, 0xf0000

    const/16 v34, 0x2ee0

    const/16 v35, 0xac0

    goto/16 :goto_f

    .line 2469
    :sswitch_36
    const-wide/32 v44, 0x4fb0000

    const/high16 v40, 0x220000

    const/16 v34, 0x4650

    const/16 v35, 0x1040

    goto/16 :goto_f

    .line 2471
    :sswitch_37
    const-wide/32 v44, 0x9900000

    const/high16 v40, 0x220000

    const/16 v34, 0x7530

    const/16 v35, 0x1040

    goto/16 :goto_f

    .line 2473
    :sswitch_38
    const-wide/32 v44, 0x12980000

    const/high16 v40, 0x880000

    const v34, 0xea60

    const/16 v35, 0x20c0

    goto/16 :goto_f

    .line 2475
    :sswitch_39
    const-wide/32 v44, 0x23100000

    const/high16 v40, 0x880000

    const v34, 0x1d4c0

    const/16 v35, 0x20c0

    goto/16 :goto_f

    .line 2477
    :sswitch_3a
    const-wide/32 v44, 0x46200000

    const/high16 v40, 0x880000

    const v34, 0x2bf20

    const/16 v35, 0x20c0

    goto/16 :goto_f

    .line 2479
    :sswitch_3b
    const-wide/32 v44, 0x46200000

    const/high16 v40, 0x2200000

    const v34, 0x2bf20

    const/16 v35, 0x41c0

    goto/16 :goto_f

    .line 2481
    :sswitch_3c
    const-wide v44, 0x8c400000L

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    const/16 v35, 0x41c0

    goto/16 :goto_f

    .line 2483
    :sswitch_3d
    const-wide v44, 0x118800000L

    const/high16 v40, 0x2200000

    const v34, 0x75300

    const/16 v35, 0x41c0

    goto/16 :goto_f

    .line 2509
    .end local v34    # "BR":I
    .end local v35    # "D":I
    .end local v40    # "FS":I
    .end local v44    # "SR":J
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_13
    const/16 v46, 0x8

    .line 2510
    .restart local v46    # "blockSize":I
    const/16 v2, 0x8

    move/from16 v0, v50

    invoke-static {v0, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 2511
    .restart local v3    # "maxLengthInBlocks":I
    const/16 v2, 0x40

    invoke-static {v5, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    .line 2512
    const-wide/16 v16, 0x40

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v6

    .line 2517
    const/16 v30, 0x8

    const/16 v31, 0x8

    .line 2518
    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v25, v3

    move/from16 v26, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    .line 2514
    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    .line 2519
    .end local v3    # "maxLengthInBlocks":I
    .end local v46    # "blockSize":I
    .end local v50    # "maxDim":I
    :cond_14
    const-string/jumbo v2, "video/hevc"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2521
    const/16 v5, 0x240

    .line 2522
    const/16 v2, 0x21c0

    int-to-long v6, v2

    .line 2523
    const v48, 0x1f400

    .line 2524
    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_10
    if-ge v2, v4, :cond_15

    aget-object v55, v56, v2

    .line 2525
    .restart local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v38, 0x0

    .line 2526
    .local v38, "FR":D
    const/16 v40, 0x0

    .line 2527
    .restart local v40    # "FS":I
    const/16 v34, 0x0

    .line 2528
    .restart local v34    # "BR":I
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_9

    .line 2581
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2582
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2581
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2582
    const-string/jumbo v12, " for "

    .line 2581
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    or-int/lit8 v47, v47, 0x1

    .line 2585
    :goto_11
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_a

    .line 2591
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2592
    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2591
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2592
    const-string/jumbo v12, " for "

    .line 2591
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    or-int/lit8 v47, v47, 0x1

    .line 2603
    :sswitch_3e
    shr-int/lit8 v40, v40, 0x6

    .line 2604
    and-int/lit8 v47, v47, -0x5

    .line 2605
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

    .line 2606
    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2607
    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    .line 2524
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 2535
    :sswitch_3f
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    const v40, 0x9000

    const/16 v34, 0x80

    goto :goto_11

    .line 2538
    :sswitch_40
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x1e000

    const/16 v34, 0x5dc

    goto :goto_11

    .line 2541
    :sswitch_41
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x3c000

    const/16 v34, 0xbb8

    goto :goto_11

    .line 2544
    :sswitch_42
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x87000

    const/16 v34, 0x1770

    goto :goto_11

    .line 2547
    :sswitch_43
    const-wide v38, 0x4040e00000000000L    # 33.75

    const/high16 v40, 0xf0000

    const/16 v34, 0x2710

    goto/16 :goto_11

    .line 2549
    :sswitch_44
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x220000

    const/16 v34, 0x2ee0

    goto/16 :goto_11

    .line 2551
    :sswitch_45
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x220000

    const/16 v34, 0x7530

    goto/16 :goto_11

    .line 2553
    :sswitch_46
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x220000

    const/16 v34, 0x4e20

    goto/16 :goto_11

    .line 2555
    :sswitch_47
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x220000

    const v34, 0xc350

    goto/16 :goto_11

    .line 2557
    :sswitch_48
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x880000

    const/16 v34, 0x61a8

    goto/16 :goto_11

    .line 2559
    :sswitch_49
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x880000

    const v34, 0x186a0

    goto/16 :goto_11

    .line 2561
    :sswitch_4a
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x880000

    const v34, 0x9c40

    goto/16 :goto_11

    .line 2563
    :sswitch_4b
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x880000

    const v34, 0x27100

    goto/16 :goto_11

    .line 2565
    :sswitch_4c
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x880000

    const v34, 0xea60

    goto/16 :goto_11

    .line 2567
    :sswitch_4d
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x880000

    const v34, 0x3a980

    goto/16 :goto_11

    .line 2569
    :sswitch_4e
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x2200000

    const v34, 0xea60

    goto/16 :goto_11

    .line 2571
    :sswitch_4f
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    goto/16 :goto_11

    .line 2573
    :sswitch_50
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x2200000

    const v34, 0x1d4c0

    goto/16 :goto_11

    .line 2575
    :sswitch_51
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x2200000

    const v34, 0x75300

    goto/16 :goto_11

    .line 2577
    :sswitch_52
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    goto/16 :goto_11

    .line 2579
    :sswitch_53
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x2200000

    const v34, 0xc3500

    goto/16 :goto_11

    .line 2610
    .end local v34    # "BR":I
    .end local v38    # "FR":D
    .end local v40    # "FS":I
    .end local v55    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_15
    mul-int/lit8 v2, v5, 0x8

    int-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v3, v0

    .line 2614
    .restart local v3    # "maxLengthInBlocks":I
    const/16 v30, 0x8

    const/16 v31, 0x8

    .line 2615
    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v25, v3

    move/from16 v26, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    .line 2611
    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    .line 2617
    .end local v3    # "maxLengthInBlocks":I
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

    .line 2620
    const v48, 0xfa00

    .line 2621
    const/16 v47, 0x6

    goto/16 :goto_3

    .line 2052
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

    .line 2092
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

    .line 2137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 2139
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 2150
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2206
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

    .line 2208
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

    .line 2235
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

    .line 2318
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

    .line 2357
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

    .line 2418
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

    .line 2429
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    .line 2455
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

    .line 2489
    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2f
        0x8 -> :sswitch_2f
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_2f
    .end sparse-switch

    .line 2528
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

    .line 2585
    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3e
        0x1000 -> :sswitch_3e
    .end sparse-switch
.end method

.method private applyMacroBlockLimits(IIIIIJIIII)V
    .locals 8
    .param p1, "minHorizontalBlocks"    # I
    .param p2, "minVerticalBlocks"    # I
    .param p3, "maxHorizontalBlocks"    # I
    .param p4, "maxVerticalBlocks"    # I
    .param p5, "maxBlocks"    # I
    .param p6, "maxBlocksPerSecond"    # J
    .param p8, "blockWidth"    # I
    .param p9, "blockHeight"    # I
    .param p10, "widthAlignment"    # I
    .param p11, "heightAlignment"    # I

    .prologue
    .line 2017
    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    .line 2019
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 2020
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    .line 2022
    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p4}, Landroid/util/Rational;-><init>(II)V

    .line 2023
    new-instance v3, Landroid/util/Rational;

    const/4 v4, 0x1

    invoke-direct {v3, p3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 2021
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v7

    move-object v2, p0

    move/from16 v3, p8

    move/from16 v4, p9

    .line 2018
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 2025
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 2026
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v3, v3, p8

    invoke-static {p1, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2027
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v4, p8

    div-int v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2025
    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 2024
    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 2029
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 2030
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v3, v3, p9

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2031
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v4, p9

    div-int v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2029
    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 2028
    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 2016
    return-void
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 12
    .param p1, "maxHorizontalBlocks"    # I
    .param p2, "maxVerticalBlocks"    # I
    .param p3, "maxBlocks"    # I
    .param p4, "maxBlocksPerSecond"    # J
    .param p6, "blockWidth"    # I
    .param p7, "blockHeight"    # I
    .param p8, "widthAlignment"    # I
    .param p9, "heightAlignment"    # I

    .prologue
    .line 2005
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

    .line 2004
    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 2003
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 1578
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    .line 1579
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1580
    return-object v0
.end method

.method public static equivalentVP9Level(Landroid/media/MediaFormat;)I
    .locals 16
    .param p0, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 1681
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v11

    .line 1683
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v12, "block-size"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Landroid/util/Size;

    const/16 v14, 0x8

    const/16 v15, 0x8

    invoke-direct {v13, v14, v15}, Landroid/util/Size;-><init>(II)V

    invoke-static {v12, v13}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    .line 1684
    .local v8, "blockSize":Landroid/util/Size;
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v13

    mul-int v1, v12, v13

    .line 1686
    .local v1, "BS":I
    const-string/jumbo v12, "block-count-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v9

    .line 1687
    .local v9, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez v9, :cond_0

    const/4 v3, 0x0

    .line 1690
    .local v3, "FS":I
    :goto_0
    const-string/jumbo v12, "blocks-per-second-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v7

    .line 1691
    .local v7, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v7, :cond_1

    const-wide/16 v4, 0x0

    .line 1694
    .local v4, "SR":J
    :goto_1
    const-string/jumbo v12, "size-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 1695
    .local v10, "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v10, :cond_2

    const/4 v2, 0x0

    .line 1698
    .local v2, "D":I
    :goto_2
    const-string/jumbo v12, "bitrate-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    .line 1699
    .local v6, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez v6, :cond_3

    const/4 v0, 0x0

    .line 1701
    .local v0, "BR":I
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

    .line 1702
    const/4 v12, 0x1

    return v12

    .line 1687
    .end local v0    # "BR":I
    .end local v2    # "D":I
    .end local v3    # "FS":I
    .end local v4    # "SR":J
    .end local v6    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v7    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v10    # "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :cond_0
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int v3, v1, v12

    .restart local v3    # "FS":I
    goto :goto_0

    .line 1691
    .restart local v7    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_1
    int-to-long v14, v1

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    mul-long v4, v14, v12

    .restart local v4    # "SR":J
    goto :goto_1

    .line 1696
    .restart local v10    # "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
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

    .line 1695
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "D":I
    goto :goto_2

    .line 1699
    .restart local v6    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x3e8

    invoke-static {v12, v13}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .restart local v0    # "BR":I
    goto :goto_3

    .line 1703
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

    .line 1704
    const/4 v12, 0x2

    return v12

    .line 1705
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

    .line 1706
    const/4 v12, 0x4

    return v12

    .line 1707
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

    .line 1708
    const/16 v12, 0x8

    return v12

    .line 1709
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

    .line 1710
    const/16 v12, 0x10

    return v12

    .line 1711
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

    .line 1712
    const/16 v12, 0x20

    return v12

    .line 1713
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

    .line 1714
    const/16 v12, 0x40

    return v12

    .line 1715
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

    .line 1716
    const/16 v12, 0x80

    return v12

    .line 1717
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

    .line 1718
    const/16 v12, 0x100

    return v12

    .line 1719
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

    .line 1720
    const/16 v12, 0x200

    return v12

    .line 1721
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

    .line 1722
    const/16 v12, 0x400

    return v12

    .line 1723
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

    .line 1724
    const/16 v12, 0x800

    return v12

    .line 1725
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

    .line 1726
    const/16 v12, 0x1000

    return v12

    .line 1727
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

    .line 1728
    const/16 v12, 0x2000

    return v12

    .line 1730
    :cond_11
    const/16 v12, 0x2000

    return v12
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1436
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v2

    .line 1437
    .local v2, "size":Landroid/util/Size;
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 1438
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v3

    int-to-double v4, v3

    .line 1439
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    .line 1438
    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1440
    .local v1, "ratio":Ljava/lang/Double;
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
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1421
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    .line 1422
    .local v5, "targetBlockCount":I
    const/4 v0, 0x0

    .line 1423
    .local v0, "closestSize":Landroid/util/Size;
    const v2, 0x7fffffff

    .line 1424
    .local v2, "minDiff":I
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v0    # "closestSize":Landroid/util/Size;
    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 1426
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v6

    .line 1425
    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1427
    .local v1, "diff":I
    if-ge v1, v2, :cond_0

    .line 1428
    move v2, v1

    .line 1429
    move-object v0, v3

    .local v0, "closestSize":Landroid/util/Size;
    goto :goto_0

    .line 1432
    .end local v0    # "closestSize":Landroid/util/Size;
    .end local v1    # "diff":I
    .end local v3    # "size":Landroid/util/Size;
    :cond_1
    return-object v0
.end method

.method private getBlockCount(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1416
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

    .prologue
    .line 1638
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1639
    .local v5, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/util/Range<Ljava/lang/Long;>;>;"
    const-string/jumbo v3, "measured-frame-rate-"

    .line 1640
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1641
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1643
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1646
    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1647
    .local v8, "subKey":Ljava/lang/String;
    const-string/jumbo v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1648
    .local v9, "temp":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    .line 1651
    const/4 v10, 0x3

    aget-object v7, v9, v10

    .line 1652
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    .line 1653
    .local v6, "size":Landroid/util/Size;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-lez v10, :cond_0

    .line 1656
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 1657
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
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

    .line 1660
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1662
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "sizeStr":Ljava/lang/String;
    .end local v8    # "subKey":Ljava/lang/String;
    .end local v9    # "temp":[Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private initWithPlatformLimits()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1613
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1615
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1616
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1617
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1619
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1620
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1623
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1624
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1626
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1627
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1630
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1631
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1632
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1633
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1634
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1612
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 25
    .param p1, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 1734
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v21

    .line 1735
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v16, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1736
    .local v16, "blockSize":Landroid/util/Size;
    new-instance v12, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1737
    .local v12, "alignment":Landroid/util/Size;
    const/16 v17, 0x0

    .local v17, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    .local v24, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 1738
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 1739
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 1740
    .local v14, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v15, 0x0

    .line 1742
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "block-size"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v16

    .line 1743
    const-string/jumbo v2, "alignment"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    .line 1744
    const-string/jumbo v2, "block-count-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v17

    .line 1746
    .local v17, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string/jumbo v2, "blocks-per-second-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v14

    .line 1747
    .local v14, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 1749
    const-string/jumbo v2, "size-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v23

    .line 1750
    .local v23, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v23, :cond_0

    .line 1751
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    .end local v24    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    check-cast v24, Landroid/util/Range;

    .line 1752
    .local v24, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    .end local v20    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    check-cast v20, Landroid/util/Range;

    .line 1758
    .end local v24    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    const-string/jumbo v2, "feature-can-swap-width-height"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1759
    if-eqz v24, :cond_d

    .line 1761
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

    .line 1760
    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1762
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v20

    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v24, v20

    .line 1772
    .end local v20    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    const-string/jumbo v2, "block-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 1771
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v22

    .line 1774
    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "pixel-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 1773
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    .line 1775
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string/jumbo v2, "frame-rate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v19

    .line 1776
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_2

    .line 1778
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1785
    .end local v19    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    const-string/jumbo v2, "bitrate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v13

    .line 1786
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_3

    .line 1788
    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 1797
    .end local v13    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_3
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string/jumbo v3, "block-size width must be power of two"

    .line 1796
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1799
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string/jumbo v3, "block-size height must be power of two"

    .line 1798
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1802
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string/jumbo v3, "alignment width must be power of two"

    .line 1801
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1804
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string/jumbo v3, "alignment height must be power of two"

    .line 1803
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    .line 1809
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 1810
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v11

    .line 1808
    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    .line 1809
    const-wide v6, 0x7fffffffffffffffL

    move-object/from16 v2, p0

    .line 1807
    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v2, :cond_f

    .line 1815
    :cond_4
    if-eqz v24, :cond_5

    .line 1816
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1818
    :cond_5
    if-eqz v20, :cond_6

    .line 1819
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1821
    :cond_6
    if-eqz v17, :cond_7

    .line 1822
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v2

    .line 1823
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 1824
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 1823
    div-int/2addr v3, v4

    .line 1824
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 1823
    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    .line 1822
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1826
    :cond_7
    if-eqz v14, :cond_8

    .line 1827
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v2

    .line 1828
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 1829
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 1828
    div-int/2addr v3, v4

    .line 1829
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 1828
    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    .line 1827
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1831
    :cond_8
    if-eqz v15, :cond_9

    .line 1832
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v2

    .line 1834
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    .line 1835
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    .line 1833
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    .line 1832
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1837
    :cond_9
    if-eqz v22, :cond_a

    .line 1838
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1840
    :cond_a
    if-eqz v19, :cond_b

    .line 1841
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1843
    :cond_b
    if-eqz v13, :cond_c

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    .line 1846
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1885
    :cond_c
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1733
    return-void

    .line 1764
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_d
    const-string/jumbo v2, "VideoCapabilities"

    const-string/jumbo v3, "feature can-swap-width-height is best used with size-range"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
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

    .line 1765
    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1767
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

    .line 1779
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v22, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :catch_0
    move-exception v18

    .line 1780
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "frame rate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1781
    const-string/jumbo v4, ") is out of limits: "

    .line 1780
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1781
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v4

    .line 1780
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/16 v19, 0x0

    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 1789
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v18

    .line 1790
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bitrate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1791
    const-string/jumbo v4, ") is out of limits: "

    .line 1790
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1791
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v4

    .line 1790
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/4 v13, 0x0

    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto/16 :goto_2

    .line 1848
    .end local v13    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_3

    .line 1853
    :cond_f
    if-eqz v24, :cond_10

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1856
    :cond_10
    if-eqz v20, :cond_11

    .line 1857
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1859
    :cond_11
    if-eqz v17, :cond_12

    .line 1860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1861
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 1862
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 1861
    div-int/2addr v3, v4

    .line 1862
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 1861
    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    .line 1860
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1864
    :cond_12
    if-eqz v14, :cond_13

    .line 1865
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1866
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 1867
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 1866
    div-int/2addr v3, v4

    .line 1867
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 1866
    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    .line 1865
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1869
    :cond_13
    if-eqz v15, :cond_14

    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1872
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    .line 1873
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    .line 1871
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    .line 1870
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1875
    :cond_14
    if-eqz v22, :cond_15

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1878
    :cond_15
    if-eqz v19, :cond_16

    .line 1879
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1881
    :cond_16
    if-eqz v13, :cond_c

    .line 1882
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
    .param p0, "o"    # Ljava/lang/Object;
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

    .prologue
    const/4 v5, 0x0

    .line 1666
    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1667
    .local v1, "range":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v1, :cond_0

    .line 1670
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

    .line 1671
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

    .line 1669
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Ljava/lang/IllegalArgumentException;
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

    .line 1676
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v5
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 10
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    .prologue
    const/4 v6, 0x0

    .line 1519
    const/4 v4, 0x1

    .line 1521
    .local v4, "ok":Z
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1522
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v7, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1523
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_4

    const/4 v4, 0x1

    .line 1525
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 1526
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v7, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1527
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v7, v8

    if-nez v7, :cond_6

    const/4 v4, 0x1

    .line 1529
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    .line 1530
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    .line 1532
    .end local v4    # "ok":Z
    :cond_2
    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1533
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v7, v8, :cond_8

    const/4 v4, 0x1

    .line 1535
    .restart local v4    # "ok":Z
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v7, v8}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    .line 1536
    .local v5, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v7, v8}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 1537
    .local v1, "heightInBlocks":I
    mul-int v0, v5, v1

    .line 1538
    .local v0, "blockCount":I
    if-eqz v4, :cond_9

    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1539
    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1540
    new-instance v8, Landroid/util/Rational;

    invoke-direct {v8, v5, v1}, Landroid/util/Rational;-><init>(II)V

    .line 1539
    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    .line 1538
    if-eqz v7, :cond_9

    .line 1541
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    .line 1542
    .local v4, "ok":Z
    :goto_3
    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 1543
    int-to-double v6, v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 1544
    .local v2, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1545
    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    .line 1544
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    .line 1548
    .end local v0    # "blockCount":I
    .end local v1    # "heightInBlocks":I
    .end local v2    # "blocksPerSec":D
    .end local v4    # "ok":Z
    .end local v5    # "widthInBlocks":I
    :cond_3
    return v4

    .line 1523
    .local v4, "ok":Z
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1522
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1527
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1526
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1533
    .end local v4    # "ok":Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "ok":Z
    goto :goto_2

    .restart local v0    # "blockCount":I
    .restart local v1    # "heightInBlocks":I
    .restart local v5    # "widthInBlocks":I
    :cond_9
    move v4, v6

    .line 1538
    goto :goto_3
.end method

.method private updateLimits()V
    .locals 8

    .prologue
    .line 1949
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1950
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 1949
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1951
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1953
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

    .line 1954
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

    .line 1952
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 1951
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1955
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1956
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 1955
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1957
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1959
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

    .line 1960
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

    .line 1958
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 1957
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1961
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1963
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1964
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1963
    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1965
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1966
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1965
    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1962
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 1961
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1967
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1968
    new-instance v2, Landroid/util/Rational;

    .line 1969
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

    .line 1968
    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    .line 1970
    new-instance v3, Landroid/util/Rational;

    .line 1971
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

    .line 1970
    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    .line 1967
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1974
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1975
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

    .line 1976
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

    .line 1974
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1977
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1978
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

    .line 1979
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

    .line 1977
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1980
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1981
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

    .line 1982
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

    .line 1980
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1985
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1986
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

    .line 1984
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1989
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1990
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

    .line 1991
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

    .line 1989
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1992
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1993
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1994
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 1993
    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1995
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    .line 1996
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    .line 1995
    div-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1992
    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1947
    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .prologue
    .line 1507
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
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1493
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1494
    :cond_1
    const-string/jumbo v0, "VideoCapabilities"

    const-string/jumbo v1, "Codec did not publish any measurement data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    return-object v2

    .line 1498
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .locals 1
    .param p1, "blocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1609
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

    .prologue
    .line 1235
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

    .prologue
    .line 1599
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 1594
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

    .prologue
    .line 1604
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    .prologue
    .line 1286
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

    .prologue
    .line 1298
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1402
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1403
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unsupported size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1406
    :cond_0
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    mul-int v0, v2, v3

    .line 1409
    .local v0, "blockCount":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v0

    div-double v4, v2, v4

    .line 1410
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    .line 1409
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1411
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    .line 1412
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v6, v2

    .line 1411
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1408
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

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1351
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1352
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1353
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 1354
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "e":Ljava/lang/IllegalArgumentException;
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

    .line 1385
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1356
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 1360
    .local v4, "widthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    .line 1361
    int-to-double v8, v4

    .line 1362
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    .line 1361
    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1359
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1364
    .local v2, "minHeightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v4

    .line 1365
    int-to-double v8, v4

    .line 1366
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    .line 1365
    div-double/2addr v8, v10

    double-to-int v5, v8

    .line 1363
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1368
    .local v1, "maxHeightInBlocks":I
    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1369
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1367
    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1372
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    .line 1373
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1378
    :cond_2
    int-to-double v6, p1

    .line 1379
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    .line 1378
    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1380
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

    .line 1377
    invoke-virtual {v3, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1381
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

    .prologue
    .line 1242
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1307
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1308
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1309
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 1310
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/lang/IllegalArgumentException;
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

    .line 1341
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1312
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 1316
    .local v1, "heightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    .line 1317
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    .line 1318
    int-to-double v10, v1

    .line 1317
    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 1315
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1320
    .local v3, "minWidthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v1

    .line 1321
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    .line 1322
    int-to-double v10, v1

    .line 1321
    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 1319
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1324
    .local v2, "maxWidthInBlocks":I
    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1325
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1323
    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    .line 1328
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    .line 1329
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    .line 1334
    :cond_2
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    .line 1335
    int-to-double v8, p1

    .line 1334
    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1336
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

    .line 1333
    invoke-virtual {v4, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1337
    return-object v4
.end method

.method public getWidthAlignment()I
    .locals 1

    .prologue
    .line 1259
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 1585
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1586
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    .line 1587
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    .line 1588
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1589
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1584
    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1515
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
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v5, 0x0

    .line 1555
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 1556
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "width"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1557
    .local v3, "width":Ljava/lang/Integer;
    const-string/jumbo v4, "height"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1558
    .local v0, "height":Ljava/lang/Integer;
    const-string/jumbo v4, "frame-rate"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 1560
    .local v2, "rate":Ljava/lang/Number;
    invoke-direct {p0, v3, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1561
    return v5

    .line 1564
    :cond_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-wrap0(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1565
    return v5

    .line 1569
    :cond_1
    const/4 v4, 0x1

    return v4
.end method
