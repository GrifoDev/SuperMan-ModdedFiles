.class Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;


# virtual methods
.method public setActionBarDescription(I)V
    .locals 2

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    return-void
.end method
