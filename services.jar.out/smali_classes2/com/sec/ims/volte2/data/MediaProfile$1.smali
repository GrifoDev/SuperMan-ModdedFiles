.class final Lcom/sec/ims/volte2/data/MediaProfile$1;
.super Ljava/lang/Object;
.source "MediaProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/MediaProfile;
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
        "Lcom/sec/ims/volte2/data/MediaProfile;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/volte2/data/MediaProfile;
    .locals 2

    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/MediaProfile;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/ims/volte2/data/MediaProfile;
    .locals 1

    new-array v0, p1, [Lcom/sec/ims/volte2/data/MediaProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile$1;->newArray(I)[Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    return-object v0
.end method
