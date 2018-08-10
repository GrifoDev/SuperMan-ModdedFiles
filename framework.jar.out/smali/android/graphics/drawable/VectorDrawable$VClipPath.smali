.class Landroid/graphics/drawable/VectorDrawable$VClipPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x78


# instance fields
.field private final mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-wrap19()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap20(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5

    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-wrap30(JLjava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/util/PathParser$PathData;

    invoke-direct {v2, v0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathData:Landroid/util/PathParser$PathData;

    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/graphics/drawable/VectorDrawable;->-wrap32(JLjava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableClipPath:[I

    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
