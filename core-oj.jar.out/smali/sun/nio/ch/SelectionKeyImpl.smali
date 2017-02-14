.class Lsun/nio/ch/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field final channel:Lsun/nio/ch/SelChImpl;

.field private index:I

.field private volatile interestOps:I

.field private readyOps:I

.field final selector:Lsun/nio/ch/SelectorImpl;


# direct methods
.method constructor <init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    iput-object p1, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    iput-object p2, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    return-void
.end method

.method private ensureValid()V
    .locals 1

    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method getIndex()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    return v0
.end method

.method public interestOps()I
    .locals 1

    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    return v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 1

    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    invoke-virtual {p0, p1}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps(I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method nioInterestOps()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    return v0
.end method

.method nioInterestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 1

    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v0, p1, p0}, Lsun/nio/ch/SelChImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    return-object p0
.end method

.method nioReadyOps()I
    .locals 1

    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method nioReadyOps(I)V
    .locals 0

    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    return-void
.end method

.method public readyOps()I
    .locals 1

    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    return-object v0
.end method

.method setIndex(I)V
    .locals 0

    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    return-void
.end method
