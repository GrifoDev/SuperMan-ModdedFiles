.class final Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperApi23Impl;
.super Ljava/lang/Object;
.source "ForegroundHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ForegroundHelper$ForegroundHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ForegroundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForegroundHelperApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForeground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/widget/ForegroundHelperApi23;->getForeground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v17/leanback/widget/ForegroundHelperApi23;->setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
