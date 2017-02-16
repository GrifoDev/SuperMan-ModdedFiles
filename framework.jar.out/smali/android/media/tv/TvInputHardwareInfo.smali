.class public final Landroid/media/tv/TvInputHardwareInfo;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputHardwareInfo$1;,
        Landroid/media/tv/TvInputHardwareInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "TvInputHardwareInfo"

.field public static final TV_INPUT_TYPE_COMPONENT:I = 0x6

.field public static final TV_INPUT_TYPE_COMPOSITE:I = 0x3

.field public static final TV_INPUT_TYPE_DISPLAY_PORT:I = 0xa

.field public static final TV_INPUT_TYPE_DVI:I = 0x8

.field public static final TV_INPUT_TYPE_HDMI:I = 0x9

.field public static final TV_INPUT_TYPE_OTHER_HARDWARE:I = 0x1

.field public static final TV_INPUT_TYPE_SCART:I = 0x5

.field public static final TV_INPUT_TYPE_SVIDEO:I = 0x4

.field public static final TV_INPUT_TYPE_TUNER:I = 0x2

.field public static final TV_INPUT_TYPE_VGA:I = 0x7


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mDeviceId:I

.field private mHdmiPortId:I

.field private mType:I


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputHardwareInfo;)I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method static synthetic -set0(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return p1
.end method

.method static synthetic -set2(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return p1
.end method

.method static synthetic -set3(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return p1
.end method

.method static synthetic -set4(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$1;-><init>()V

    .line 47
    sput-object v0, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/media/tv/TvInputHardwareInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return v0
.end method

.method public getHdmiPortId()I
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    .line 135
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    .line 130
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TvInputHardwareInfo {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, ", audio_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, ", audio_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 107
    const-string/jumbo v1, ", hdmi_port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 126
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    :cond_0
    return-void
.end method
