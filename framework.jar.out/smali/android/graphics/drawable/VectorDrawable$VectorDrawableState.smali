.class Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VectorDrawableState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;
    }
.end annotation


# static fields
.field static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x13c


# instance fields
.field private mAllocationOfAllNodes:I

.field mAutoMirrored:Z

.field mBaseHeight:I

.field mBaseWidth:I

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedThemeAttrs:[I

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mDensity:I

.field mLastHWCachePixelCount:I

.field mLastSWCachePixelCount:I

.field mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

.field mOpticalInsets:Landroid/graphics/Insets;

.field mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field mRootName:Ljava/lang/String;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field final mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/VectorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    iput v3, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    goto :goto_0
.end method

.method private applyDensityScaling(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iget v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, p1, p2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    return-void
.end method

.method private createNativeTree(Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 4

    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap26(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void
.end method

.method private createNativeTreeFromCopy(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 6

    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->-wrap25(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canReuseCache()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCacheStates()V

    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->finalize()V

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    mul-int/lit8 v2, v2, 0x4

    add-int v0, v1, v2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    add-int/lit16 v2, v2, 0x13c

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    return-void
.end method

.method public getAlpha()F
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap6(J)F

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNativeRenderer()J
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->ALPHA:Landroid/util/Property;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->hasFocusStateSpecified()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V

    return-object v0
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method onTreeConstructionFinished()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAllocationOfAllNodes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void
.end method

.method public setAlpha(F)Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap2(JF)Z

    move-result v0

    return v0
.end method

.method public final setDensity(I)Z
    .locals 2

    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    if-eq v1, p1, :cond_0

    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyDensityScaling(II)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method setViewportSize(FF)V
    .locals 2

    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    iput p2, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->-wrap35(JFF)V

    return-void
.end method

.method public updateCacheStates()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedThemeAttrs:[I

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCachedAutoMirrored:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    return-void
.end method
