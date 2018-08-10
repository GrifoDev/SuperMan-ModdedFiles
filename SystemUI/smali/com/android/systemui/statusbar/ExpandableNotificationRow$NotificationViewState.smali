.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationViewState"
.end annotation


# instance fields
.field private final mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :cond_0
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    :cond_0
    return-void
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_0
    return-void
.end method
