.class public Lcom/android/systemui/slimindicator/SlimIndicatorMediator;
.super Ljava/lang/Object;
.source "SlimIndicatorMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;,
        Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBoxCallback;,
        Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyModel;,
        Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener",
        "<",
        "Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;",
        ">;"
    }
.end annotation


# instance fields
.field private mBoxCallback:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIsConnected:Z

.field private mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

.field private mPluginContext:Landroid/content/Context;

.field private mPluginModel:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;

.field private mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->removePluginListenerMediator()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyModel;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyModel;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginModel:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBoxCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBoxCallback;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mBoxCallback:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mIsConnected:Z

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;

    const-string/jumbo v0, "SlimIndicatorMediator"

    const-string/jumbo v1, "addPluginListener SlimIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    const-class v1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method private removePluginListenerMediator()V
    .locals 1

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public isPluginConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    instance-of v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v2, "SlimIndicatorMediator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPluginConnected() Box is null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mIsConnected:Z

    if-eqz v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->getBoxCallback()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mBoxCallback:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->getModel()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginModel:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;

    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->register(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->addTunableSlimIndicator()V

    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mIsConnected:Z

    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    goto :goto_1
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-virtual {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "SlimIndicatorMediator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPluginDisconnected() SPluginSlimIndicatorBox is null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mIsConnected:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mIsConnected:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mIsConnected:Z

    if-nez v0, :cond_1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$EmptyBox;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorMediator;)V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->getBoxCallback()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mBoxCallback:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginBox:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->getModel()Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginModel:Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;

    iput-object v4, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mPluginContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mReceiver:Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator$SlimIndicatorReceiver;->unregister(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    const-string/jumbo v2, "icon_blacklist"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "icon_blacklist"

    const-string/jumbo v2, ""

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-virtual {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->removeTunableSlimIndicator()V

    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorMediator;->mIsConnected:Z

    return-void
.end method
