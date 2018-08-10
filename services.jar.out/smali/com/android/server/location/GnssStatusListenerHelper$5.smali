.class Lcom/android/server/location/GnssStatusListenerHelper$5;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field final synthetic val$nmea:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput-wide p2, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$timestamp:J

    iput-object p4, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$timestamp:J

    iget-object v2, p0, Lcom/android/server/location/GnssStatusListenerHelper$5;->val$nmea:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$5;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
