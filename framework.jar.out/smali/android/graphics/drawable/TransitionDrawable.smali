.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v1, v0, v0, v0}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    check-cast v0, Landroid/content/res/Resources;

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v12, 0xff

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x1

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    iget-object v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    aget-object v6, v1, v10

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    if-ne v0, v12, :cond_3

    aget-object v6, v1, v11

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const/4 v4, 0x0

    iput v11, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_0

    :pswitch_1
    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v7, v7

    div-float v5, v6, v7

    cmpl-float v6, v5, v13

    if-ltz v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v6, v6

    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    aget-object v6, v1, v10

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    rsub-int v6, v0, 0xff

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_7

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-lez v0, :cond_8

    aget-object v6, v1, v11

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method

.method public reverseTransition(I)V
    .locals 8

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v4

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v4, :cond_0

    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    :goto_0
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void

    :cond_0
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iget-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_3

    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v4

    :goto_1
    long-to-int v2, v4

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    return-void

    :cond_3
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v4, v2

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    goto :goto_1
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return-void
.end method

.method public startTransition(I)V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput-boolean v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method
