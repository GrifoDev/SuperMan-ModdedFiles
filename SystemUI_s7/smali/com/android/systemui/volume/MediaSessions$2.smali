.class Lcom/android/systemui/volume/MediaSessions$2;
.super Landroid/media/IRemoteVolumeController$Stub;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/MediaSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/MediaSessions;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/MediaSessions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/MediaSessions$2;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {p0}, Landroid/media/IRemoteVolumeController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$2;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-static {v0}, Lcom/android/systemui/volume/MediaSessions;->-get2(Lcom/android/systemui/volume/MediaSessions;)Lcom/android/systemui/volume/MediaSessions$H;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/volume/MediaSessions$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateRemoteController(Landroid/media/session/ISessionController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/MediaSessions$2;->this$0:Lcom/android/systemui/volume/MediaSessions;

    invoke-static {v0}, Lcom/android/systemui/volume/MediaSessions;->-get2(Lcom/android/systemui/volume/MediaSessions;)Lcom/android/systemui/volume/MediaSessions$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/volume/MediaSessions$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
