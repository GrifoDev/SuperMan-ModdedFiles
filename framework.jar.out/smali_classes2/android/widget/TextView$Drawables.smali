.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final DRAWABLE_LEFT:I = 0x1

.field static final DRAWABLE_NONE:I = -0x1

.field static final DRAWABLE_RIGHT:I = 0x0

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field mDrawableError:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightEnd:I

.field mDrawableHeightError:I

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableHeightStart:I

.field mDrawableHeightTemp:I

.field mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field mDrawableSaved:I

.field mDrawableSizeBottom:I

.field mDrawableSizeEnd:I

.field mDrawableSizeError:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeStart:I

.field mDrawableSizeTemp:I

.field mDrawableSizeTop:I

.field mDrawableStart:Landroid/graphics/drawable/Drawable;

.field mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field mHasTint:Z

.field mHasTintMode:Z

.field mIsRtlCompatibilityMode:Z

.field mOverride:Z

.field final mShowing:[Landroid/graphics/drawable/Drawable;

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_1

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public hasMetadata()Z
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resolveWithLayoutDirection(I)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v4, v3

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v4, v6

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v6

    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :cond_0
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v6

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    if-eq v4, v1, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v6

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    :pswitch_0
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v6

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    :goto_0
    return-void

    :cond_1
    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    goto :goto_0
.end method
