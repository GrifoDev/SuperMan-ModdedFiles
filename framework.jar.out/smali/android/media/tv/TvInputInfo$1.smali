.class final Landroid/media/tv/TvInputInfo$1;
.super Ljava/lang/Object;
.source "TvInputInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
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
        "Landroid/media/tv/TvInputInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 613
    new-instance v0, Landroid/media/tv/TvInputInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/os/Parcel;Landroid/media/tv/TvInputInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 618
    new-array v0, p1, [Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputInfo$1;->newArray(I)[Landroid/media/tv/TvInputInfo;

    move-result-object v0

    return-object v0
.end method
