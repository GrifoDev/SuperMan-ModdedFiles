.class public abstract Landroid/net/metrics/IpConnectivityEvent;
.super Ljava/lang/Object;
.source "IpConnectivityEvent.java"


# static fields
.field private static final COMPONENT_TAG:I

.field private static final sMetricsLogger:Landroid/net/ConnectivityMetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/ConnectivityMetricsLogger;

    invoke-direct {v0}, Landroid/net/ConnectivityMetricsLogger;-><init>()V

    sput-object v0, Landroid/net/metrics/IpConnectivityEvent;->sMetricsLogger:Landroid/net/ConnectivityMetricsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logEvent(Landroid/net/metrics/IpConnectivityEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/net/metrics/IpConnectivityEvent;",
            ":",
            "Landroid/os/Parcelable;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v1, Landroid/net/metrics/IpConnectivityEvent;->sMetricsLogger:Landroid/net/ConnectivityMetricsLogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v6, p0

    check-cast v6, Landroid/os/Parcelable;

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityMetricsLogger;->logEvent(JIILandroid/os/Parcelable;)V

    return-void
.end method
