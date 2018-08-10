.class public final Landroid/bluetooth/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecConfig$1;
    }
.end annotation


# static fields
.field public static final BITS_PER_SAMPLE_16:I = 0x1

.field public static final BITS_PER_SAMPLE_24:I = 0x2

.field public static final BITS_PER_SAMPLE_32:I = 0x4

.field public static final BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final CHANNEL_MODE_MONO:I = 0x1

.field public static final CHANNEL_MODE_NONE:I = 0x0

.field public static final CHANNEL_MODE_STEREO:I = 0x2

.field public static final CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLE_RATE_176400:I = 0x10

.field public static final SAMPLE_RATE_192000:I = 0x20

.field public static final SAMPLE_RATE_44100:I = 0x1

.field public static final SAMPLE_RATE_48000:I = 0x2

.field public static final SAMPLE_RATE_88200:I = 0x4

.field public static final SAMPLE_RATE_96000:I = 0x8

.field public static final SAMPLE_RATE_NONE:I = 0x0

.field public static final SOURCE_CODEC_TYPE_AAC:I = 0x1

.field public static final SOURCE_CODEC_TYPE_APTX:I = 0x2

.field public static final SOURCE_CODEC_TYPE_APTX_HD:I = 0x3

.field public static final SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final SOURCE_CODEC_TYPE_LDAC:I = 0x4

.field public static final SOURCE_CODEC_TYPE_MAX:I = 0x7

.field public static final SOURCE_CODEC_TYPE_SBC:I = 0x0

.field public static final SOURCE_CODEC_TYPE_SSC:I = 0x6

.field public static final SOURCE_CODEC_TYPE_SSHD:I = 0x5


# instance fields
.field private final mBitsPerSample:I

.field private final mChannelMode:I

.field private mCodecPriority:I

.field private final mCodecSpecific1:J

.field private final mCodecSpecific2:J

.field private final mCodecSpecific3:J

.field private final mCodecSpecific4:J

.field private final mCodecType:I

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-void
.end method

.method private static appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/bluetooth/BluetoothCodecConfig;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getBitsPerSample()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public getChannelMode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "SBC"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "AAC"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "aptX"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "aptX HD"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "LDAC"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "SSHD"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "SSC"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "INVALID CODEC"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xf4240 -> :sswitch_7
    .end sparse-switch
.end method

.method public getCodecPriority()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public getCodecSpecific1()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public getCodecSpecific2()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public getCodecSpecific3()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public getCodecSpecific4()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public getCodecType()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMandatoryCodec()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValid()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCodecPriority(I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-nez v3, :cond_0

    const-string/jumbo v3, "NONE"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const-string/jumbo v3, "44100"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const-string/jumbo v3, "48000"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    const-string/jumbo v3, "88200"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    const-string/jumbo v3, "96000"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    const-string/jumbo v3, "176400"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_6

    const-string/jumbo v3, "192000"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    const/4 v0, 0x0

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-nez v3, :cond_7

    const-string/jumbo v3, "NONE"

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    const-string/jumbo v3, "16"

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    const-string/jumbo v3, "24"

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    const-string/jumbo v3, "32"

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    const/4 v1, 0x0

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-nez v3, :cond_b

    const-string/jumbo v3, "NONE"

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    const-string/jumbo v3, "MONO"

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_c
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const-string/jumbo v3, "STEREO"

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{codecName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mCodecType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mCodecPriority:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mSampleRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mBitsPerSample:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mChannelMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0x%x"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mCodecSpecific1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mCodecSpecific2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mCodecSpecific3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mCodecSpecific4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
