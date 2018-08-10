.class public final Landroid/hardware/display/SemDeviceInfo;
.super Ljava/lang/Object;
.source "SemDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SemDeviceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/SemDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DLNA:I = 0x4

.field public static final DLNA_STATE_CONNECTED:I = 0x1

.field public static final DLNA_STATE_ERROR:I = 0x2

.field public static final DLNA_STATE_NOT_CONNECTED:I = 0x0

.field public static final FLAG_AUDIO_ONLY:I = 0x8

.field public static final FLAG_AU_SHARING_LINK:I = 0x40

.field public static final FLAG_INITIATE_FROM_TV:I = 0x20

.field public static final FLAG_MIRROR_LINK:I = 0x4

.field public static final FLAG_NFC:I = 0x1

.field public static final FLAG_SIDE_SYNC:I = 0x2

.field public static final FLAG_SUPPORT_SWITCHING:I = 0x10

.field public static final GOOGLE_CAST:I = 0x3

.field public static final NONE:I = 0x0

.field public static final REMOTE_DISPLAY_PAUSED:I = 0x7

.field public static final REMOTE_DISPLAY_RESUMED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SemDeviceInfo"

.field public static final WIFI_DISPLAY_AP:I = 0x2

.field public static final WIFI_DISPLAY_P2P:I = 0x1


# instance fields
.field private mConnectType:I

.field private mDeviceName:Ljava/lang/String;

.field private mDlnaConnectionState:I

.field private mDlnaPlayerType:I

.field private mDlnaUid:Ljava/lang/String;

.field private mFlag:I

.field private mIpAddress:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mOption:Ljava/lang/String;

.field private mP2pMacAddress:Ljava/lang/String;

.field private mPendingRequest:Z

.field private mPinRequest:Z

.field private mPort:Ljava/lang/String;

.field private mRemoteDisplayState:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/SemDeviceInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/SemDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    iput p1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    iput p1, p0, Landroid/hardware/display/SemDeviceInfo;->mConnectType:I

    iput-object p2, p0, Landroid/hardware/display/SemDeviceInfo;->mKey:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mConnectType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPinRequest:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/hardware/display/SemDeviceInfo;->mPendingRequest:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mOption:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaConnectionState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaPlayerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaUid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPort:Ljava/lang/String;

    const-string/jumbo v0, "SemDeviceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemDeviceConnectInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public addFlag(I)V
    .locals 1

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flagToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ", FLAG_NFC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v1, ", FLAG_SIDE_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, ", FLAG_MIRROR_LINK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    const-string/jumbo v1, ", FLAG_AUDIO_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    const-string/jumbo v1, ", FLAG_SUPPORT_SWITCHING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    const-string/jumbo v1, ", FLAG_INITIATE_FROM_TV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    const-string/jumbo v1, ", FLAG_AU_SHARING_LINK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getConnectType()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mConnectType:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDlnaConnectionState()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaConnectionState:I

    return v0
.end method

.method public getDlnaPlayerType()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaPlayerType:I

    return v0
.end method

.method public getDlnaUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaUid:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mOption:Ljava/lang/String;

    return-object v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mP2pMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDisplayState()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isAuSharingLinkMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAudioOnlyMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInitiateFromTvMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMirrorLinkMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNfcMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPendingRequest()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPendingRequest:Z

    return v0
.end method

.method public isPinRequest()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPinRequest:Z

    return v0
.end method

.method public isSideSyncMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSwitchingMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setConnectType(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/SemDeviceInfo;->mConnectType:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDlnaConnectionState(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaConnectionState:I

    return-void
.end method

.method public setDlnaPlayerType(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaPlayerType:I

    return-void
.end method

.method public setDlnaUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaUid:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mIpAddress:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mOption:Ljava/lang/String;

    return-void
.end method

.method public setP2pMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mP2pMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setPendingRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/SemDeviceInfo;->mPendingRequest:Z

    return-void
.end method

.method public setPinRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/SemDeviceInfo;->mPinRequest:Z

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mPort:Ljava/lang/String;

    return-void
.end method

.method public setRemoteDisplayState(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/SemDeviceInfo;->mUri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemDeviceInfo  = {connectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDeviceInfo;->mConnectType:I

    invoke-virtual {p0, v2}, Landroid/hardware/display/SemDeviceInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", p2p mac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ip addr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", deviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    invoke-virtual {p0, v2}, Landroid/hardware/display/SemDeviceInfo;->flagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\t WifiDisplayInfo = {pinRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/SemDeviceInfo;->mPinRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pendingRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/SemDeviceInfo;->mPendingRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mOption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteDisplayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\t DlnaInfo = {dlnaConnectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dlnaPlayerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaPlayerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dlnaUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDeviceInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "NONE"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "WIFI_DISPLAY_AP"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "WIFI_DISPLAY_P2P"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "GOOGLE_CAST"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DLNA"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mConnectType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPinRequest:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPendingRequest:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mOption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaConnectionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaPlayerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mDlnaUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/display/SemDeviceInfo;->mRemoteDisplayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/SemDeviceInfo;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
