.class final Lcom/android/internal/util/ParcelableString$1;
.super Ljava/lang/Object;
.source "ParcelableString.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ParcelableString;
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
        "Lcom/android/internal/util/ParcelableString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/util/ParcelableString;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    new-instance v0, Lcom/android/internal/util/ParcelableString;

    invoke-direct {v0}, Lcom/android/internal/util/ParcelableString;-><init>()V

    .line 44
    .local v0, "ret":Lcom/android/internal/util/ParcelableString;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    .line 45
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/util/ParcelableString$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/util/ParcelableString;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/util/ParcelableString;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    new-array v0, p1, [Lcom/android/internal/util/ParcelableString;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/util/ParcelableString$1;->newArray(I)[Lcom/android/internal/util/ParcelableString;

    move-result-object v0

    return-object v0
.end method
