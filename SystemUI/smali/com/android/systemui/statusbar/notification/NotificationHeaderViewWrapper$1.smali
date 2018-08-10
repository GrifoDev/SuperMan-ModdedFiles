.class Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;
.super Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;
.source "NotificationHeaderViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    instance-of v0, v1, Landroid/view/NotificationHeaderView;

    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-object v1

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v1

    return-object v1

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method protected hasCustomTransformation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->-get1(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->-get2(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
