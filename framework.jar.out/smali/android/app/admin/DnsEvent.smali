.class public final Landroid/app/admin/DnsEvent;
.super Landroid/app/admin/NetworkEvent;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DnsEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/DnsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hostname:Ljava/lang/String;

.field private final ipAddresses:[Ljava/lang/String;

.field private final ipAddressesCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/DnsEvent$1;

    invoke-direct {v0}, Landroid/app/admin/DnsEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/DnsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/admin/NetworkEvent;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DnsEvent;->hostname:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/DnsEvent;->ipAddressesCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DnsEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DnsEvent;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/DnsEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/DnsEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p4, p5, p6}, Landroid/app/admin/NetworkEvent;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Landroid/app/admin/DnsEvent;->hostname:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    iput p3, p0, Landroid/app/admin/DnsEvent;->ipAddressesCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddresses()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getTotalResolvedAddressCount()I
    .locals 1

    iget v0, p0, Landroid/app/admin/DnsEvent;->ipAddressesCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, "DnsEvent(%s, %s, %d, %d, %s)"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->hostname:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NONE"

    :goto_0
    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Landroid/app/admin/DnsEvent;->ipAddressesCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget-wide v4, p0, Landroid/app/admin/DnsEvent;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->packageName:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, " "

    iget-object v3, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->ipAddresses:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/app/admin/DnsEvent;->ipAddressesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/admin/DnsEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
