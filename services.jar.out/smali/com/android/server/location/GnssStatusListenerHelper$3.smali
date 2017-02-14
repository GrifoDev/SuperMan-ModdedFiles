.class Lcom/android/server/location/GnssStatusListenerHelper$3;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field final synthetic val$timeToFirstFix:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$3;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/GnssStatusListenerHelper$3;->val$timeToFirstFix:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/location/GnssStatusListenerHelper$3;->val$timeToFirstFix:I

    invoke-interface {p1, v0}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

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

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$3;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
