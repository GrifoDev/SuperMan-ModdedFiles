.class public Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "AirplaneModeCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-void
.end method


# virtual methods
.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition$Receiver;

    return-object v0
.end method

.method public refreshState()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;->setActive(Z)V

    return-void
.end method
