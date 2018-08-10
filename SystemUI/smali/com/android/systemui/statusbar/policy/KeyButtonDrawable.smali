.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "KeyButtonDrawable.java"


# instance fields
.field private final mHasDarkDrawable:Z


# direct methods
.method private constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setLayerGravity(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_1
    array-length v2, p1

    if-le v2, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v2, :cond_0

    :goto_0
    aput-object p0, v1, v3

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v2, :cond_1

    :goto_1
    aput-object p1, v1, v4

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v2, :cond_3

    :goto_2
    aput-object p0, v1, v3

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2
.end method

.method public static createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v4, :cond_0

    :goto_0
    aput-object v1, v3, v5

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v4, :cond_1

    :goto_1
    aput-object v0, v3, v6

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v4, :cond_3

    :goto_2
    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2
.end method

.method private static flipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-object v7, p1

    const/4 v0, 0x0

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v8, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v8

    :cond_1
    instance-of v2, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public setDarkIntensity(F)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x437f0000    # 255.0f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float v1, p1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->invalidateSelf()V

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float v1, p1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method
