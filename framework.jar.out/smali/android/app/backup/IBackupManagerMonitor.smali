.class public interface abstract Landroid/app/backup/IBackupManagerMonitor;
.super Ljava/lang/Object;
.source "IBackupManagerMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManagerMonitor$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
