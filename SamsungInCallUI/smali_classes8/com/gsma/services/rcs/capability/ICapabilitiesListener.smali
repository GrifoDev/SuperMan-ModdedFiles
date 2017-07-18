.class public interface abstract Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
.super Ljava/lang/Object;
.source "ICapabilitiesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
