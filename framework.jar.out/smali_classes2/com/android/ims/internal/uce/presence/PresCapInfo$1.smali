.class final Lcom/android/ims/internal/uce/presence/PresCapInfo$1;
.super Ljava/lang/Object;
.source "PresCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresCapInfo;
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
        "Lcom/android/ims/internal/uce/presence/PresCapInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCapInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresCapInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [Lcom/android/ims/internal/uce/presence/PresCapInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresCapInfo;

    move-result-object v0

    return-object v0
.end method
