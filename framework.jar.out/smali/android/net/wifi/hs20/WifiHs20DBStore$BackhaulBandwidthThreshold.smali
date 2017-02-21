.class public Landroid/net/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackhaulBandwidthThreshold"
.end annotation


# static fields
.field public static final BACKHAUL_THRESHOLD_ID:Ljava/lang/String; = "backhaul_threshold_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DLBANDWIDTH:Ljava/lang/String; = "dlbandwidh"

.field public static final HOTSPOT_ID:Ljava/lang/String; = "hotspot_id"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field public static final SERVER_BACKHAUL_THRESHOLD_ID:Ljava/lang/String; = "server_backhaul_threshold_id"

.field public static final ULBANDWIDTH:Ljava/lang/String; = "ulbandwidth"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/wifi/hs20/WifiHs20DBStore;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hostspot_backhaul_bandwidth_threshold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
