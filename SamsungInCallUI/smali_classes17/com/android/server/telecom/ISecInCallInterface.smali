.class public interface abstract Lcom/android/server/telecom/ISecInCallInterface;
.super Ljava/lang/Object;
.source "ISecInCallInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/ISecInCallInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
