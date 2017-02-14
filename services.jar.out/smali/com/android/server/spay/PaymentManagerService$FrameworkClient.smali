.class Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.super Ljava/lang/Object;
.source "PaymentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/PaymentManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameworkClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
    }
.end annotation


# instance fields
.field mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

.field mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/spay/PaymentManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;IILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iput-object v1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    iput-object p3, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iput p4, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mUid:I

    iput p5, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    iput-object p6, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPackageName:Ljava/lang/String;

    new-instance v1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;-><init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V

    iput-object v1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    iget-object v1, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    iget-object v2, p2, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->setReceiver(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v1, p2, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
