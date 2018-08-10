.class public Lcom/android/systemui/tuner/TunerZenModePanel;
.super Landroid/widget/LinearLayout;
.source "TunerZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerZenModePanel$1;
    }
.end annotation


# instance fields
.field private mButtons:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mDone:Landroid/view/View;

.field private mDoneListener:Landroid/view/View$OnClickListener;

.field private mEditing:Z

.field private mHeaderSwitch:Landroid/view/View;

.field private mMoreSettings:Landroid/view/View;

.field private final mUpdate:Ljava/lang/Runnable;

.field private mZenMode:I

.field private mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/TunerZenModePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->updatePanel()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/tuner/TunerZenModePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerZenModePanel$1;-><init>(Lcom/android/systemui/tuner/TunerZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method private postUpdatePanel()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/tuner/TunerZenModePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updatePanel()V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const v4, 0x1020017

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const v0, 0x7f0a0556

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1208e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a05aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    const v0, 0x7f0a0554

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120904

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1208eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public isEditing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    iget v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DndFavoriteZen"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v2, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    const-string/jumbo v3, "TunerZenModePanel"

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v3, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string/jumbo v2, "TunerZenModePanel"

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    if-ne p1, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDoneListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    return-void
.end method

.method public setDoneListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDoneListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setZenState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    return-void
.end method
