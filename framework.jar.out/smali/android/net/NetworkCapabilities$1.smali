.class final Landroid/net/NetworkCapabilities$1;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkCapabilities;
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
        "Landroid/net/NetworkCapabilities;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;
    .locals 4

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/net/NetworkCapabilities;->-set2(Landroid/net/NetworkCapabilities;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/net/NetworkCapabilities;->-set5(Landroid/net/NetworkCapabilities;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-set1(Landroid/net/NetworkCapabilities;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-set0(Landroid/net/NetworkCapabilities;I)I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkSpecifier;

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-set3(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkSpecifier;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkCapabilities;->-set4(Landroid/net/NetworkCapabilities;I)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkCapabilities;
    .locals 1

    new-array v0, p1, [Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$1;->newArray(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method
