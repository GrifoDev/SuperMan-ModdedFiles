.class final Landroid/media/browse/MediaBrowser$MediaItem$1;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser$MediaItem;
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
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 785
    new-instance v0, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/os/Parcel;Landroid/media/browse/MediaBrowser$MediaItem;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Landroid/media/browse/MediaBrowser$MediaItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/browse/MediaBrowser$MediaItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 790
    new-array v0, p1, [Landroid/media/browse/MediaBrowser$MediaItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Landroid/media/browse/MediaBrowser$MediaItem$1;->newArray(I)[Landroid/media/browse/MediaBrowser$MediaItem;

    move-result-object v0

    return-object v0
.end method
