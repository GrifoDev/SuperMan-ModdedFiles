.class Lcom/gsma/services/rcs/RcsService$1;
.super Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/rcs/RcsService;->addEventListener(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/RcsService;

.field final synthetic val$callBackListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/RcsService;Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService$1;->this$0:Lcom/gsma/services/rcs/RcsService;

    iput-object p2, p0, Lcom/gsma/services/rcs/RcsService$1;->val$callBackListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    invoke-direct {p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceRegistered()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService$1;->val$callBackListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;->onServiceRegistered()V

    return-void
.end method

.method public onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService$1;->val$callBackListener:Lcom/gsma/services/rcs/RcsServiceRegistrationListener;

    invoke-virtual {v0, p1}, Lcom/gsma/services/rcs/RcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    return-void
.end method
