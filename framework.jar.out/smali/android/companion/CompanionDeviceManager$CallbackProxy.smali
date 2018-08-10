.class Landroid/companion/CompanionDeviceManager$CallbackProxy;
.super Landroid/companion/IFindDeviceCallback$Stub;
.source "CompanionDeviceManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackProxy"
.end annotation


# instance fields
.field private mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mRequest:Landroid/companion/AssociationRequest;

.field final synthetic this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method private constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/IFindDeviceCallback$Stub;-><init>()V

    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    invoke-static {p1}, Landroid/companion/CompanionDeviceManager;->-wrap0(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$CallbackProxy;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_companion_CompanionDeviceManager$CallbackProxy_10694(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/companion/CompanionDeviceManager$Callback;->onDeviceFound(Landroid/content/IntentSender;)V

    return-void
.end method

.method synthetic lambda$-android_companion_CompanionDeviceManager$CallbackProxy_10862(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onFailure(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->-wrap0(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->-get0(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->-wrap1(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p0, v3}, Landroid/companion/ICompanionDeviceManager;->stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->-wrap0(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    iput-object v4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object v4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two;

    invoke-direct {v1, p0, p1}, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two$1;

    invoke-direct {v1, p0, p1}, Landroid/companion/-$Lambda$5JzRO2PPKyhIE1CwHHamoNS-two$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
