.class public interface abstract Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;
.super Ljava/lang/Object;
.source "ISDCFotaManagerListener.java"


# virtual methods
.method public abstract onBootMode(IILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCheckedFotaUpdateAvailable(Z)V
.end method

.method public abstract onEnd(Z)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onProgress(III)V
.end method

.method public abstract onStart()V
.end method
