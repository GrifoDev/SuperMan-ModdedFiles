.class public abstract Landroid/support/v4/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransaction$Transit;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public abstract detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method
