.class public Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;
.super Ljava/lang/Object;
.source "MultiActionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/MultiActionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiAction"
.end annotation


# instance fields
.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mIndex:I


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
