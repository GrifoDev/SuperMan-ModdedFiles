.class Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr2Delegate"
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;


# virtual methods
.method public setActionBarDescription(I)V
    .locals 2

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    return-void
.end method
