.class Landroid/support/graphics/drawable/AndroidResources;
.super Ljava/lang/Object;
.source "AndroidResources.java"


# static fields
.field static final styleable_AnimatedVectorDrawable:[I

.field static final styleable_AnimatedVectorDrawableTarget:[I

.field static final styleable_VectorDrawableClipPath:[I

.field static final styleable_VectorDrawableGroup:[I

.field static final styleable_VectorDrawablePath:[I

.field static final styleable_VectorDrawableTypeArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x1010003

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableTypeArray:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableGroup:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawablePath:[I

    const v0, 0x1010405

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableClipPath:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010199

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawable:[I

    const v0, 0x10101cd

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/AndroidResources;->styleable_AnimatedVectorDrawableTarget:[I

    return-void

    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
