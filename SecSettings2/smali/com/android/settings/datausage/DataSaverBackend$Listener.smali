.class public interface abstract Lcom/android/settings/datausage/DataSaverBackend$Listener;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBlacklistStatusChanged(IZ)V
.end method

.method public abstract onDataSaverChanged(Z)V
.end method

.method public abstract onWhitelistStatusChanged(IZ)V
.end method
