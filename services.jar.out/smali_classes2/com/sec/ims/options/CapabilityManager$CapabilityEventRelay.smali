.class public interface abstract Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;
.super Ljava/lang/Object;
.source "CapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/CapabilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapabilityEventRelay"
.end annotation


# virtual methods
.method public abstract onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onOwnCapabilitiesChanged()V
.end method
