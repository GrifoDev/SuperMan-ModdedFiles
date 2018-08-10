.class public Lcom/android/server/wm/animation/LowEndAnimationParams;
.super Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;
.source "LowEndAnimationParams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;-><init>()V

    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LowEnd"

    return-object v0
.end method

.method protected init()V
    .locals 8

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_WALLPAPER_EXIT_ENABLED:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_WALLPAPER_ENTER_ENABLED:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->USE_ACCURATE_SCALE_DOWN:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f428f5c    # 0.76f

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_CLIP_DURATION_UPPER:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_CLIP_DURATION_MIDDLE:J

    const-wide/16 v0, 0x46

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_CLIP_DURATION_LOWER:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v6, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v6, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_SCALE_X_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_SCALE_X_TO:F

    iput v6, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_SCALE_Y_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_SCALE_Y_TO:F

    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_SCALE_DURATION:J

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_X_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_X_TO:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_Y_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_Y_TO:F

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v4, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_ALPHA_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_ALPHA_TO:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_ALPHA_DURATION:J

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_APP_ENTER_ALPHA_START_OFFSET:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v6, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_SCALE_X_FROM:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_SCALE_X_TO:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_SCALE_Y_FROM:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_SCALE_Y_TO:F

    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_SCALE_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_FROM:F

    iput v4, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_TO:F

    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_FROM:F

    iput v6, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_TO:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_FROM:F

    iput v6, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_TO:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_SCALE_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v6, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_FROM:F

    iput v4, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_TO:F

    const-wide/16 v0, 0xb4

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_DURATION:J

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_START_OFFSET:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_X_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_X_TO:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_Y_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_Y_TO:F

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v4, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_TO:F

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_DURATION:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_START_OFFSET:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v6, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_SCALE_X_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_SCALE_X_TO:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_SCALE_Y_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_SCALE_Y_TO:F

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_SCALE_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v4, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_ALPHA_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_ALPHA_TO:F

    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_ALPHA_DURATION:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_ENTER_ALPHA_START_OFFSET:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_EXIT_ALPHA_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_OPEN_EXIT_ALPHA_TO:F

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_ENTER_ALPHA_FROM:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_ENTER_ALPHA_TO:F

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v4, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_SCALE_X_FROM:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_SCALE_X_TO:F

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_SCALE_Y_FROM:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_SCALE_Y_TO:F

    const-wide/16 v0, 0x14a

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_SCALE_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iput v3, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_ALPHA_FROM:F

    iput v4, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_ALPHA_TO:F

    const-wide/16 v0, 0xa7

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_ALPHA_DURATION:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/animation/LowEndAnimationParams;->TASK_CLOSE_EXIT_ALPHA_START_OFFSET:J

    return-void
.end method
