.class final Lcom/android/internal/widget/VerifyCredentialResponse$1;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/VerifyCredentialResponse;
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
        "Lcom/android/internal/widget/VerifyCredentialResponse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v1, v2, v5, v6, v6}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->-wrap1(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_2

    new-array v0, v4, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-static {v1, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->-wrap0(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_0

    new-array v3, v4, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse$1;->newArray(I)[Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
