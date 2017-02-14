.class Ljava/util/TaskQueue;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private queue:[Ljava/util/TimerTask;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/TaskQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/TaskQueue;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TaskQueue;->size:I

    return-void
.end method

.method private fixDown(I)V
    .locals 6

    :goto_0
    shl-int/lit8 v0, p1, 0x1

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v2, :cond_1

    if-lez v0, :cond_1

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v2, v0

    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v2, p1

    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v4, v4, v0

    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v1, v2, v0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    aput-object v3, v2, v0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0
.end method

.method private fixUp(I)V
    .locals 6

    :goto_0
    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    shr-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v2, v2, v0

    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v4, v4, p1

    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v1, v2, v0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    aput-object v3, v2, v0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aput-object v1, v2, p1

    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/util/TimerTask;)V
    .locals 2

    iget v0, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TaskQueue;->size:I

    aput-object p1, v0, v1

    iget v0, p0, Ljava/util/TaskQueue;->size:I

    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixUp(I)V

    return-void
.end method

.method clear()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/TaskQueue;->size:I

    return-void
.end method

.method get(I)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getMin()Ljava/util/TimerTask;
    .locals 2

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method heapify()V
    .locals 2

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    div-int/lit8 v0, v1, 0x2

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixDown(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method quickRemove(I)V
    .locals 3

    sget-boolean v0, Ljava/util/TaskQueue;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Ljava/util/TaskQueue;->size:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/TaskQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method removeMin()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/TaskQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-direct {p0, v3}, Ljava/util/TaskQueue;->fixDown(I)V

    return-void
.end method

.method rescheduleMin(J)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, v1

    iput-wide p1, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    invoke-direct {p0, v1}, Ljava/util/TaskQueue;->fixDown(I)V

    return-void
.end method

.method size()I
    .locals 1

    iget v0, p0, Ljava/util/TaskQueue;->size:I

    return v0
.end method
