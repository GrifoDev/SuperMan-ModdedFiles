.class Lcom/android/server/am/LaunchingTaskPositioner;
.super Ljava/lang/Object;
.source "LaunchingTaskPositioner.java"


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private mDefaultFreeformHeight:I

.field private mDefaultFreeformStartX:I

.field private mDefaultFreeformStartY:I

.field private mDefaultFreeformStepHorizontal:I

.field private mDefaultFreeformStepVertical:I

.field private mDefaultFreeformWidth:I

.field private mDefaultStartBoundsConfigurationSet:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v2, :cond_0

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v2

    int-to-float v2, v1

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    :cond_0
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :cond_1
    return v1
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v2, :cond_0

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v2

    int-to-float v2, v1

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    :cond_0
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :cond_1
    return v1
.end method

.method private position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZI)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {p3, p2}, Lcom/android/server/am/LaunchingTaskPositioner;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftStartingPoint(Landroid/graphics/Rect;I)V

    invoke-direct {p0, p3, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToFar(Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p4, :cond_2

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    if-gt v1, v2, :cond_4

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    if-le v1, v2, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    iget v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    add-int/2addr v3, p3

    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    add-int/2addr v5, p4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;I)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    neg-int v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedToFar(Landroid/graphics/Rect;I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_3

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method configure(Landroid/graphics/Rect;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_4

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    iget v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    invoke-virtual {v6, v2, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v3, 0x4

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    div-int/lit8 v7, v0, 0x4

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    if-gt v3, v0, :cond_0

    move v2, v5

    :cond_0
    if-eqz v2, :cond_5

    const v4, 0x3f2b851f    # 0.67f

    :goto_1
    if-eqz v2, :cond_6

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_2
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_1

    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_2

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :cond_3
    int-to-float v6, v3

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    int-to-float v6, v0

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    div-int/lit8 v6, v3, 0x10

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    div-int/lit8 v6, v0, 0x10

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    iput-boolean v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_6
    const v1, 0x3f2b851f    # 0.67f

    goto :goto_2
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    return-void
.end method

.method setDisplay(Landroid/view/Display;)V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;II)V

    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            "II)V"
        }
    .end annotation

    const/4 v5, 0x5

    iget-boolean v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_2

    if-lez p4, :cond_1

    if-lez p5, :cond_1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    return-void

    :cond_1
    iget v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    return-void

    :cond_2
    if-lez p4, :cond_3

    move v3, p4

    :goto_0
    if-lez p5, :cond_4

    move v0, p5

    :goto_1
    iget v4, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v2, v4, 0x70

    iget v4, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v1, v4, 0x7

    const/16 v4, 0x30

    if-ne v2, v4, :cond_6

    if-ne v1, v5, :cond_5

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v3

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2

    :cond_6
    const/16 v4, 0x50

    if-ne v2, v4, :cond_8

    if-ne v1, v5, :cond_7

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received unsupported gravity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", positioning in the center instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_2
.end method
