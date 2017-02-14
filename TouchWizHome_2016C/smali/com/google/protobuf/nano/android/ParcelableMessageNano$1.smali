.class final Lcom/google/protobuf/nano/android/ParcelableMessageNano$1;
.super Ljava/lang/Object;
.source "ParcelableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/android/ParcelableMessageNano;
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
        "Lcom/google/protobuf/nano/android/ParcelableMessageNano;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/android/ParcelableMessageNano;
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/nano/android/ParcelingUtil;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/android/ParcelableMessageNano;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNano$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/android/ParcelableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/protobuf/nano/android/ParcelableMessageNano;
    .locals 1

    new-array v0, p1, [Lcom/google/protobuf/nano/android/ParcelableMessageNano;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNano$1;->newArray(I)[Lcom/google/protobuf/nano/android/ParcelableMessageNano;

    move-result-object v0

    return-object v0
.end method
