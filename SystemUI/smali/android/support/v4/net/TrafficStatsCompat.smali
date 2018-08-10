.class public final Landroid/support/v4/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatApi24Impl;,
        Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
