.class public Lcom/android/settings/dashboard/conditional/DndCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "DndCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;
    }
.end annotation


# static fields
.field static final DND_FILTER:Landroid/content/IntentFilter;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

.field private mRegistered:Z

.field private mZen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/DndCondition;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    new-instance v0, Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    sget-object v2, Lcom/android/settings/dashboard/conditional/DndCondition;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mReceiver:Lcom/android/settings/dashboard/conditional/DndCondition$Receiver;

    sget-object v2, Lcom/android/settings/dashboard/conditional/DndCondition;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public refreshState()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    iget v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/DndCondition;->setActive(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mConfig:Landroid/service/notification/ZenModeConfig;

    goto :goto_1
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 2

    const-string/jumbo v0, "state"

    iget v1, p0, Lcom/android/settings/dashboard/conditional/DndCondition;->mZen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v0

    return v0
.end method
