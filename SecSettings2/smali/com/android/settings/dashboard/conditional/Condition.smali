.class public abstract Lcom/android/settings/dashboard/conditional/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# instance fields
.field private mIsActive:Z

.field private mIsSilenced:Z

.field private mLastStateChange:J

.field protected final mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    return-void
.end method

.method private onSilenceChanged(Z)V
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getReceiverClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method getLastChange()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    return-wide v0
.end method

.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V

    return-void
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2

    const-string/jumbo v0, "silence"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    const-string/jumbo v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    const-string/jumbo v0, "last_state"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "silence"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "active"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "last_state"

    iget-wide v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setActive(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    goto :goto_0
.end method
