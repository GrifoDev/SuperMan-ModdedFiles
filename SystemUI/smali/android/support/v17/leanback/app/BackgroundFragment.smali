.class public final Landroid/support/v17/leanback/app/BackgroundFragment;
.super Landroid/app/Fragment;
.source "BackgroundFragment.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->detach()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->onActivityStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundFragment;->mBackgroundManager:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->onStop()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
