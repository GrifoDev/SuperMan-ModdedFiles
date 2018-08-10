.class public interface abstract Landroid/os/IIncidentReportStatusListener;
.super Ljava/lang/Object;
.source "IIncidentReportStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentReportStatusListener$Stub;
    }
.end annotation


# static fields
.field public static final STATUS_FINISHED:I = 0x2

.field public static final STATUS_STARTING:I = 0x1


# virtual methods
.method public abstract onReportFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReportFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReportSectionStatus(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReportStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
