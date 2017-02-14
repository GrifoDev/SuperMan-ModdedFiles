.class final Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano$1;
.super Ljava/lang/Object;
.source "ParcelableExtendableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
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
        "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/nano/android/ParcelingUtil;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano",
            "<*>;"
        }
    .end annotation

    new-array v0, p1, [Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano$1;->newArray(I)[Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method
