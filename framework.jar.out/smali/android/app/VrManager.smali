.class public Landroid/app/VrManager;
.super Ljava/lang/Object;
.source "VrManager.java"


# instance fields
.field private final mService:Landroid/service/vr/IVrManager;


# direct methods
.method public constructor <init>(Landroid/service/vr/IVrManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    return-void
.end method


# virtual methods
.method public setPersistentVrModeEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1, p1}, Landroid/service/vr/IVrManager;->setPersistentVrModeEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/VrManager;->mService:Landroid/service/vr/IVrManager;

    invoke-interface {v1, p1}, Landroid/service/vr/IVrManager;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method
