.class public interface abstract Lcom/absolute/android/persistence/IABTLogIterator;
.super Ljava/lang/Object;
.source "IABTLogIterator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTLogIterator$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNext(I)[Lcom/absolute/android/persistence/LogEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
