.class public Lcom/android/settings/dashboard/conditional/WorkModeCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "WorkModeCondition.java"


# instance fields
.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    return-void
.end method
