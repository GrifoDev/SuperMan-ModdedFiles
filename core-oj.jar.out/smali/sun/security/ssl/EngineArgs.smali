.class Lsun/security/ssl/EngineArgs;
.super Ljava/lang/Object;
.source "EngineArgs.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field appData:[Ljava/nio/ByteBuffer;

.field private appLims:[I

.field private appPoss:[I

.field private appRemaining:I

.field private len:I

.field netData:Ljava/nio/ByteBuffer;

.field private netLim:I

.field private netPos:I

.field private offset:I

.field private wrapMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/security/ssl/EngineArgs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineArgs;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    iput-boolean v0, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;->init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method constructor <init>([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    invoke-direct {p0, p4, p1, p2, p3}, Lsun/security/ssl/EngineArgs;->init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method private init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "src/dst is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    iget-boolean v1, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iput v1, p0, Lsun/security/ssl/EngineArgs;->netLim:I

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    move v0, p3

    :goto_0
    add-int v1, p3, p4

    if-ge v0, v1, :cond_7

    aget-object v1, p2, v0

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-boolean v1, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    if-nez v1, :cond_6

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    :cond_6
    iget v1, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    iput-object p1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    iput p3, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iput p4, p0, Lsun/security/ssl/EngineArgs;->len:I

    return-void
.end method


# virtual methods
.method deltaApp()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    :goto_0
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v3, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method deltaNet()I
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method gather(I)V
    .locals 4

    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    :goto_0
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v3, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    sub-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getAppRemaining()I
    .locals 1

    iget v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    return v0
.end method

.method resetLim()V
    .locals 3

    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/security/ssl/EngineArgs;->netLim:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    :goto_0
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v2, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetPos()V
    .locals 3

    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    :goto_0
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v2, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method scatter(Ljava/nio/ByteBuffer;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    :goto_0
    iget v4, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v5, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    if-lez v1, :cond_0

    iget-object v4, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v4, Lsun/security/ssl/EngineArgs;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    return-void
.end method
