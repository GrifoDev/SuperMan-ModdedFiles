.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
.super Lcom/airbnb/lottie/animation/Keyframe;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/Keyframe",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 0
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    return-object p1
.end method


# virtual methods
.method getPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    return-object v0
.end method
