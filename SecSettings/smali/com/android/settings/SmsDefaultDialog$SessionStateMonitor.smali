.class public Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;
.super Ljava/lang/Object;
.source "SmsDefaultDialog.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsDefaultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionStateMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mImsOngoingFtEventListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

.field private mIsConnected:Z

.field private mIsListenerRegistered:Z

.field private mIsProgress:Z


# direct methods
.method static synthetic -set0(Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsProgress:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor$1;-><init>(Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;)V

    iput-object v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mImsOngoingFtEventListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method


# virtual methods
.method public getIsProgress()Z
    .locals 2

    const-string/jumbo v0, "SessionStateMonitor"

    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsProgress:Z

    return v0
.end method

.method public onConnected()V
    .locals 2

    const-string/jumbo v0, "SessionStateMonitor"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsConnected:Z

    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->start()V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string/jumbo v0, "SessionStateMonitor"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsConnected:Z

    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->stop()V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SessionStateMonitor"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsListenerRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mImsOngoingFtEventListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsListenerRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SessionStateMonitor"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsListenerRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mImsOngoingFtEventListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsListenerRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SessionStateMonitor [mIsConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsListenerRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsListenerRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/SmsDefaultDialog$SessionStateMonitor;->mIsProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
