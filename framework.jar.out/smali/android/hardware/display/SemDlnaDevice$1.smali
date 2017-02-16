.class final Landroid/hardware/display/SemDlnaDevice$1;
.super Ljava/lang/Object;
.source "SemDlnaDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemDlnaDevice;
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
        "Landroid/hardware/display/SemDlnaDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemDlnaDevice;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "deviceIpAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "deviceP2pMacAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "deviceMacAddressFromARP":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "deviceNICType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "uid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 88
    .local v7, "dlnaType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    .line 89
    .local v8, "isSwitchingDevice":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "uri":Ljava/lang/String;
    new-instance v0, Landroid/hardware/display/SemDlnaDevice;

    invoke-direct/range {v0 .. v9}, Landroid/hardware/display/SemDlnaDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 91
    .local v0, "dlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    return-object v0

    .line 88
    .end local v0    # "dlnaDevice":Landroid/hardware/display/SemDlnaDevice;
    .end local v8    # "isSwitchingDevice":Z
    .end local v9    # "uri":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "isSwitchingDevice":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemDlnaDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/SemDlnaDevice;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 94
    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/SemDlnaDevice;->EMPTY_ARRAY:[Landroid/hardware/display/SemDlnaDevice;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/SemDlnaDevice;

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemDlnaDevice$1;->newArray(I)[Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    return-object v0
.end method
