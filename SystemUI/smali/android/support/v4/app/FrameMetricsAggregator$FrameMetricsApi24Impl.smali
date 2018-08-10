.class Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.super Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.source "FrameMetricsAggregator.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsApi24Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private mMetrics:[Landroid/util/SparseIntArray;

.field private mTrackingFlags:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandlerThread:Landroid/os/HandlerThread;

    sput-object v0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsBaseImpl;)V

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mActivities:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;-><init>(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V

    iput-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iput p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I

    return-void
.end method


# virtual methods
.method addDurationItem(Landroid/util/SparseIntArray;J)V
    .locals 6

    if-eqz p1, :cond_0

    const-wide/32 v2, 0x7a120

    add-long/2addr v2, p2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method
