.class final Landroid/hardware/hdmi/HdmiHotplugEvent$1;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiHotplugEvent;
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
        "Landroid/hardware/hdmi/HdmiHotplugEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, "port":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 99
    .local v0, "connected":Z
    :goto_0
    new-instance v2, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v2, v1, v0}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    return-object v2

    .line 98
    .end local v0    # "connected":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "connected":Z
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 103
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiHotplugEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object v0

    return-object v0
.end method
