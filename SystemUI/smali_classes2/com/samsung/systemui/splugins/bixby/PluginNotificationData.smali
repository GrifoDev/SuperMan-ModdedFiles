.class public interface abstract Lcom/samsung/systemui/splugins/bixby/PluginNotificationData;
.super Ljava/lang/Object;
.source "PluginNotificationData.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "notification"
.end annotation


# virtual methods
.method public abstract getActiveNotifications()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getHiddenNotificationOnLockscreen()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end method
