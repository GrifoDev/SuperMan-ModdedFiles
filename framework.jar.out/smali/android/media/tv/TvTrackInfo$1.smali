.class final Landroid/media/tv/TvTrackInfo$1;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvTrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/media/tv/TvTrackInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvTrackInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 296
    new-instance v0, Landroid/media/tv/TvTrackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/media/tv/TvTrackInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/TvTrackInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 301
    new-array v0, p1, [Landroid/media/tv/TvTrackInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Landroid/media/tv/TvTrackInfo$1;->newArray(I)[Landroid/media/tv/TvTrackInfo;

    move-result-object v0

    return-object v0
.end method
