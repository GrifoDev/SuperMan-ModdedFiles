.class public interface abstract Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcExecutable;
.super Ljava/lang/Object;
.source "AgentSvc.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/friends/agentsvc/AgentSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SvcExecutable"
.end annotation


# virtual methods
.method public abstract execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
