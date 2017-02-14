.class public Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSensorData"
.end annotation


# instance fields
.field public driverResolution:S

.field public exposureTime:J

.field public exposureValue:S

.field public iso:S

.field public lensPositionCurrent:S

.field public lensPositionMax:S

.field public lensPositionMin:S


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureTime:J

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureValue:S

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMin:S

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMax:S

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionCurrent:S

    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->driverResolution:S

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureTime:J

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureValue:S

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMin:S

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMax:S

    const/16 v0, 0xc

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionCurrent:S

    const/16 v0, 0xe

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->driverResolution:S

    return-void
.end method
