.class public Landroid/telephony/ims/stub/ImsEcbmImplBase;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmImplBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
