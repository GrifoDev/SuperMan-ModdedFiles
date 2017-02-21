.class public Landroid/net/wifi/nan/WifiNanSubscribeSession;
.super Landroid/net/wifi/nan/WifiNanSession;
.source "WifiNanSubscribeSession.java"


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/WifiNanManager;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/nan/WifiNanSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    return-void
.end method


# virtual methods
.method public subscribe(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/nan/WifiNanManager;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V

    return-void
.end method
