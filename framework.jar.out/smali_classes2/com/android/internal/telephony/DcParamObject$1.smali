.class final Lcom/android/internal/telephony/DcParamObject$1;
.super Ljava/lang/Object;
.source "DcParamObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DcParamObject;
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
        "Lcom/android/internal/telephony/DcParamObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/DcParamObject;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    new-instance v0, Lcom/android/internal/telephony/DcParamObject;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/DcParamObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DcParamObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/DcParamObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/DcParamObject;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 51
    new-array v0, p1, [Lcom/android/internal/telephony/DcParamObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DcParamObject$1;->newArray(I)[Lcom/android/internal/telephony/DcParamObject;

    move-result-object v0

    return-object v0
.end method
