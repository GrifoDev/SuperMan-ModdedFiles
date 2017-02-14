.class final Lcom/samsung/android/infoextraction/SemExtractedInfo$1;
.super Ljava/lang/Object;
.source "SemExtractedInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/SemExtractedInfo;
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
        "Lcom/samsung/android/infoextraction/SemExtractedInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/SemExtractedInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/infoextraction/SemExtractedInfo;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/SemExtractedInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/infoextraction/SemExtractedInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/SemExtractedInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/infoextraction/SemExtractedInfo;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/infoextraction/SemExtractedInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;->newArray(I)[Lcom/samsung/android/infoextraction/SemExtractedInfo;

    move-result-object v0

    return-object v0
.end method
