.class public Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
.super Ljava/lang/Object;
.source "PathLineAnimationModelFactory.java"


# instance fields
.field animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field defaultDelay:I

.field defaultDirection:I

.field defaultDuration:I

.field defaultInterpolator:Landroid/animation/TimeInterpolator;

.field defaultRepeatCount:I

.field defaultRepeatMode:I

.field defaultStartPoint:I

.field mDelay:[I

.field mDirection:[I

.field mDuration:[I

.field mInterpolator:[Landroid/animation/TimeInterpolator;

.field mRepeatCount:[I

.field mRepeatMode:[I

.field mStartPoint:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDuration:I

    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDelay:I

    iput v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDirection:I

    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultStartPoint:I

    iput v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatMode:I

    iput v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    return-void
.end method

.method public static newInstance()Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 1

    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    invoke-direct {v0}, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAnimatorListener()Lcom/altamirasoft/path_animation/PathAnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    return-object v0
.end method

.method public setDefaultDirection(I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDirection:[I

    iput p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDirection:I

    return-object p0
.end method

.method public setDefaultDuration(I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDuration:[I

    iput p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDuration:I

    return-object p0
.end method

.method public setDefaultInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mInterpolator:[Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public setDelay([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDelay:[I

    return-object p0
.end method

.method public setDuration([I)Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDuration:[I

    return-object p0
.end method
