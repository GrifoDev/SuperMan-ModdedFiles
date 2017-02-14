.class public interface abstract Lcom/samsung/android/pass/IPassChecker;
.super Ljava/lang/Object;
.source "IPassChecker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/pass/IPassChecker$Stub;
    }
.end annotation


# virtual methods
.method public abstract hasPermission(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
