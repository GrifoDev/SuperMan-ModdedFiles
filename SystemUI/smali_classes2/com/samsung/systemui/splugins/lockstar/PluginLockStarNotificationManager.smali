.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;
.super Ljava/lang/Object;
.source "PluginLockStarNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;)V
.end method

.method public abstract setLockStarNotificationPreviewArray(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLockStarNotificationView(Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;)V
.end method
