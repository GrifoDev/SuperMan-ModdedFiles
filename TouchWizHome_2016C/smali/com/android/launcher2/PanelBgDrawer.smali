.class public Lcom/android/launcher2/PanelBgDrawer;
.super Landroid/graphics/drawable/Drawable;
.source "PanelBgDrawer.java"


# static fields
.field public static MODE_DRAG:I

.field public static MODE_NORMAL:I


# instance fields
.field private mAlpha:I

.field private mBounds:Landroid/graphics/Rect;

.field private mDragDrawable:Landroid/graphics/drawable/Drawable;

.field private mMode:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/PanelBgDrawer;->MODE_DRAG:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PanelBgDrawer;->mBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher2/PanelBgDrawer;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/launcher2/PanelBgDrawer;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    iput v0, p0, Lcom/android/launcher2/PanelBgDrawer;->mMode:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mMode:I

    sget v3, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher2/PanelBgDrawer;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher2/PanelBgDrawer;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/launcher2/PanelBgDrawer;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelBgDrawer;->mAlpha:I

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PanelBgDrawer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelBgDrawer;->mAlpha:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/PanelBgDrawer;->mAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher2/PanelBgDrawer;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PanelBgDrawer;->mDragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PanelBgDrawer;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher2/PanelBgDrawer;->mMode:I

    invoke-virtual {p0}, Lcom/android/launcher2/PanelBgDrawer;->invalidateSelf()V

    :cond_0
    return-void
.end method
