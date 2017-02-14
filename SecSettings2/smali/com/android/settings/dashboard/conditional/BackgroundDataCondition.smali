.class public Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "BackgroundDataCondition.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-void
.end method


# virtual methods
.method public refreshState()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;->setActive(Z)V

    return-void
.end method
