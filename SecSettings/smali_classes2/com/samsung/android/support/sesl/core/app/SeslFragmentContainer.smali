.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;
.super Ljava/lang/Object;
.source "SeslFragmentContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    return-object v0
.end method

.method public abstract onFindViewById(I)Landroid/view/View;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onHasView()Z
.end method
