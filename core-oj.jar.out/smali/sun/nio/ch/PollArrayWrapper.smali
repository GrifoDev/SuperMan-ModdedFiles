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

    invoke-direct {p0}, Lsun/nio/ch/AbstractPollArrayWrapper;-><init>()V

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 p1, v0, 0x8

    new-instance v0, Lsun/nio/ch/AllocatedNativeObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/nio/ch/AllocatedNativeObject;-><init>(IZ)V

    iput-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    iget-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    return-void
.end method

.method private static native interrupt(I)V
.end method

.method private native poll0(JIJ)I
.end method

.method static replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getDescriptor(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getEventOps(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    return-void
.end method


# virtual methods
.method addEntry(Lsun/nio/ch/SelChImpl;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    invoke-interface {p1}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    invoke-virtual {p0, v0, v2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    invoke-virtual {p0, v0, v2}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    return-void
.end method

.method free()V
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    return-void
.end method

.method grow(I)V
    .locals 4

    new-instance v1, Lsun/nio/ch/PollArrayWrapper;

    invoke-direct {v1, p1}, Lsun/nio/ch/PollArrayWrapper;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    if-ge v0, v2, :cond_0

    invoke-static {p0, v0, v1, v0}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v2}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    iget-object v2, v1, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    iput-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    iget-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v2}, Lsun/nio/ch/AllocatedNativeObject;->address()J

    move-result-wide v2

    iput-wide v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    return-void
.end method

.method initInterrupt(II)V
    .locals 2

    const/4 v1, 0x0

    iput p2, p0, Lsun/nio/ch/PollArrayWrapper;->interruptFD:I

    invoke-virtual {p0, v1, p1}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    invoke-virtual {p0, v1, v1}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    return-void
.end method

.method public interrupt()V
    .locals 1

    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->interruptFD:I

    invoke-static {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt(I)V

    return-void
.end method

.method poll(IIJ)I
    .locals 7

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

    return-void
.end method
