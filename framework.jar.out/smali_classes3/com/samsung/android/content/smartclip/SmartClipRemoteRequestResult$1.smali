.class final Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult$1;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
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
        "Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult$1;->newArray(I)[Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object v0

    return-object v0
.end method
