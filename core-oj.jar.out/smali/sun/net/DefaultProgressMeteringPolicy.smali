.class Lsun/net/DefaultProgressMeteringPolicy;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"

# interfaces
.implements Lsun/net/ProgressMeteringPolicy;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgressUpdateThreshold()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method public shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
