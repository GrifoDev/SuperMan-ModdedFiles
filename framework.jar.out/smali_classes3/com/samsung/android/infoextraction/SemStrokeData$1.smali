.class final Lcom/samsung/android/infoextraction/SemStrokeData$1;
.super Ljava/lang/Object;
.source "SemStrokeData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/SemStrokeData;
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
        "Lcom/samsung/android/infoextraction/SemStrokeData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/SemStrokeData;
    .locals 1

    new-instance v0, Lcom/samsung/android/infoextraction/SemStrokeData;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/SemStrokeData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/infoextraction/SemStrokeData;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/SemStrokeData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/SemStrokeData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/infoextraction/SemStrokeData;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/infoextraction/SemStrokeData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/SemStrokeData$1;->newArray(I)[Lcom/samsung/android/infoextraction/SemStrokeData;

    move-result-object v0

    return-object v0
.end method
