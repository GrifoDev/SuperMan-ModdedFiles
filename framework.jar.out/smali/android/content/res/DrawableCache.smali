.class Landroid/content/res/DrawableCache;
.super Landroid/content/res/ThemedResourceCache;
.source "DrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ThemedResourceCache",
        "<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p4}, Landroid/content/res/DrawableCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method public shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/content/res/Configuration;->needToUpdateOverlays(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/DrawableCache;->shouldInvalidateEntry(Landroid/graphics/drawable/Drawable$ConstantState;I)Z

    move-result v0

    return v0
.end method
