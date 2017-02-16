.class Lsun/nio/ch/PollArrayWrapper;
.super Lsun/nio/ch/AbstractPollArrayWrapper;
.source "PollArrayWrapper.java"


# static fields
.field static final POLLCONN:S = 0x4s


# instance fields
.field interruptFD:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "newSize"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Lsun/nio/ch/AbstractPollArrayWrapper;-><init>()V

    .line 52
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 p1, v0, 0x8

    .line 53
    new-instance v0, Lsun/nio/ch/AllocatedNativeObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/nio/ch/AllocatedNativeObject;-><init>(IZ)V

    iput-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    .line 54
    iget-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    .line 51
    return-void
.end method

.method private static native interrupt(I)V
.end method

.method private native poll0(JIJ)I
.end method

.method static replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V
    .locals 1
    .param p0, "source"    # Lsun/nio/ch/PollArrayWrapper;
    .param p1, "sindex"    # I
    .param p2, "target"    # Lsun/nio/ch/PollArrayWrapper;
    .param p3, "tindex"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getDescriptor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    .line 92
    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getEventOps(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    .line 93
    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 90
    return-void
.end method


# virtual methods
.method addEntry(Lsun/nio/ch/SelChImpl;)V
    .locals 3
    .param p1, "sc"    # Lsun/nio/ch/SelChImpl;

    .prologue
    const/4 v2, 0x0

    .line 77
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    invoke-interface {p1}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    .line 78
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    invoke-virtual {p0, v0, v2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    .line 79
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    invoke-virtual {p0, v0, v2}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 80
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    .line 76
    return-void
.end method

.method free()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    .line 69
    return-void
.end method

.method grow(I)V
    .locals 4
    .param p1, "newSize"    # I

    .prologue
    .line 104
    new-instance v1, Lsun/nio/ch/PollArrayWrapper;

    invoke-direct {v1, p1}, Lsun/nio/ch/PollArrayWrapper;-><init>(I)V

    .line 107
    .local v1, "temp":Lsun/nio/ch/PollArrayWrapper;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    if-ge v0, v2, :cond_0

    .line 108
    invoke-static {p0, v0, v1, v0}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v2}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    .line 112
    iget-object v2, v1, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    iput-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    .line 113
    iget-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v2}, Lsun/nio/ch/AllocatedNativeObject;->address()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    .line 102
    return-void
.end method

.method initInterrupt(II)V
    .locals 2
    .param p1, "fd0"    # I
    .param p2, "fd1"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    iput p2, p0, Lsun/nio/ch/PollArrayWrapper;->interruptFD:I

    .line 60
    invoke-virtual {p0, v1, p1}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    .line 62
    invoke-virtual {p0, v1, v1}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 58
    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->interruptFD:I

    invoke-static {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt(I)V

    .line 121
    return-void
.end method

.method poll(IIJ)I
    .locals 7
    .param p1, "numfds"    # I
    .param p2, "offset"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 117
    iget-wide v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    mul-int/lit8 v2, p2, 0x8

    int-to-long v2, v2

    add-long v1, v0, v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/PollArrayWrapper;->poll0(JIJ)I

    move-result v0

    return v0
.end method

.method release(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 66
    return-void
.end method
