.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconState"
.end annotation


# instance fields
.field public clampedAppearAmount:F

.field public iconAppearAmount:F

.field public iconColor:I

.field public justAdded:Z

.field private justReplaced:Z

.field public justUndarkened:Z

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public translateContent:Z

.field public useFullTransitionAmount:Z

.field public useLinearTransitionAmount:Z

.field public visibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 12

    const-wide/16 v10, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x0

    instance-of v6, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v6, :cond_9

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v6, :cond_a

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    xor-int/lit8 v3, v6, 0x1

    :goto_0
    if-eqz v3, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v6, :cond_b

    :cond_1
    invoke-super {p0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setAlpha(F)V

    invoke-virtual {v4, v8, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v6

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-lt v6, v7, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v6

    if-ne v6, v8, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v6, v8, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    const/4 v0, 0x1

    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I

    :cond_6
    if-nez v0, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v6

    if-ltz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I

    move-result v7

    if-le v6, v7, :cond_8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v6

    if-ne v6, v8, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v6, v8, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get8()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const/4 v0, 0x1

    :cond_8
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4, v6, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZ)V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v7, :cond_d

    :goto_2
    invoke-virtual {v4, v6, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    if-eqz v0, :cond_e

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :cond_9
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    return-void

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get3()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_c
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v7

    if-eq v6, v7, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->-get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v2

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_d
    move v3, v5

    goto :goto_2

    :cond_e
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStaticDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_0
    return-void
.end method
