.class final Landroid/os/ParcelableException$1;
.super Ljava/lang/Object;
.source "ParcelableException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelableException;
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
        "Landroid/os/ParcelableException;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableException;
    .locals 2

    new-instance v0, Landroid/os/ParcelableException;

    invoke-static {p1}, Landroid/os/ParcelableException;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/ParcelableException$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableException;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/ParcelableException;
    .locals 1

    new-array v0, p1, [Landroid/os/ParcelableException;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/ParcelableException$1;->newArray(I)[Landroid/os/ParcelableException;

    move-result-object v0

    return-object v0
.end method
