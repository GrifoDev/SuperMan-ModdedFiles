.class public Landroid/net/wifi/nan/WifiNanSession;
.super Ljava/lang/Object;
.source "WifiNanSession.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiNanSession"

.field private static final VDBG:Z


# instance fields
.field private mDestroyed:Z

.field protected mManager:Landroid/net/wifi/nan/WifiNanManager;

.field protected mSessionId:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/WifiNanManager;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iput p2, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanManager;->destroySession(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mDestroyed:Z

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mDestroyed:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiNanSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiNanSession mSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not explicitly destroyed. The session may use resources until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "destroyed so step should be done explicitly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/nan/WifiNanSession;->destroy()V

    return-void
.end method

.method public sendMessage(I[BII)V
    .locals 6

    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nan/WifiNanManager;->sendMessage(II[BII)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanManager;->stopSession(I)V

    return-void
.end method
