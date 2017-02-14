.class public interface abstract Landroid/content/ICommandExeCallBack;
.super Ljava/lang/Object;
.source "ICommandExeCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ICommandExeCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract execute(Landroid/app/Command;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
