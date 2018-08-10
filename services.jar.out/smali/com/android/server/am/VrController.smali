.class final Lcom/android/server/am/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VrController$1;
    }
.end annotation


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/VrController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/VrController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/VrController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/VrController;->mVrState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/VrController;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/VrController;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    new-instance v0, Lcom/android/server/am/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VrController$1;-><init>(Lcom/android/server/am/VrController;)V

    iput-object v0, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    iput-object p1, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-void
.end method

.method private changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    :goto_0
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v2, :cond_0

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    :cond_0
    :goto_2
    return v0

    :cond_1
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    goto :goto_2
.end method

.method private clearVrRenderThreadLocked(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    return-void
.end method

.method private enforceThreadInProcess(II)V
    .locals 2

    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "VR thread does not belong to process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private hasPersistentVrFlagSet()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private inVrMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .locals 6

    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    :cond_0
    if-nez p3, :cond_2

    const-string/jumbo v2, "caller is not the current top application."

    if-nez v1, :cond_3

    const-string/jumbo v2, "system not in VR mode."

    :cond_1
    :goto_0
    const-string/jumbo v3, "VrController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to set VR thread, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v3

    :cond_3
    if-eqz v0, :cond_1

    const-string/jumbo v2, "system in persistent VR mode."

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v3

    return v3
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    iput v1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    :cond_1
    if-lez p1, :cond_2

    iput p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    :cond_2
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0
.end method


# virtual methods
.method public onSystemReady()V
    .locals 2

    const-class v1, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_0
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    goto :goto_0
.end method

.method public onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8

    const-class v6, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vr/VrManagerInternal;

    if-nez v5, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/VrController;->changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v7

    invoke-virtual {v5, v4, v2, v3, v0}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    return v1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v0, "VrController"

    const-string/jumbo v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "VrController"

    const-string/jumbo v2, "VR thread cannot be set when not in VR mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-lez p1, :cond_4

    :goto_1
    iput p1, p3, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    return-void

    :cond_3
    iget v1, p3, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_0

    :cond_4
    move p1, v0

    goto :goto_1
.end method

.method public shouldDisableNonVrUiLocked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
