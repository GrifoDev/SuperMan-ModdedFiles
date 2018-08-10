.class Lcom/android/server/LocationManagerService$LinkedCallback;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkedCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/location/IBatchedLocationCallback;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/IBatchedLocationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->mCallback:Landroid/location/IBatchedLocationCallback;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remote Batching Callback died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->mCallback:Landroid/location/IBatchedLocationCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService;->removeGnssBatchingCallback()V

    return-void
.end method

.method public getUnderlyingListener()Landroid/location/IBatchedLocationCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LinkedCallback;->mCallback:Landroid/location/IBatchedLocationCallback;

    return-object v0
.end method
