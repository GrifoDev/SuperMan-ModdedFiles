.class public Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;
    }
.end annotation


# static fields
.field private static final COUPLED_SINK_SUPPORT_AT_SINK:I = 0x8

.field private static final COUPLED_SINK_SUPPORT_AT_SOURCE:I = 0x4

.field private static final CP_SUPPORT_BIT:I = 0x100

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_TYPE:I = 0x3

.field public static final PRIMARY_SINK:I = 0x1

.field public static final SECONDARY_SINK:I = 0x2

.field private static final SESSION_AVAILABLE:I = 0x30

.field private static final SESSION_AVAILABLE_BIT1:I = 0x10

.field private static final SESSION_AVAILABLE_BIT2:I = 0x20

.field public static final SOURCE_OR_PRIMARY_SINK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiP2pWfdInfo"

.field public static final WFD_SOURCE:I


# instance fields
.field private mCtrlPort:I

.field private mDeviceInfo:I

.field private mMaxThroughput:I

.field private mWfdEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getControlPort()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    return v0
.end method

.method public getDeviceInfoHex()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%04x%04x%04x%04x"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMaxThroughput()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return v0
.end method

.method public isContentProtection()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCoupledSinkSupportedAtSink()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCoupledSinkSupportedAtSource()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSessionAvailable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWfdEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentProtection(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setControlPort(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    return-void
.end method

.method public setCoupledSinkSupportAtSink(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setCoupledSinkSupportAtSource(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setDeviceType(I)Z
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public setMaxThroughput(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return-void
.end method

.method public setSessionAvailable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setWfdEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "WFD enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "WFD DeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n WFD CtrlPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n WFD MaxThroughput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
