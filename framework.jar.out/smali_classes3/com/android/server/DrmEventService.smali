.class public Lcom/android/server/DrmEventService;
.super Landroid/app/Service;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DrmEventService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "DrmEventService"

.field static isLogEnabled:Z

.field public static mDrmManagerClient:Landroid/drm/DrmManagerClient;


# instance fields
.field private mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field rchelp:Lcom/android/server/DrmMediaResourceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DrmEventService"

    const-string/jumbo v1, "DrmEventService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DrmEventService"

    const-string/jumbo v2, "DrmEventService : onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v1, :cond_1

    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DrmEventService"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/server/DrmEventService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DrmEventService$ServiceHandler;-><init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DrmEventService"

    const-string/jumbo v1, "DrmEventService : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/DrmEventService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DrmEventService"

    const-string/jumbo v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DrmEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStart intent.getAction() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DrmEventService"

    const-string/jumbo v2, "DrmEventService : onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/DrmEventService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "START_RESOURCE_HELPER"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/DrmEventService;->mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DrmEventService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
