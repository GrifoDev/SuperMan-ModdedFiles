.class final Lcom/samsung/android/infoextraction/KerykeionRequest$1;
.super Ljava/lang/Object;
.source "KerykeionRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/KerykeionRequest;
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
        "Lcom/samsung/android/infoextraction/KerykeionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/KerykeionRequest;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 114
    new-instance v0, Lcom/samsung/android/infoextraction/KerykeionRequest;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/KerykeionRequest;-><init>()V

    .line 115
    .local v0, "data":Lcom/samsung/android/infoextraction/KerykeionRequest;
    invoke-virtual {v0, p1}, Lcom/samsung/android/infoextraction/KerykeionRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 116
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/KerykeionRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/KerykeionRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/infoextraction/KerykeionRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 119
    new-array v0, p1, [Lcom/samsung/android/infoextraction/KerykeionRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/KerykeionRequest$1;->newArray(I)[Lcom/samsung/android/infoextraction/KerykeionRequest;

    move-result-object v0

    return-object v0
.end method
