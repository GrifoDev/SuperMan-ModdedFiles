.class public Landroid/support/v7/app/MediaRouteChooserDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private final ARGUMENT_SELECTOR:Ljava/lang/String;

.field private mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const-string/jumbo v0, "selector"

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->ARGUMENT_SELECTOR:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    if-nez v1, :cond_1

    sget-object v1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    :cond_1
    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteChooserDialog;->updateLayout()V

    :cond_0
    return-void
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteChooserDialog;
    .locals 1

    new-instance v0, Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-direct {v0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteChooserDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/support/v7/app/MediaRouteChooserDialog;

    return-object v0
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "selector must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v2, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string/jumbo v2, "selector"

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/MediaRouteChooserDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/support/v7/app/MediaRouteChooserDialog;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    :cond_2
    return-void
.end method
