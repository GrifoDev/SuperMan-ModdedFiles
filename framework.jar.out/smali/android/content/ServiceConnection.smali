.class public interface abstract Landroid/content/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public abstract onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
