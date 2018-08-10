.class public Lcom/android/systemui/egg/MLandActivity;
.super Landroid/app/Activity;
.source "MLandActivity.java"


# instance fields
.field mLand:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d00de

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->setContentView(I)V

    const v2, 0x7f0a05a0

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand;

    iput-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    iget-object v3, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const v2, 0x7f0a044e

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Lcom/android/systemui/egg/MLand;->setScoreFieldHolder(Landroid/view/ViewGroup;)V

    const v2, 0x7f0a0590

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2, v1}, Lcom/android/systemui/egg/MLand;->setSplash(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand;->getGameControllers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2, v0}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    return-void
.end method

.method public playerMinus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->removePlayer()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    return-void
.end method

.method public playerPlus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->addPlayer()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    return-void
.end method

.method public startButtonPressed(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x4

    const v0, 0x7f0a03dd

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a03de

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public updateSplashPlayers()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const v3, 0x7f0a03dd

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a03de

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
