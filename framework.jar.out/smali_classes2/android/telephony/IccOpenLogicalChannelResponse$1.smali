.class final Landroid/telephony/IccOpenLogicalChannelResponse$1;
.super Ljava/lang/Object;
.source "IccOpenLogicalChannelResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/IccOpenLogicalChannelResponse;
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
        "Landroid/telephony/IccOpenLogicalChannelResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    new-instance v0, Landroid/telephony/IccOpenLogicalChannelResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;Landroid/telephony/IccOpenLogicalChannelResponse;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/telephony/IccOpenLogicalChannelResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 122
    new-array v0, p1, [Landroid/telephony/IccOpenLogicalChannelResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/telephony/IccOpenLogicalChannelResponse$1;->newArray(I)[Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method
