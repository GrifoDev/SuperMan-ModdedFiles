.class public abstract Landroid/os/BatteryStats$Timer;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCountLocked(I)I
.end method

.method public getCurrentDurationMsLocked(J)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMaxDurationMsLocked(J)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTimeSinceMarkLocked(J)J
.end method

.method public getTotalDurationMsLocked(J)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract getTotalTimeLocked(JI)J
.end method

.method public isRunningLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract logState(Landroid/util/Printer;Ljava/lang/String;)V
.end method
