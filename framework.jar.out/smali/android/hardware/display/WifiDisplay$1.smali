.class final Landroid/hardware/display/WifiDisplay$1;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/WifiDisplay;
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
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "deviceAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "deviceAlias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    const/4 v4, 0x1

    .line 54
    .local v4, "isAvailable":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v5, 0x1

    .line 55
    .local v5, "canConnect":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    const/4 v6, 0x1

    .line 57
    .local v6, "isRemembered":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "deviceType":Ljava/lang/String;
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 60
    .local v0, "wifiDisplay":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 61
    .local v9, "iconIdx":I
    invoke-virtual {v0, v9}, Landroid/hardware/display/WifiDisplay;->setIconIdx(I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 64
    .local v8, "devInfo":I
    invoke-virtual {v0, v8}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "uri":Ljava/lang/String;
    invoke-virtual {v0, v12}, Landroid/hardware/display/WifiDisplay;->setUri(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v10, 0x1

    .line 68
    .local v10, "isEmptySurface":Z
    :goto_3
    invoke-virtual {v0, v10}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v11, 0x1

    .line 71
    .local v11, "mOnlySupportsAudio":Z
    :goto_4
    invoke-virtual {v0, v11}, Landroid/hardware/display/WifiDisplay;->setOnlySupportsAudio(Z)V

    .line 72
    return-object v0

    .line 53
    .end local v0    # "wifiDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v4    # "isAvailable":Z
    .end local v5    # "canConnect":Z
    .end local v6    # "isRemembered":Z
    .end local v7    # "deviceType":Ljava/lang/String;
    .end local v8    # "devInfo":I
    .end local v9    # "iconIdx":I
    .end local v10    # "isEmptySurface":Z
    .end local v11    # "mOnlySupportsAudio":Z
    .end local v12    # "uri":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "isAvailable":Z
    goto :goto_0

    .line 54
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "canConnect":Z
    goto :goto_1

    .line 55
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "isRemembered":Z
    goto :goto_2

    .line 67
    .restart local v0    # "wifiDisplay":Landroid/hardware/display/WifiDisplay;
    .restart local v7    # "deviceType":Ljava/lang/String;
    .restart local v8    # "devInfo":I
    .restart local v9    # "iconIdx":I
    .restart local v12    # "uri":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 70
    .restart local v10    # "isEmptySurface":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 80
    if-nez p1, :cond_0

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [Landroid/hardware/display/WifiDisplay;

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay$1;->newArray(I)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method
