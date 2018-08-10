.class Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager$NetWorkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetWorkData"
.end annotation


# instance fields
.field endTime:J

.field startTime:J

.field totalTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;-><init>()V

    return-void
.end method


# virtual methods
.method public setEndTime(J)V
    .locals 5

    iput-wide p1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    iget-wide v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    return-void
.end method
