.class public Lcom/android/systemui/qs/QSSFinderView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSSFinderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSFinderEditText:Landroid/widget/RelativeLayout;

.field private mSFinderIconView:Landroid/widget/ImageView;

.field private mSFinderView:Landroid/view/View;

.field private mSFinederTranslation:F

.field private mTouchable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    iput-object p1, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040104

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f1302f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0379

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinederTranslation:F

    const v0, 0x7f1302f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    const v0, 0x7f1302f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startSFinderActivity(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.galaxyfinder"

    const-string/jumbo v4, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "launch_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v5, v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v7

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string/jumbo v2, "translationY"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinederTranslation:F

    neg-float v4, v4

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d037a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isSFinderTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "voice_input"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->startSFinderActivity(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP03"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderEditText:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "text_input"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSSFinderView;->startSFinderActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/QSSFinderView;->mSFinderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSFinderView;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPosition(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSFinderView;->mTouchable:Z

    goto :goto_0
.end method
