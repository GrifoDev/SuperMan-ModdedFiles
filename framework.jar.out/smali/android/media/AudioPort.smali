.class public Landroid/media/AudioPort;
.super Ljava/lang/Object;
.source "AudioPort.java"


# static fields
.field public static final ROLE_NONE:I = 0x0

.field public static final ROLE_SINK:I = 0x2

.field public static final ROLE_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPort"

.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SESSION:I = 0x3

.field public static final TYPE_SUBMIX:I = 0x2


# instance fields
.field private mActiveConfig:Landroid/media/AudioPortConfig;

.field private final mChannelIndexMasks:[I

.field private final mChannelMasks:[I

.field private final mFormats:[I

.field private final mGains:[Landroid/media/AudioGain;

.field mHandle:Landroid/media/AudioHandle;

.field private final mName:Ljava/lang/String;

.field protected final mRole:I

.field private final mSamplingRates:[I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .locals 0
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "role"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "samplingRates"    # [I
    .param p5, "channelMasks"    # [I
    .param p6, "channelIndexMasks"    # [I
    .param p7, "formats"    # [I
    .param p8, "gains"    # [Landroid/media/AudioGain;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    .line 84
    iput p2, p0, Landroid/media/AudioPort;->mRole:I

    .line 85
    iput-object p3, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    .line 87
    iput-object p5, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    .line 88
    iput-object p6, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    .line 89
    iput-object p7, p0, Landroid/media/AudioPort;->mFormats:[I

    .line 90
    iput-object p8, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    .line 81
    return-void
.end method


# virtual methods
.method public activeConfig()Landroid/media/AudioPortConfig;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/media/AudioPort;->mActiveConfig:Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 6
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    .prologue
    .line 184
    new-instance v0, Landroid/media/AudioPortConfig;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-object v0
.end method

.method public channelIndexMasks()[I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    return-object v0
.end method

.method public channelMasks()[I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/media/AudioPort;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 199
    check-cast v0, Landroid/media/AudioPort;

    .line 200
    .local v0, "ap":Landroid/media/AudioPort;
    iget-object v1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 197
    .end local v0    # "ap":Landroid/media/AudioPort;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public formats()[I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioPort;->mFormats:[I

    return-object v0
.end method

.method gain(I)Landroid/media/AudioGain;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 167
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_1
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public gains()[Landroid/media/AudioGain;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    return-object v0
.end method

.method handle()Landroid/media/AudioHandle;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public role()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioPort;->mRole:I

    return v0
.end method

.method public samplingRates()[I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    iget v1, p0, Landroid/media/AudioPort;->mRole:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "role":Ljava/lang/String;
    iget v1, p0, Landroid/media/AudioPort;->mRole:I

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{mHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    const-string/jumbo v2, ", mRole: "

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    const-string/jumbo v2, "}"

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 213
    :pswitch_0
    const-string/jumbo v0, "NONE"

    goto :goto_0

    .line 216
    :pswitch_1
    const-string/jumbo v0, "SOURCE"

    goto :goto_0

    .line 219
    :pswitch_2
    const-string/jumbo v0, "SINK"

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
