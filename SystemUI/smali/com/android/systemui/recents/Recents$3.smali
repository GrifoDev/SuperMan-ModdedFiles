.class Lcom/android/systemui/recents/Recents$3;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener",
        "<",
        "Lcom/samsung/systemui/splugins/recents/PluginExRecents;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/Recents$3;->onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/Recents;->-set0(Lcom/android/systemui/recents/Recents;Z)Z

    const-string/jumbo v0, "Recents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-interface {p1, v0}, Lcom/samsung/systemui/splugins/recents/PluginExRecents;->onStart(Lcom/samsung/systemui/splugins/recents/PluginRecents;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents$3;->onPluginDisconnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->-set0(Lcom/android/systemui/recents/Recents;Z)Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->-get5()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    const-string/jumbo v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->-get5()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->-get2()Lcom/android/systemui/recents/RecentsSystemUser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->removeNonSystemUserRecentsForUser(I)V

    :goto_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/recents/PluginExRecents;->onDestroy()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->unregisterPluginTaskStackListener()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v1}, Lcom/android/systemui/recents/Recents;->-wrap0(Lcom/android/systemui/recents/Recents;)V

    goto :goto_0
.end method
