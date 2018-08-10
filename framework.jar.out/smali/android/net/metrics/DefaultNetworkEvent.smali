.class public final Landroid/net/metrics/DefaultNetworkEvent;
.super Ljava/lang/Object;
.source "DefaultNetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DefaultNetworkEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netId:I

.field public final prevIPv4:Z

.field public final prevIPv6:Z

.field public final prevNetId:I

.field public final transportTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DefaultNetworkEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DefaultNetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iput-object p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    iput p3, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    iput-boolean p4, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    iput-boolean p5, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private ipSupport()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DUAL"

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IPv6"

    return-object v0

    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IPv4"

    return-object v0

    :cond_2
    const-string/jumbo v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/net/metrics/DefaultNetworkEvent;->ipSupport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    invoke-static {v3}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v2, "DefaultNetworkEvent(%s -> %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
