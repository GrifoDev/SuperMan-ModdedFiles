.class Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor$1;
.super Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;
.source "SmsDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor$1;->this$1:Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;

    invoke-direct {p0}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFtStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "SessionStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFtStateChanged, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor$1;->this$1:Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;

    invoke-static {v0, p1}, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->-set0(Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;Z)Z

    return-void
.end method
