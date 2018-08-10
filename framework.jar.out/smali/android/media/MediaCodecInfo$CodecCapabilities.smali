.class public final Landroid/media/MediaCodecInfo$CodecCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecCapabilities"
.end annotation


# static fields
.field public static final COLOR_Format12bitRGB444:I = 0x3

.field public static final COLOR_Format16bitARGB1555:I = 0x5

.field public static final COLOR_Format16bitARGB4444:I = 0x4

.field public static final COLOR_Format16bitBGR565:I = 0x7

.field public static final COLOR_Format16bitRGB565:I = 0x6

.field public static final COLOR_Format18BitBGR666:I = 0x29

.field public static final COLOR_Format18bitARGB1665:I = 0x9

.field public static final COLOR_Format18bitRGB666:I = 0x8

.field public static final COLOR_Format19bitARGB1666:I = 0xa

.field public static final COLOR_Format24BitABGR6666:I = 0x2b

.field public static final COLOR_Format24BitARGB6666:I = 0x2a

.field public static final COLOR_Format24bitARGB1887:I = 0xd

.field public static final COLOR_Format24bitBGR888:I = 0xc

.field public static final COLOR_Format24bitRGB888:I = 0xb

.field public static final COLOR_Format25bitARGB1888:I = 0xe

.field public static final COLOR_Format32bitABGR8888:I = 0x7f00a000

.field public static final COLOR_Format32bitARGB8888:I = 0x10

.field public static final COLOR_Format32bitBGRA8888:I = 0xf

.field public static final COLOR_Format8bitRGB332:I = 0x2

.field public static final COLOR_FormatCbYCrY:I = 0x1b

.field public static final COLOR_FormatCrYCbY:I = 0x1c

.field public static final COLOR_FormatL16:I = 0x24

.field public static final COLOR_FormatL2:I = 0x21

.field public static final COLOR_FormatL24:I = 0x25

.field public static final COLOR_FormatL32:I = 0x26

.field public static final COLOR_FormatL4:I = 0x22

.field public static final COLOR_FormatL8:I = 0x23

.field public static final COLOR_FormatMonochrome:I = 0x1

.field public static final COLOR_FormatRGBAFlexible:I = 0x7f36a888

.field public static final COLOR_FormatRGBFlexible:I = 0x7f36b888

.field public static final COLOR_FormatRawBayer10bit:I = 0x1f

.field public static final COLOR_FormatRawBayer8bit:I = 0x1e

.field public static final COLOR_FormatRawBayer8bitcompressed:I = 0x20

.field public static final COLOR_FormatSurface:I = 0x7f000789

.field public static final COLOR_FormatYCbYCr:I = 0x19

.field public static final COLOR_FormatYCrYCb:I = 0x1a

.field public static final COLOR_FormatYUV411PackedPlanar:I = 0x12

.field public static final COLOR_FormatYUV411Planar:I = 0x11

.field public static final COLOR_FormatYUV420Flexible:I = 0x7f420888

.field public static final COLOR_FormatYUV420PackedPlanar:I = 0x14

.field public static final COLOR_FormatYUV420PackedSemiPlanar:I = 0x27

.field public static final COLOR_FormatYUV420Planar:I = 0x13

.field public static final COLOR_FormatYUV420SemiPlanar:I = 0x15

.field public static final COLOR_FormatYUV422Flexible:I = 0x7f422888

.field public static final COLOR_FormatYUV422PackedPlanar:I = 0x17

.field public static final COLOR_FormatYUV422PackedSemiPlanar:I = 0x28

.field public static final COLOR_FormatYUV422Planar:I = 0x16

.field public static final COLOR_FormatYUV422SemiPlanar:I = 0x18

.field public static final COLOR_FormatYUV444Flexible:I = 0x7f444888

.field public static final COLOR_FormatYUV444Interleaved:I = 0x1d

.field public static final COLOR_QCOM_FormatYUV420SemiPlanar:I = 0x7fa30c00

.field public static final COLOR_TI_FormatYUV420PackedSemiPlanar:I = 0x7f000100

.field public static final FEATURE_AdaptivePlayback:Ljava/lang/String; = "adaptive-playback"

.field public static final FEATURE_IntraRefresh:Ljava/lang/String; = "intra-refresh"

.field public static final FEATURE_PartialFrame:Ljava/lang/String; = "partial-frame"

.field public static final FEATURE_SecurePlayback:Ljava/lang/String; = "secure-playback"

.field public static final FEATURE_TunneledPlayback:Ljava/lang/String; = "tunneled-playback"

.field private static final TAG:Ljava/lang/String; = "CodecCapabilities"

.field private static final decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

.field private static final encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field public colorFormats:[I

.field private mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private mCapabilitiesInfo:Landroid/media/MediaFormat;

.field private mDefaultFormat:Landroid/media/MediaFormat;

.field private mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

.field mError:I

.field private mFlagsRequired:I

.field private mFlagsSupported:I

.field private mFlagsVerified:I

.field private mMaxSupportedInstances:I

.field private mMime:Ljava/lang/String;

.field private mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field public profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;


# direct methods
.method static synthetic -wrap0(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [Landroid/media/MediaCodecInfo$Feature;

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "adaptive-playback"

    invoke-direct {v1, v2, v5, v5}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "secure-playback"

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "tunneled-playback"

    invoke-direct {v1, v2, v6, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "partial-frame"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    new-array v0, v5, [Landroid/media/MediaCodecInfo$Feature;

    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    const-string/jumbo v2, "intra-refresh"

    invoke-direct {v1, v2, v5, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v4

    iput-object p2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    move/from16 v0, p4

    iput v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    move-object/from16 v0, p6

    iput-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const-string/jumbo v9, "mime"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    array-length v8, p1

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v9, "video/x-vnd.on2.vp9"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v6}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    const/4 v8, 0x1

    iput v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static/range {p6 .. p6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->equivalentVP9Level(Landroid/media/MediaFormat;)I

    move-result v8

    iput v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v8, 0x1

    new-array p1, v8, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 v8, 0x0

    aput-object v6, p1, v8

    :cond_0
    iput-object p1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "audio/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p6

    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v8

    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v8, v9}, Landroid/media/MediaCodecInfo$AudioCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    move-object/from16 v0, p6

    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v8

    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    iget-object v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    invoke-virtual {v8, v9}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->setDefaultFormat(Landroid/media/MediaFormat;)V

    :cond_2
    invoke-static {}, Landroid/media/MediaCodecList;->getGlobalSettings()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v8, "max-concurrent-instances"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v8, v9}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v8

    iput v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    const-string/jumbo v8, "max-concurrent-instances"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget v9, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    invoke-static {v8, v9}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v5

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_6

    aget-object v1, v9, v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "feature-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_4

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "video/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p6

    invoke-static {v0, p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v8

    iput-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_5

    iget v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    iget v12, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v11, v12

    iput v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    :cond_5
    iget v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iget v12, v1, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    or-int/2addr v11, v12

    iput v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    iget-object v11, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    const/4 v12, 0x1

    invoke-virtual {v11, v3, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method constructor <init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/MediaCodecInfo$CodecProfileLevel;",
            "[IZI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5, p5}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6, p6}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private checkFeature(Ljava/lang/String;I)Z
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    iget-object v5, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v2, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v7}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    iput p1, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput p2, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v1, "mime"

    invoke-virtual {v5, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    new-array v1, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v7, v1, v4

    new-array v2, v4, [I

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    iget v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0
.end method

.method private getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->decoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-object v0

    :cond_0
    sget-object v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->encoderFeatures:[Landroid/media/MediaCodecInfo$Feature;

    return-object v0
.end method

.method private isAudio()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEncoder()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideo()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static supportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "max-bitrate"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v3, "bitrate"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    return v3

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private supportsProfileLevel(ILjava/lang/Integer;)Z
    .locals 11

    const v10, 0x2aaaaaa

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_b

    aget-object v1, v6, v5

    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eq v8, p1, :cond_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v9, "audio/mp4a-latm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    return v3

    :cond_3
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v9, "video/3gpp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_4

    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v8, v3, :cond_0

    :cond_4
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v9, "video/mp4v-es"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_5

    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v8, v3, :cond_0

    :cond_5
    iget-object v8, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    const-string/jumbo v9, "video/hevc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_7

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/2addr v8, v10

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    xor-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_0

    :cond_6
    iget v8, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v8, v9, :cond_0

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v5, p1, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, p1, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    if-eqz v5, :cond_9

    :goto_3
    return v3

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    return v3

    :cond_b
    return v4
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 7

    new-instance v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    iget-object v3, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isEncoder()Z

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsVerified:I

    iget-object v5, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    iget-object v6, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mCapabilitiesInfo:Landroid/media/MediaFormat;

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;-><init>([Landroid/media/MediaCodecInfo$CodecProfileLevel;[IZILandroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    return-object v0
.end method

.method public getDefaultFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mDefaultFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    return-object v0
.end method

.method public getMaxSupportedInstances()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMaxSupportedInstances:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-object v0
.end method

.method public final isFeatureRequired(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsRequired:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isFeatureSupported(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mFlagsSupported:I

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->checkFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final isFormatSupported(Landroid/media/MediaFormat;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v12, "mime"

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    return v12

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v13

    const/4 v12, 0x0

    array-length v14, v13

    :goto_0
    if-ge v12, v14, :cond_5

    aget-object v1, v13, v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "feature-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_2

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    iget-object v15, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_4

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_1

    iget-object v15, v1, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_4
    const/4 v12, 0x0

    return v12

    :cond_5
    const-string/jumbo v12, "profile"

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const-string/jumbo v12, "level"

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->supportsProfileLevel(ILjava/lang/Integer;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x0

    return v12

    :cond_6
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/4 v12, 0x0

    array-length v14, v13

    :goto_1
    if-ge v12, v14, :cond_8

    aget-object v9, v13, v12

    iget v15, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    iget v15, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v15, v7, :cond_7

    iget v7, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mMime:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v12, v13, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->createFromProfileLevel(Ljava/lang/String;II)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string/jumbo v12, "profile"

    invoke-interface {v6, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2, v6}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    if-eqz v4, :cond_9

    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    return v12

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mAudioCaps:Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    return v12

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mVideoCaps:Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    return v12

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mEncoderCaps:Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supportsFormat(Landroid/media/MediaFormat;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    return v12

    :cond_c
    const/4 v12, 0x1

    return v12
.end method

.method public isRegular()Z
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    iget-boolean v5, v0, Landroid/media/MediaCodecInfo$Feature;->mDefault:Z

    if-nez v5, :cond_0

    iget-object v5, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public validFeatures()[Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getValidFeatures()[Landroid/media/MediaCodecInfo$Feature;

    move-result-object v0

    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
