.class public Lcom/android/settings/dashboard/conditional/BatterySaverCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "BatterySaverCondition.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-void
.end method


# virtual methods
.method public refreshState()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;->setActive(Z)V

    return-void
.end method
