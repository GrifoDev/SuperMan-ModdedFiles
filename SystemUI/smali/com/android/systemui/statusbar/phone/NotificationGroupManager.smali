.class public Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
.super Ljava/lang/Object;
.source "NotificationGroupManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/samsung/systemui/splugins/bixby/PluginNotificationGroupManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;,
        Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;
    }
.end annotation


# instance fields
.field private mBarState:I

.field private final mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsUpdatingUnchangedGroup:Z

.field private mIsolatedEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    return-void
.end method

.method private getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    goto :goto_0
.end method

.method private getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getNumberOfIsolatedChildren(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I
    .locals 5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v2

    :goto_0
    add-int v3, v1, v2

    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz v2, :cond_6

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getIsolatedChild(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_1
.end method

.method private hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isGroupNotFullyVisible(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    return v0
.end method

.method private isGroupSuppressed(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIsolated(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    :cond_0
    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    goto :goto_0
.end method

.method private setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .locals 2

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    :cond_0
    return-void
.end method

.method private shouldIsolate(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupNotFullyVisible(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v3, :cond_5

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->hasIsolatedChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v1

    :cond_1
    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eq v0, v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public collapseAllGroups()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v3, "GroupManager state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  number of groups: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n    key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n    isolated entries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string/jumbo v3, "      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, ", "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic getGroupSummary(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method public isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v1, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->suppressed:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public isGroupChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return v1
.end method

.method public isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/service/notification/StatusBarNotification;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 8

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v5, :cond_2

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v7

    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v7, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    goto :goto_0
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v0, :cond_2

    if-ne v4, v1, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsUpdatingUnchangedGroup:Z

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isIsolated(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryBecomingChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_1
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->shouldIsolate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->updateSuppression(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->handleSuppressedSummaryHeadsUpped(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_0
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->collapseAllGroups()V

    :cond_1
    return-void
.end method

.method public toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->mGroupMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->expanded:Z

    return v1
.end method
