.class public interface abstract Landroid/content/pm/IPersonaStateHandler;
.super Ljava/lang/Object;
.source "IPersonaStateHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaStateHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract mapToNormalizedState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract postEvent(Landroid/content/pm/PersonaEvent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract postEventForPersona(ILandroid/content/pm/PersonaEvent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
