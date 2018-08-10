.class Landroid/support/v17/leanback/widget/ForegroundHelperApi23;
.super Ljava/lang/Object;
.source "ForegroundHelperApi23.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForeground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
