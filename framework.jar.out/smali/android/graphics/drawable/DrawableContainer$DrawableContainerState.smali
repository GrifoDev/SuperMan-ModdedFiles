.class public abstract Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantSize:Z

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedPadding:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDensity:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHasColorFilter:Z

.field mHasTintList:Z

.field mHasTintMode:Z

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroid/graphics/drawable/DrawableContainer;

.field mSourceRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVariablePadding:Z


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v7, 0xa0

    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput-object p2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    if-eqz p3, :cond_6

    move-object v5, p3

    :cond_0
    :goto_0
    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    if-eqz p1, :cond_7

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    :goto_1
    invoke-static {p3, v5}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v5

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-eqz p1, :cond_a

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    iget v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-ne v5, v6, :cond_2

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v5, :cond_1

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    :cond_1
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-eqz v5, :cond_2

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    :cond_2
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v5, :cond_3

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    :cond_3
    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v8, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    :cond_4
    iget-object v4, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v5, v4

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    :goto_2
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_b

    aget-object v5, v4, v2

    if-eqz v5, :cond_5

    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_7
    move v5, v6

    goto/16 :goto_1

    :cond_8
    new-instance v5, Landroid/util/SparseArray;

    iget v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_2

    :cond_9
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v4, v2

    aput-object v6, v5, v2

    goto :goto_4

    :cond_a
    const/16 v5, 0xa

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    :cond_b
    return-void
.end method

.method private createAllFutures()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method private mutate()V
    .locals 4

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    return-void
.end method

.method private prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 7

    const/4 v6, 0x1

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public declared-synchronized canConstantState()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method final clearMutated()V
    .locals 4

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    return-void
.end method

.method protected computeConstantSize()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v6, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v7, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_0

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_1

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_2

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v4, v5, :cond_3

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v4, p1

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, p1

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    iput-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawableFutures:Landroid/util/SparseArray;

    :cond_1
    return-object v2

    :cond_2
    return-object v5
.end method

.method public final getChildCount()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    return v0
.end method

.method public final getChildren()[Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getConstantHeight()I
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v5, :cond_0

    return-object v6

    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v5

    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_3
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    :cond_5
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    :cond_6
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_7

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    return-object v3
.end method

.method public final getConstantWidth()I
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final getEnterFadeDuration()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return v0
.end method

.method public final getExitFadeDuration()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return v0
.end method

.method public final getOpacity()I
    .locals 6

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    return v4

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_1

    aget-object v4, v1, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    :cond_2
    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    return v3
.end method

.method public growArray(II)V
    .locals 3

    const/4 v2, 0x0

    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 5

    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    return v4

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->createAllFutures()V

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedStateful:Z

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final setConstantSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return-void
.end method

.method final setLayoutDirection(II)Z
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, v3, v4

    if-eqz v5, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v2

    if-ne v4, p2, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    return v1
.end method

.method public final setVariablePadding(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mSourceRes:Landroid/content/res/Resources;

    iget v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDensity:I

    if-eq v0, v1, :cond_0

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantSize:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedPadding:Z

    :cond_0
    return-void
.end method
