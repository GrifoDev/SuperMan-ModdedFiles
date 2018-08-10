.class Lcom/android/server/location/GnssStatusListenerHelper$4;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field final synthetic val$azimuths:[F

.field final synthetic val$carrierFreqs:[F

.field final synthetic val$cn0s:[F

.field final synthetic val$elevations:[F

.field final synthetic val$prnWithFlags:[I

.field final synthetic val$svCount:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F[F)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$svCount:I

    iput-object p3, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$prnWithFlags:[I

    iput-object p4, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$cn0s:[F

    iput-object p5, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$elevations:[F

    iput-object p6, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$azimuths:[F

    iput-object p7, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$carrierFreqs:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$svCount:I

    iget-object v2, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$prnWithFlags:[I

    iget-object v3, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$cn0s:[F

    iget-object v4, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$elevations:[F

    iget-object v5, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$azimuths:[F

    iget-object v6, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$carrierFreqs:[F

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F[F)V

    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$4;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
