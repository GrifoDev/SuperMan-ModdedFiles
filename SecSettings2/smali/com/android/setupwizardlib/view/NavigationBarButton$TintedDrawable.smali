.class Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "NavigationBarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/NavigationBarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TintedDrawable"
.end annotation


# instance fields
.field private mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateState()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;
    .locals 1

    instance-of v0, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setState([I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->updateState()Z

    move-result v1

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setTintListCompat(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->mTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->updateState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton$TintedDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
