.class public interface abstract Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bixby/EmSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEmStateReqCallback"
.end annotation


# virtual methods
.method public abstract onScreenStatesRequested()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
