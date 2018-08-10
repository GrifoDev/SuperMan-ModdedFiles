.class Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlowMotionEventResult"
.end annotation


# instance fields
.field private events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    return-object v0
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[B)V
    .locals 8

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v3, v4, v5

    const-string/jumbo v4, "SemCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SlowMotionEventResult : numberOfEvent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v3, [Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    iput-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    new-instance v5, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    invoke-direct {v5, p1, v7}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;-><init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;)V

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    aget-object v4, v4, v0

    add-int/lit8 v1, v2, 0x1

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v1, v2, 0x1

    aget-byte v6, p2, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->startMillisecond:I

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->events:[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    aget-object v4, v4, v0

    add-int/lit8 v1, v2, 0x1

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v1, v2, 0x1

    aget-byte v6, p2, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p2, v1

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->endMillisecond:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[B)V

    return-void
.end method
