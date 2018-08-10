.class Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method static synthetic -get0(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v8, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v8, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iput-object v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iget-object v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    iget-object v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v5, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v6, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v5, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v6, v2, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v5, :cond_3

    new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v4, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V

    :goto_2
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v5, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v5, :cond_4

    new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v4, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unknown object in the tree!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    return-void
.end method

.method private updateLocalMatrix()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    const-string/jumbo v1, "rotation"

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    const/4 v3, 0x5

    invoke-static {p1, p2, v1, v3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    const-string/jumbo v1, "scaleX"

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    const/4 v3, 0x3

    invoke-static {p1, p2, v1, v3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    const-string/jumbo v1, "scaleY"

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    const/4 v3, 0x4

    invoke-static {p1, p2, v1, v3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    const-string/jumbo v1, "translateX"

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    const/4 v3, 0x6

    invoke-static {p1, p2, v1, v3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    const-string/jumbo v1, "translateY"

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    const/4 v3, 0x7

    invoke-static {p1, p2, v1, v3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    invoke-static {p1, p3, p2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
