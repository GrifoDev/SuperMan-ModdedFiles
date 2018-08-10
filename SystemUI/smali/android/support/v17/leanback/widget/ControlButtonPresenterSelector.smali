.class public Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;
.super Landroid/support/v17/leanback/widget/PresenterSelector;
.source "ControlButtonPresenterSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ActionViewHolder;,
        Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;
    }
.end annotation


# instance fields
.field private final mPresenters:[Landroid/support/v17/leanback/widget/Presenter;

.field private final mPrimaryPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private final mSecondaryPresenter:Landroid/support/v17/leanback/widget/Presenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PresenterSelector;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_control_button_primary:I

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mPrimaryPresenter:Landroid/support/v17/leanback/widget/Presenter;

    new-instance v0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_control_button_secondary:I

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector$ControlButtonPresenter;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mSecondaryPresenter:Landroid/support/v17/leanback/widget/Presenter;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mPrimaryPresenter:Landroid/support/v17/leanback/widget/Presenter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mPresenters:[Landroid/support/v17/leanback/widget/Presenter;

    return-void
.end method


# virtual methods
.method public getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mPrimaryPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method public getPresenters()[Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mPresenters:[Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method public getPrimaryPresenter()Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mPrimaryPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method public getSecondaryPresenter()Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->mSecondaryPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method
