.class public interface abstract Lcom/android/systemui/splugins/ISPluginServiceCallbacks;
.super Ljava/lang/Object;
.source "ISPluginServiceCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/ISPluginServiceCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
