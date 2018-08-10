.class Lcom/samsung/android/camera/core/SemCamera$PafResult;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PafResult"
.end annotation


# instance fields
.field private driverResolution:S

.field private focused:S

.field private goalPos:S

.field private lensPositionCurrent:S

.field private mode:S

.field private reliability:S

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S
    .locals 1

    iget-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->driverResolution:S

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S
    .locals 1

    iget-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->goalPos:S

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S
    .locals 1

    iget-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->lensPositionCurrent:S

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S
    .locals 1

    iget-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->mode:S

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S
    .locals 1

    iget-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->reliability:S

    return v0
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[B)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->mode:S

    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->goalPos:S

    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->reliability:S

    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->focused:S

    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->lensPositionCurrent:S

    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->driverResolution:S

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$PafResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera$PafResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[B)V

    return-void
.end method
