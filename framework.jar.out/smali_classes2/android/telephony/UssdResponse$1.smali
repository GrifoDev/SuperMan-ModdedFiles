.class final Landroid/telephony/UssdResponse$1;
.super Ljava/lang/Object;
.source "UssdResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/UssdResponse;
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
        "Landroid/telephony/UssdResponse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UssdResponse;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Landroid/telephony/UssdResponse;

    invoke-direct {v2, v1, v0}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/UssdResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UssdResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/UssdResponse;
    .locals 1

    new-array v0, p1, [Landroid/telephony/UssdResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/UssdResponse$1;->newArray(I)[Landroid/telephony/UssdResponse;

    move-result-object v0

    return-object v0
.end method
