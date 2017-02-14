.class public interface abstract Lcom/absolute/android/persistence/IABTPing;
.super Ljava/lang/Object;
.source "IABTPing.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPing$Stub;
    }
.end annotation


# virtual methods
.method public abstract ping()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
