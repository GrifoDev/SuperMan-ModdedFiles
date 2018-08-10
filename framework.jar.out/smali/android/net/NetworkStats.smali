.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$1;,
        Landroid/net/NetworkStats$Entry;,
        Landroid/net/NetworkStats$NonMonotonicObserver;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String; = null

.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x0

.field public static final METERED_YES:I = 0x1

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x0

.field public static final ROAMING_YES:I = 0x1

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final STATS_PER_IFACE:I = 0x0

.field public static final STATS_PER_UID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private metered:[I

.field private operations:[J

.field private roaming:[I

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    if-ltz p3, :cond_0

    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method private addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 10

    const-wide/16 v8, 0x0

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object p3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    if-eq v3, p1, :cond_0

    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    :goto_1
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    :goto_2
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    :goto_3
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    :goto_4
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_5

    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->operations:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    :goto_5
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    iget-object v3, p0, Landroid/net/NetworkStats;->metered:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->metered:I

    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    const/16 v3, 0x3e9

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    goto :goto_1

    :cond_2
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    goto :goto_2

    :cond_3
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    goto :goto_3

    :cond_4
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    goto :goto_4

    :cond_5
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_5

    :cond_6
    return-object v1
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 9

    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v0, 0x3ea

    iput v0, p3, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v0, 0x0

    iput v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p3, Landroid/net/NetworkStats$Entry;->metered:I

    const/4 v0, -0x1

    iput v0, p3, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    invoke-static {v7, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    invoke-static {v8, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    :cond_1
    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iput v8, v0, Landroid/net/NetworkStats$Entry;->set:I

    iput v5, v0, Landroid/net/NetworkStats$Entry;->tag:I

    iput v8, v0, Landroid/net/NetworkStats$Entry;->metered:I

    iput v8, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v4, :cond_6

    if-eq p3, v8, :cond_0

    iget-object v4, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v4, v1

    if-ne p3, v4, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_2
    if-eqz p2, :cond_4

    iget-object v4, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_3
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/net/NetworkStats;->tag:[I

    aget v4, v4, v1

    if-eqz v4, :cond_5

    xor-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v6, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_4

    :cond_6
    return-object v0
.end method

.method public static meteredToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ALL"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "NO"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "YES"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static roamingToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ALL"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "NO"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "YES"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setMatches(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "unk"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "all"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "def"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "fg"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "vpnin"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "vpnout"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "ALL"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "FOREGROUND"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "DBG_VPN_IN"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "DBG_VPN_OUT"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v14, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_1

    if-eqz p2, :cond_0

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    :cond_0
    const-wide/16 v14, 0x0

    :cond_1
    new-instance v13, Landroid/net/NetworkStats$Entry;

    invoke-direct {v13}, Landroid/net/NetworkStats$Entry;-><init>()V

    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/NetworkStats;->size:I

    if-lt v2, v3, :cond_3

    move-object/from16 v16, p4

    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Landroid/net/NetworkStats;->size:I

    move-object/from16 v0, p4

    iput-wide v14, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    :goto_0
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    if-ge v9, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v9

    iput-object v2, v13, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v9

    iput v2, v13, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v9

    iput v2, v13, Landroid/net/NetworkStats$Entry;->set:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v9

    iput v2, v13, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->metered:[I

    aget v2, v2, v9

    iput v2, v13, Landroid/net/NetworkStats$Entry;->metered:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->roaming:[I

    aget v2, v2, v9

    iput v2, v13, Landroid/net/NetworkStats$Entry;->roaming:I

    iget-object v3, v13, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v13, Landroid/net/NetworkStats$Entry;->uid:I

    iget v5, v13, Landroid/net/NetworkStats$Entry;->set:I

    iget v6, v13, Landroid/net/NetworkStats$Entry;->tag:I

    iget v7, v13, Landroid/net/NetworkStats$Entry;->metered:I

    iget v8, v13, Landroid/net/NetworkStats$Entry;->roaming:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIIII)I

    move-result v11

    const/4 v2, -0x1

    if-ne v11, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v9

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v9

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v9

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v9

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v9

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->operations:J

    :cond_2
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    new-instance v16, Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v9

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    move-object/from16 v7, p2

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    invoke-interface/range {v7 .. v12}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    :cond_6
    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v13, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_2

    :cond_7
    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v13, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_3

    :cond_8
    return-object v16
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 4

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_3

    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p5, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    :cond_3
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-eq v2, p1, :cond_4

    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p4, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 6

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 12

    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v0

    aput-wide v10, v8, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v8, v0

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v2

    aput-wide v10, v8, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v8, v2

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v4

    aput-wide v10, v8, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v4

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v6

    aput-wide v10, v8, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    return-void
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 16

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6

    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/net/NetworkStats;->size:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->metered:I

    aput v3, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    aput v3, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v4, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v4, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v4, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v4, v1, v2

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v4, v1, v2

    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIIIJJJJJ)Landroid/net/NetworkStats;
    .locals 21

    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-direct/range {v3 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19

    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 8

    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v0, v7

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v0, v7

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v0, v7

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v0, v7

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v0, v7

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v7

    goto :goto_0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19

    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " metered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " roaming="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;IIIII)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    if-ne p5, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    if-ne p6, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public findIndexHinted(Ljava/lang/String;IIIIII)I
    .locals 5

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    div-int/lit8 v0, v2, 0x2

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    add-int v3, p7, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->metered:[I

    aget v3, v3, v1

    if-ne p5, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v3, v3, v1

    if-ne p6, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p7

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method public getElapsedRealtime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .locals 8

    const-wide/16 v2, 0x0

    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v0, v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getUniqueUids()[I
    .locals 9

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget v3, v6, v5

    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 4

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    iput v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    iput v6, v0, Landroid/net/NetworkStats$Entry;->metered:I

    iput v6, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    iput v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    iput v6, v0, Landroid/net/NetworkStats$Entry;->metered:I

    iput v6, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 14

    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    new-instance v6, Landroid/net/NetworkStats$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    invoke-static {v5, v6}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    move-object v7, p0

    move v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Landroid/net/NetworkStats;->addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0, v13}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    invoke-virtual {v13}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to deduct underlying network traffic from VPN package. Moved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public setElapsedRealtime(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 9

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v4, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    aget v5, v0, v7

    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v6, v0, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIII)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v7

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v1, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v8

    aput-wide v2, v0, v7

    goto :goto_1

    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 6

    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
