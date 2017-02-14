.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    }
.end annotation


# static fields
.field private static final FIELDS_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final transient holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/io/ObjectStreamField;

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "hostname"

    const-class v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "addr"

    const-class v5, Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "port"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sput-object v2, Ljava/net/InetSocketAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    const-class v2, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "holder"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    sput-object v1, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-direct {v0, p2, v1, p1, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v2, v0, v4, v5}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v3, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    return-void

    :catch_0
    move-exception v1

    move-object v2, p1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    if-nez p1, :cond_0

    sget-object p1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    :cond_0
    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v1

    invoke-direct {v0, v2, p1, v1, v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    return-void
.end method

.method private static checkHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hostname can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method private static checkPort(I)I
    .locals 3

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "port out of range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return p0
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 3

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkPort(I)I

    move-result v1

    invoke-static {p0}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    const-string/jumbo v5, "hostname"

    invoke-virtual {v2, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "addr"

    invoke-virtual {v2, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    const-string/jumbo v5, "port"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/net/InetSocketAddress;->checkPort(I)I

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v5, Ljava/io/InvalidObjectException;

    const-string/jumbo v6, "hostname and addr can\'t both be null"

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-direct {v0, v3, v1, v4, v7}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    sget-object v5, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    invoke-virtual {v5, p0, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "hostname"

    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "addr"

    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "port"

    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    check-cast p1, Ljava/net/InetSocketAddress;

    iget-object v1, p1, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap4(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHostString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap3(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isUnresolved()Z
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
