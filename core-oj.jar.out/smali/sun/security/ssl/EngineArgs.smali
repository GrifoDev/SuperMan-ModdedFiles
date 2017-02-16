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

    .prologue
    const-class v0, Lsun/security/ssl/EngineArgs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineArgs;->-assertionsDisabled:Z

    .line 37
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "netData"    # Ljava/nio/ByteBuffer;
    .param p2, "appData"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    .line 81
    iput-boolean v0, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;->init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    .line 80
    return-void
.end method

.method constructor <init>([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "appData"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "netData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    .line 73
    invoke-direct {p0, p4, p1, p2, p3}, Lsun/security/ssl/EngineArgs;->init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    .line 71
    return-void
.end method

.method private init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V
    .locals 4
    .param p1, "netData"    # Ljava/nio/ByteBuffer;
    .param p2, "appData"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "src/dst is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 104
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 103
    :cond_3
    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 107
    iget-boolean v1, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 111
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    .line 112
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iput v1, p0, Lsun/security/ssl/EngineArgs;->netLim:I

    .line 114
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    .line 115
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    .line 117
    move v0, p3

    .local v0, "i":I
    :goto_0
    add-int v1, p3, p4

    if-ge v0, v1, :cond_7

    .line 118
    aget-object v1, p2, v0

    if-nez v1, :cond_5

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 120
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

    .line 119
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_5
    iget-boolean v1, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    if-nez v1, :cond_6

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v1

    .line 131
    :cond_6
    iget v1, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    .line 133
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    aput v2, v1, v0

    .line 134
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    aput v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_7
    iput-object p1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    .line 142
    iput-object p2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    .line 143
    iput p3, p0, Lsun/security/ssl/EngineArgs;->offset:I

    .line 144
    iput p4, p0, Lsun/security/ssl/EngineArgs;->len:I

    .line 97
    return-void
.end method


# virtual methods
.method deltaApp()I
    .locals 4

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "sum":I
    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v3, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 203
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return v1
.end method

.method deltaNet()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method gather(I)V
    .locals 4
    .param p1, "spaceLeft"    # I

    .prologue
    .line 155
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v3, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 156
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    .local v0, "amount":I
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 158
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 159
    iget v2, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    .line 160
    sub-int/2addr p1, v0

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "amount":I
    :cond_0
    return-void
.end method

.method getAppRemaining()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    return v0
.end method

.method resetLim()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/security/ssl/EngineArgs;->netLim:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 234
    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v2, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method resetPos()V
    .locals 3

    .prologue
    .line 219
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 220
    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v2, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method scatter(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "readyData"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .line 173
    .local v1, "amountLeft":I
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lsun/security/ssl/EngineArgs;->offset:I

    iget v5, p0, Lsun/security/ssl/EngineArgs;->len:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    if-lez v1, :cond_0

    .line 175
    iget-object v4, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    .local v0, "amount":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 177
    iget-object v4, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 178
    sub-int/2addr v1, v0

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "amount":I
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

    .line 170
    :cond_2
    return-void
.end method
