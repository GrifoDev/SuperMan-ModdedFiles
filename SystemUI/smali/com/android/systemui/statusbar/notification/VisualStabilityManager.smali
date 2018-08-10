.class public Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    }
.end annotation


# instance fields
.field private mAddedChildren:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedReorderViews:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPriorityReorderingViews:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpanded:Z

.field private mPulsing:Z

.field private mReorderingAllowed:Z

.field private mScreenOn:Z

.field private mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/support/v4/util/ArraySet;

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/support/v4/util/ArraySet;

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/support/v4/util/ArraySet;

    return-void
.end method

.method private notifyCallbacks()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;->onReorderingAllowed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private updateReorderingAllowed()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    xor-int/lit8 v1, v2, 0x1

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    xor-int/lit8 v0, v2, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyCallbacks()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isReorderingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mReorderingAllowed:Z

    return v0
.end method

.method public notifyViewAddition(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/support/v4/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onLowPriorityUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/support/v4/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReorderingFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAllowedReorderViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mAddedChildren:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mLowPriorityReorderingViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPanelExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mPulsing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mScreenOn:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->updateReorderingAllowed()V

    return-void
.end method

.method public setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    return-void
.end method
