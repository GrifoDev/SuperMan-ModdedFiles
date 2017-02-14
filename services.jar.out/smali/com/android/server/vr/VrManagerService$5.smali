.class Lcom/android/server/vr/VrManagerService$5;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$PendingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;

.field final synthetic val$c:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$5;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$5;->val$c:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runEvent(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Landroid/service/vr/IVrListener;

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$5;->val$c:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;)V

    return-void
.end method
