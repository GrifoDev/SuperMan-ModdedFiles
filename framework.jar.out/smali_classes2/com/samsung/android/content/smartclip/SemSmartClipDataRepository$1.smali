.class final Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;
.super Ljava/lang/Object;
.source "SemSmartClipDataRepository.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
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
        "Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 727
    const-string/jumbo v1, "SemSmartClipDataRepository"

    const-string/jumbo v2, "SemSmartClipDataRepository.createFromParcel called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>()V

    .line 730
    .local v0, "data":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->readFromParcel(Landroid/os/Parcel;)V

    .line 731
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 735
    new-array v0, p1, [Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 734
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;->newArray(I)[Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method
