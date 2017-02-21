.class public abstract Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;
.super Ljava/lang/Object;
.source "SprDrawableAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_FRAME_DURATION:I = 0x10

.field public static final TYPE_FRAMEANIMATION:B = 0x2t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_VALUEANIMATION:B = 0x1t


# instance fields
.field protected final mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

.field protected final mDrawable:Landroid/graphics/drawable/Drawable;

.field protected final mInterval:I

.field protected mIsRunning:Z

.field public final mType:B


# direct methods
.method public constructor <init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "A drawable is not allocated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "A document is not allocated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mType:B

    iput-object p2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    if-ge v1, v0, :cond_2

    :goto_0
    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mInterval:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    goto :goto_0
.end method


# virtual methods
.method public getAnimationIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    return v0
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->stop()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
