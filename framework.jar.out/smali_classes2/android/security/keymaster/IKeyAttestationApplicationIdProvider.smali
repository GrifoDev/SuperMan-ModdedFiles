.class public interface abstract Landroid/security/keymaster/IKeyAttestationApplicationIdProvider;
.super Ljava/lang/Object;
.source "IKeyAttestationApplicationIdProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
