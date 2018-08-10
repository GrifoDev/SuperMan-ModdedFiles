.class Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;
.super Ljava/lang/Object;
.source "NotificationInflater.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflationExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor$1;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CPU_COUNT:I

    sget v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CORE_POOL_SIZE:I

    sget v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->MAXIMUM_POOL_SIZE:I

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->CORE_POOL_SIZE:I

    sget v3, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
