.class public interface abstract Lcom/cmcc/sso/service/ISsoService;
.super Ljava/lang/Object;
.source "ISsoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/sso/service/ISsoService$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
