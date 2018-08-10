.class public Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;
.super Ljava/lang/Object;
.source "FullscreenUserSwitcher.java"


# instance fields
.field private mContainer:Landroid/view/View;

.field private mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/view/ViewStub;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0566

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/UserGridView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/car/UserGridView;->init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/UserGridView;->onUserSwitched(I)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
