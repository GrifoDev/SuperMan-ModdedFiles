.class final Landroid/hardware/usb/UsbPort$1;
.super Ljava/lang/Object;
.source "UsbPort.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPort;
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
        "Landroid/hardware/usb/UsbPort;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPort;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .local v1, "supportedModes":I
    new-instance v2, Landroid/hardware/usb/UsbPort;

    invoke-direct {v2, v0, v1}, Landroid/hardware/usb/UsbPort;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPort$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPort;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbPort;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 235
    new-array v0, p1, [Landroid/hardware/usb/UsbPort;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPort$1;->newArray(I)[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    return-object v0
.end method
