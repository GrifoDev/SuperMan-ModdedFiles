.class public Lcom/android/systemui/qs/QuickQSPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickQSPanel$1;,
        Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
    }
.end annotation


# instance fields
.field protected mFullPanel:Lcom/android/systemui/qs/QSPanel;

.field private mMaxTiles:I

.field private final mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private oldMobileKeyboardCovered:I

.field private oldOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/systemui/qs/QuickQSPanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickQSPanel$1;-><init>(Lcom/android/systemui/qs/QuickQSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance v1, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mListening:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/QuickQSPanel;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQuickQsTileNum()V

    invoke-super {p0, v3, v3, v3, v3}, Lcom/android/systemui/qs/QSPanel;->setPadding(IIII)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QuickQSPanel;->setFocusable(Z)V

    return-void
.end method

.method public static getNumQuickTiles(Landroid/content/Context;)I
    .locals 3

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qqs_count"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setQuickQsTileNum()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/qs/QuickQSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QuickQSPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-class v4, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v5, "sysui_qqs_count"

    const v6, 0x7f0b005a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-class v4, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v5, "sysui_qqs_count"

    const v6, 0x7f0b0059

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v1, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    move-object p2, v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QuickQSPanel_5548()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setIconViewsId()V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setFocusDirection()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sysui_qqs_count"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->oldOrientation:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->oldMobileKeyboardCovered:I

    if-eq v2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQuickQsTileNum()V

    iput v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->oldOrientation:I

    iput v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->oldMobileKeyboardCovered:I

    new-instance v2, Lcom/android/systemui/qs/-$Lambda$OEXUCAT4BmWOMmIEVPhHwnL8TB0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$Lambda$OEXUCAT4BmWOMmIEVPhHwnL8TB0;-><init>(Ljava/lang/Object;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/qs/QuickQSPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "qs_show_brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-super {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public setMaxTiles(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFullPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    if-ne v3, v4, :cond_0

    :cond_1
    const/4 v3, 0x1

    invoke-super {p0, v0, v3}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
