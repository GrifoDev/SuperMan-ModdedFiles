.class Landroid/telephony/ims/ImsServiceProxy$1;
.super Lcom/android/ims/internal/IImsServiceFeatureListener$Stub;
.source "ImsServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsServiceProxy;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsServiceProxy;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceFeatureListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public imsFeatureCreated(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get1(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get0(Landroid/telephony/ims/ImsServiceProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    iget v0, v0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get3(Landroid/telephony/ims/ImsServiceProxy;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    iget-object v0, v0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Feature enabled on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/telephony/ims/ImsServiceProxy;->-set1(Landroid/telephony/ims/ImsServiceProxy;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public imsFeatureRemoved(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get1(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get0(Landroid/telephony/ims/ImsServiceProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    iget v0, v0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get3(Landroid/telephony/ims/ImsServiceProxy;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    iget-object v0, v0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Feature disabled on slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/telephony/ims/ImsServiceProxy;->-set1(Landroid/telephony/ims/ImsServiceProxy;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public imsStatusChanged(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get1(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    iget-object v0, v0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imsStatusChanged: slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    iget v0, v0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get3(Landroid/telephony/ims/ImsServiceProxy;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/ims/ImsServiceProxy;->-set0(Landroid/telephony/ims/ImsServiceProxy;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get2(Landroid/telephony/ims/ImsServiceProxy;)Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->-get2(Landroid/telephony/ims/ImsServiceProxy;)Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;->notifyStatusChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
