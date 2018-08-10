.class public interface abstract Landroid/os/IIncidentReportCompletedListener;
.super Ljava/lang/Object;
.source "IIncidentReportCompletedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentReportCompletedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onIncidentReport(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
