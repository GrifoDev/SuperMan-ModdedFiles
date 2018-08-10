.class Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "AppIconDragShadowBuilder.java"


# instance fields
.field final mDrawable:Landroid/graphics/drawable/Drawable;

.field final mIconSize:I


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AppIconDragShadowBuilder;->mIconSize:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
