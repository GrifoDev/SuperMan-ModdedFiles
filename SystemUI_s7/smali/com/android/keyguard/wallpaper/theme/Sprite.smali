.class public Lcom/android/keyguard/wallpaper/theme/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/theme/Sprite$SimpleModifier;
    }
.end annotation


# instance fields
.field public currentFrame:I

.field public frameSize:I

.field public height:F

.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsRotated:Z

.field private mModifierCount:I

.field private mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

.field private mPivotX:F

.field private mPivotY:F

.field private mScale:F

.field public visible:Z

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->visible:Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    iput p1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->x:F

    iput p2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->y:F

    iput p3, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    iput p4, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->height:F

    return-void
.end method


# virtual methods
.method public addModifier(Lcom/android/keyguard/wallpaper/theme/SpriteModifier;)Z
    .locals 3

    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    aput-object p1, v0, v1

    invoke-virtual {p1, p0}, Lcom/android/keyguard/wallpaper/theme/SpriteModifier;->onCreate(Lcom/android/keyguard/wallpaper/theme/Sprite;)V

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->visible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->x:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mIsRotated:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mAngle:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mPivotX:F

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mPivotY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mScale:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->height:F

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->currentFrame:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onUpdate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifierCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mModifiers:[Lcom/android/keyguard/wallpaper/theme/SpriteModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/keyguard/wallpaper/theme/SpriteModifier;->onUpdate(Lcom/android/keyguard/wallpaper/theme/Sprite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/content/Context;IIF)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/keyguard/wallpaper/theme/OpenThemeUtil;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/keyguard/wallpaper/theme/Sprite;->setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V

    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V
    .locals 1

    iput p3, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->frameSize:I

    iput p4, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mScale:F

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->width:F

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/theme/Sprite;->height:F

    return-void
.end method
