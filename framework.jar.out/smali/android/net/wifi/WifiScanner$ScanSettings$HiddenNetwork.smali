.class public Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenNetwork"
.end annotation


# instance fields
.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    return-void
.end method
