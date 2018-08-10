.class Lcom/android/server/location/GnssLocationProvider$16;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap38()V

    return-void
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap21()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(JZ)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->extension_isSupportGnssBatching()Z

    move-result v2

    if-nez v2, :cond_0

    return v5

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid periodNanos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "in batching request, not started"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const-wide/32 v2, 0x3b9aca00

    div-long v2, p1, v2

    long-to-int v0, v2

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->getBundle(III)Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v2, v4, v3}, Lcom/android/server/location/GnssLocationProvider;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    invoke-static {p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->-wrap15(JZ)Z

    move-result v2

    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$16;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/location/GnssLocationProvider;->getBundle(III)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/GnssLocationProvider;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap18()Z

    move-result v0

    return v0
.end method
