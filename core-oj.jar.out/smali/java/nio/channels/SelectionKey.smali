.class public abstract Ljava/nio/channels/SelectionKey;
.super Ljava/lang/Object;
.source "SelectionKey.java"


# static fields
.field public static final OP_ACCEPT:I = 0x10

.field public static final OP_CONNECT:I = 0x8

.field public static final OP_READ:I = 0x1

.field public static final OP_WRITE:I = 0x4

.field private static final attachmentUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attachment:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 370
    const-class v0, Ljava/nio/channels/SelectionKey;

    const-class v1, Ljava/lang/Object;

    const-string/jumbo v2, "attachment"

    .line 369
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/SelectionKey;->attachmentUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 110
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    .line 115
    return-void
.end method


# virtual methods
.method public final attach(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 388
    sget-object v0, Ljava/nio/channels/SelectionKey;->attachmentUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final attachment()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract cancel()V
.end method

.method public abstract channel()Ljava/nio/channels/SelectableChannel;
.end method

.method public abstract interestOps()I
.end method

.method public abstract interestOps(I)Ljava/nio/channels/SelectionKey;
.end method

.method public final isAcceptable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isConnectable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isReadable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final isWritable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public abstract readyOps()I
.end method

.method public abstract selector()Ljava/nio/channels/Selector;
.end method
