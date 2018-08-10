.class public interface abstract Lcom/samsung/systemui/splugins/SPluginListener;
.super Ljava/lang/Object;
.source "SPluginListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/systemui/splugins/SPlugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public onPluginConfigurationChanged(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method
