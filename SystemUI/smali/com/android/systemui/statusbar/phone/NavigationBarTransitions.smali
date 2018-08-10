.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;
    }
.end annotation


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

.field private final mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 3

    const v2, 0x7f080470

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    :cond_0
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$RVH9-gN7oEoXjjZE5D2na5Svl4w;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$RVH9-gN7oEoXjjZE5D2na5Svl4w;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    :cond_1
    return-void
.end method

.method private applyLightsOut(ZZZ)V
    .locals 6

    if-nez p3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v3, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a037b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x2ee

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    const/16 v0, 0xfa

    goto :goto_2
.end method

.method private applyMode(IZZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method private applyRemoteViewDarkIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->applyDarkIntensity(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_NavigationBarTransitions-mthref-0(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyDarkIntensity(F)V

    return-void
.end method

.method public applyDarkIntensity(F)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDarkIntensity(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyRemoteViewDarkIntensity(F)V

    :cond_1
    return-void
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object v0
.end method

.method public getMode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    goto :goto_0
.end method

.method public init()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    return-void
.end method

.method public reapplyDarkIntensity()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyDarkIntensity(F)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "bar_mode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "bar_mode"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public transitionTo(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public updateModeBackgroundColor(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
