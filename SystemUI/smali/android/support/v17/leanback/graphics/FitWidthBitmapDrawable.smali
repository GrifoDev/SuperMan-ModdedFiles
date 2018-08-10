.class public Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FitWidthBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$1;,
        Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;
    }
.end annotation


# static fields
.field public static final PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

.field final mDest:Landroid/graphics/Rect;

.field mMutated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->getVerticalOffsetIntProperty()Landroid/util/IntProperty;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "verticalOffset"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    new-instance v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    invoke-direct {v0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    iput-object p1, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    return-void
.end method

.method static getVerticalOffsetIntProperty()Landroid/util/IntProperty;
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/IntProperty",
            "<",
            "Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$2;

    const-string/jumbo v1, "verticalOffset"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private validateSource()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mSource:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mDefaultSource:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mSource:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v4, v4, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget v5, v5, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->validateSource()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v4, v4, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mDest:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v6, v6, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVerticalOffset()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget v0, v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;-><init>(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;)V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v1, v1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->mBitmapState:Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;

    iput p1, v0, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$BitmapState;->mOffset:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->invalidateSelf()V

    return-void
.end method
