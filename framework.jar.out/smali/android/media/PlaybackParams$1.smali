.class final Landroid/media/PlaybackParams$1;
.super Ljava/lang/Object;
.source "PlaybackParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlaybackParams;
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
        "Landroid/media/PlaybackParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/PlaybackParams;
    .locals 2

    new-instance v0, Landroid/media/PlaybackParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;Landroid/media/PlaybackParams;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/PlaybackParams;
    .locals 1

    new-array v0, p1, [Landroid/media/PlaybackParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams$1;->newArray(I)[Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method
