.class final Landroid/bluetooth/OobData$1;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/OobData;
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
        "Landroid/bluetooth/OobData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/OobData;
    .locals 2

    new-instance v0, Landroid/bluetooth/OobData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;Landroid/bluetooth/OobData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/OobData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/OobData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/OobData;
    .locals 1

    new-array v0, p1, [Landroid/bluetooth/OobData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/OobData$1;->newArray(I)[Landroid/bluetooth/OobData;

    move-result-object v0

    return-object v0
.end method
