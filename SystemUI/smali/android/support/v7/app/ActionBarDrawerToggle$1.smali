.class Landroid/support/v7/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarDrawerToggle;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-boolean v0, v0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
