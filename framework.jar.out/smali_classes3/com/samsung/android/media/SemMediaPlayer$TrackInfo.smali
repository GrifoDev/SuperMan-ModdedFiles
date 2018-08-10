.class public Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$TrackInfo$1;
    }
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrackInfo"


# instance fields
.field private mChannel:I

.field private mFrameRate:I

.field private mMime:Ljava/lang/String;

.field private mSampleRate:I

.field private mTrackType:I

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    return v0
.end method

.method public getTrackType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mMime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mVideoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mFrameRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
