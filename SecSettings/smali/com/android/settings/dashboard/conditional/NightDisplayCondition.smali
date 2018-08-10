.class public final Lcom/android/settings/dashboard/conditional/NightDisplayCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "NightDisplayCondition.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->refreshState()V

    return-void
.end method

.method public refreshState()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->setActive(Z)V

    return-void
.end method
