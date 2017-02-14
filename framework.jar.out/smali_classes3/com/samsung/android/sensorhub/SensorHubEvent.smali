.class public Lcom/samsung/android/sensorhub/SensorHubEvent;
.super Ljava/lang/Object;
.source "SensorHubEvent.java"


# instance fields
.field public buffer:[B

.field public length:I

.field public sensorhub:Lcom/samsung/android/sensorhub/SensorHub;

.field public timestamp:J

.field public values:[F


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubEvent;->buffer:[B

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubEvent;->values:[F

    return-void
.end method
