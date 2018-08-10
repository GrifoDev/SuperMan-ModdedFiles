.class public interface abstract Landroid/os/IIncidentManager;
.super Ljava/lang/Object;
.source "IIncidentManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract reportIncident(Landroid/os/IncidentReportArgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportIncidentToStream(Landroid/os/IncidentReportArgs;Landroid/os/IIncidentReportStatusListener;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract systemRunning()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
