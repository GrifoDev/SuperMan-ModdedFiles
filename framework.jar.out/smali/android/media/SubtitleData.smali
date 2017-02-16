.class public final Landroid/media/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleData"


# instance fields
.field private mData:[B

.field private mDurationUs:J

.field private mStartTimeUs:J

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Landroid/media/SubtitleData;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    .line 83
    iget-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    return-wide v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    return-wide v0
.end method

.method public getTrackIndex()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    return v0
.end method
