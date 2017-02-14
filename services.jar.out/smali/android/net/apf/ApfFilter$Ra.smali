.class Landroid/net/apf/ApfFilter$Ra;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ra"
.end annotation


# static fields
.field private static final ICMP6_4_BYTE_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_4_BYTE_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_DNSSL_OPTION_TYPE:I = 0x1f

.field private static final ICMP6_PREFIX_OPTION_LEN:I = 0x20

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_OFFSET:I = 0x8

.field private static final ICMP6_PREFIX_OPTION_TYPE:I = 0x3

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_RA_CHECKSUM_LEN:I = 0x2

.field private static final ICMP6_RA_CHECKSUM_OFFSET:I = 0x38

.field private static final ICMP6_RA_HEADER_LEN:I = 0x10

.field private static final ICMP6_RA_OPTION_OFFSET:I = 0x46

.field private static final ICMP6_RA_ROUTER_LIFETIME_LEN:I = 0x2

.field private static final ICMP6_RA_ROUTER_LIFETIME_OFFSET:I = 0x3c

.field private static final ICMP6_RDNSS_OPTION_TYPE:I = 0x19

.field private static final ICMP6_ROUTE_INFO_OPTION_TYPE:I = 0x18


# instance fields
.field mLastSeen:J

.field mMinLifetime:J

.field private final mNonLifetimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mPrefixOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRdnssOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field seenCount:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;[BI)V
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    iput-object p1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    iput v7, p0, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {p2, v7, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap0()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    const/16 v3, 0x38

    invoke-direct {p0, v7, v3, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    const/16 v3, 0x3c

    invoke-direct {p0, v0, v3, v8}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v1, v3, 0x8

    sparse-switch v2, :sswitch_data_0

    :goto_1
    if-gtz v1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid option length opt=%d len=%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    invoke-direct {p0, v0, v6, v6}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3, v6}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :sswitch_2
    invoke-direct {p0, v0, v6, v6}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, v0, v7, v7}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    invoke-virtual {p0, p2, p3}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method private IPv6AddresstoString(I)Ljava/lang/String;
    .locals 7

    :try_start_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    if-ltz p1, :cond_0

    add-int/lit8 v5, p1, 0x10

    array-length v6, v2

    if-le v5, v6, :cond_1

    :cond_0
    const-string/jumbo v5, "???"

    return-object v5

    :cond_1
    add-int/lit8 v5, p1, 0x10

    if-lt v5, p1, :cond_0

    add-int/lit8 v5, p1, 0x10

    invoke-static {v2, p1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v3

    const-string/jumbo v5, "???"

    return-object v5

    :catch_1
    move-exception v4

    const-string/jumbo v5, "???"

    return-object v5
.end method

.method private addNonLifetime(III)I
    .locals 4

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v0, p2, p3

    return v0
.end method

.method private prefixOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 10

    add-int/lit8 v6, p2, 0x10

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    move-result v0

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    int-to-long v4, v6

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, p2, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    int-to-long v2, v6

    const-string/jumbo v6, "%s/%d %ds/%ds "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private rdnssOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 8

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter$Ra;->uint8(B)I

    move-result v5

    mul-int/lit8 v3, v5, 0x8

    const/16 v5, 0x18

    if-ge v3, v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, p2, 0x4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/net/apf/ApfFilter$Ra;->uint32(I)J

    move-result-wide v0

    add-int/lit8 v5, v3, -0x8

    div-int/lit8 v2, v5, 0x10

    const-string/jumbo v5, "DNS "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    add-int/lit8 v6, p2, 0x8

    mul-int/lit8 v7, v4, 0x10

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private uint16(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p1

    return v0
.end method

.method private uint32(I)J
    .locals 2

    and-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method private uint8(B)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method currentLifetime()J
    .locals 6

    iget-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    invoke-static {}, Landroid/net/apf/ApfFilter;->-wrap0()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method generateFilterLocked(Landroid/net/apf/ApfGenerator;)J
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ApfFilter.this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ra"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v8}, Landroid/net/apf/ApfFilter;->-wrap1(Landroid/net/apf/ApfFilter;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v8, 0xe

    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {p1, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v8

    const-wide/16 v10, 0x6

    div-long/2addr v8, v10

    long-to-int v0, v8

    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v8, 0xf

    invoke-virtual {p1, v7, v8}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v8, v7}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v11

    invoke-static {v9, v10, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-virtual {p1, v8, v7, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    :cond_0
    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v6, v8, v7

    const/16 v7, 0x38

    if-ne v6, v7, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v2, v7, v6

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bogus lifetime size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_1
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    :goto_2
    invoke-virtual {p1, v0, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_1

    :pswitch_2
    sget-object v7, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v7, v6}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    goto :goto_2

    :cond_3
    const-string/jumbo v7, "__DROP__"

    invoke-virtual {p1, v7}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p1, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    int-to-long v8, v0

    return-wide v8

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getLastMatchingPacket()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isExpired()Z
    .locals 4

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches([BI)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-eq p2, v4, :cond_0

    return v6

    :cond_0
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    aget-byte v4, p1, v0

    aget-byte v5, v3, v0

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method minLifetime([BI)J
    .locals 12

    const-wide/16 v10, 0x1

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v3, v9, v8

    const/16 v8, 0x38

    if-ne v3, v8, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v2, v8, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bogus lifetime size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    int-to-long v6, v8

    :goto_2
    mul-int/lit8 v8, v2, 0x8

    shl-long v8, v10, v8

    sub-long/2addr v8, v10

    and-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    int-to-long v6, v8

    goto :goto_2

    :cond_1
    return-wide v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "RA %s -> %s %ds "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x16

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/16 v6, 0x26

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->uint16(S)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->prefixOptionToString(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "<Malformed RA>"

    return-object v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v3, v1}, Landroid/net/apf/ApfFilter$Ra;->rdnssOptionToString(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method
