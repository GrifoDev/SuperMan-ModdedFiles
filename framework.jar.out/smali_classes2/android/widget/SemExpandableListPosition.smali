.class Landroid/widget/SemExpandableListPosition;
.super Ljava/lang/Object;
.source "SemExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SemExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/SemExpandableListPosition;
    .locals 4

    sget-object v2, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-direct {v0}, Landroid/widget/SemExpandableListPosition;->resetState()V

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Landroid/widget/SemExpandableListPosition;

    invoke-direct {v1}, Landroid/widget/SemExpandableListPosition;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static obtain(IIII)Landroid/widget/SemExpandableListPosition;
    .locals 1

    invoke-static {}, Landroid/widget/SemExpandableListPosition;->getRecycledOrCreate()Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    iput p0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    iput p1, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iput p2, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    iput p3, v0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    return-object v0
.end method

.method static obtainChildPosition(II)Landroid/widget/SemExpandableListPosition;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Landroid/widget/SemExpandableListPosition;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Landroid/widget/SemExpandableListPosition;
    .locals 6

    const/4 v4, 0x1

    const-wide v2, 0xffffffffL

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/widget/SemExpandableListPosition;->getRecycledOrCreate()Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-static {p0, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v4, :cond_1

    iput v4, v0, Landroid/widget/SemExpandableListPosition;->type:I

    invoke-static {p0, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/SemExpandableListPosition;->type:I

    goto :goto_0
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iput v0, p0, Landroid/widget/SemExpandableListPosition;->childPos:I

    iput v0, p0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    iput v0, p0, Landroid/widget/SemExpandableListPosition;->type:I

    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    iget v0, p0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v1, p0, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public recycle()V
    .locals 3

    sget-object v1, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    sget-object v0, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
