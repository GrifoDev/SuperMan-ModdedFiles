.class final Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
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
        "Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 908
    .local v0, "seId":I
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    invoke-direct {v1, v0}, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 913
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 912
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    move-result-object v0

    return-object v0
.end method
