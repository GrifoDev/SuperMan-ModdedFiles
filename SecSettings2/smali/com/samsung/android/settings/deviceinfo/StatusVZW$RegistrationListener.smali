.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegistrationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMS onDeregistered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateImsStatus(Z)V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IMS onRegistered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateImsStatus(Z)V

    :cond_0
    return-void
.end method
