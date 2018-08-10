.class public Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;
.super Lcom/sec/android/cover/neoncover/animation/NeonAnimation;
.source "NeonAnimationOngoing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;
    }
.end annotation


# instance fields
.field private mAnimationCircleSize:I

.field private mOnGoingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private neonLogo:Landroid/view/View;

.field private repeatOngoingAnimation:Z

.field private viewWhiteBottom:Landroid/view/View;

.field private viewWhiteTop:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->neonLogo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->repeatOngoingAnimation:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteTop:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;-><init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->repeatOngoingAnimation:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->prepareAnimation()V

    return-void
.end method

.method private prepareAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->neon_cover_circle_layout_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mAnimationCircleSize:I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->neon_cover_ongoing_event_animation_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->first_anim_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteBottom:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->second_anim_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteTop:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mView:Landroid/view/View;

    sget v1, Lcom/sec/android/sviewcover/R$id;->neon_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->neonLogo:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->clear()V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteBottom:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteTop:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->neonLogo:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAnimationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mView:Landroid/view/View;

    return-object v0
.end method

.method public startAnimation()V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isCleared:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    return-void

    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->repeatOngoingAnimation:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteTop:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteBottom:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->neonLogo:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Landroid/view/animation/AnimationSet;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v14, Landroid/view/animation/AnimationSet;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v15, Landroid/view/animation/AnimationSet;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v16, Landroid/view/animation/AnimationSet;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v20, 0x14d

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v20, 0x14d

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v20, 0x29b

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v20, 0x14d

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v20, 0x14d

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v20, 0x29b

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v20, 0x1f4

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v20, 0x5dc

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$1;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v9, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteBottom:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mAnimationCircleSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;-><init>(Landroid/view/View;IILcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;)V

    const-wide/16 v20, 0x3e8

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setDuration(J)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$2;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;Landroid/view/animation/AnimationSet;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteBottom:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mAnimationCircleSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;-><init>(Landroid/view/View;IILcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v20, 0x3e8

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setDuration(J)V

    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteTop:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mAnimationCircleSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;-><init>(Landroid/view/View;IILcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;)V

    const-wide/16 v20, 0x3e8

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setDuration(J)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v15, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    new-instance v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$3;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;Landroid/view/animation/AnimationSet;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v12, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteTop:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mAnimationCircleSize:I

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;-><init>(Landroid/view/View;IILcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;)V

    sget-object v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v20, 0x3e8

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->setDuration(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v19, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v15, v8}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$4;-><init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;Landroid/view/animation/AnimationSet;Landroid/view/animation/AnimationSet;Landroid/view/animation/AlphaAnimation;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isPrepared:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isPlaying:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteBottom:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->viewWhiteTop:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->neonLogo:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->repeatOngoingAnimation:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->isPlaying:Z

    iput-boolean v3, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->repeatOngoingAnimation:Z

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;->mOnGoingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
