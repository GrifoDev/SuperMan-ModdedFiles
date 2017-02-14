.class public Lcom/samsung/android/camera/core/SemCamera$PafResult;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PafResult"
.end annotation


# instance fields
.field public driverResolution:S

.field public focused:S

.field public goalPos:S

.field public lensPositionCurrent:S

.field public mode:S

.field public reliability:S

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[B)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$PafResult;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
