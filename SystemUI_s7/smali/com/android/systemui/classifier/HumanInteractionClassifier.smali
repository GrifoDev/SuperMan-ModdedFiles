.class public Lcom/android/systemui/classifier/HumanInteractionClassifier;
.super Lcom/android/systemui/classifier/Classifier;
.source "HumanInteractionClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/HumanInteractionClassifier$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;


# instance fields
.field private final mBufferedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:I

.field private final mDpi:F

.field private mEnableClassifier:Z

.field private final mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/classifier/HumanInteractionClassifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/classifier/Classifier;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    iput-boolean v5, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    iput v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    new-instance v1, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;-><init>(Lcom/android/systemui/classifier/HumanInteractionClassifier;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    new-instance v1, Lcom/android/systemui/classifier/ClassifierData;

    iget v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/ClassifierData;-><init>(F)V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-direct {v1}, Lcom/android/systemui/classifier/HistoryEvaluator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/android/systemui/classifier/StrokeClassifier;

    new-instance v2, Lcom/android/systemui/classifier/AnglesClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/AnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/systemui/classifier/SpeedClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/SpeedClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/systemui/classifier/DurationCountClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/DurationCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/systemui/classifier/EndPointRatioClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/EndPointRatioClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/classifier/EndPointLengthClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/EndPointLengthClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/classifier/AccelerationClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/AccelerationClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/classifier/SpeedAnglesClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/SpeedAnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/classifier/LengthCountClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/LengthCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/systemui/classifier/DirectionClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/DirectionClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    new-array v1, v6, [Lcom/android/systemui/classifier/GestureClassifier;

    new-instance v2, Lcom/android/systemui/classifier/PointerCountClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/systemui/classifier/ProximityClassifier;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v2, v3}, Lcom/android/systemui/classifier/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "HIC_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method private addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/systemui/classifier/ClassifierData;->update(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v3, v12, v11

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/classifier/StrokeClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_1
    if-ge v11, v13, :cond_1

    aget-object v2, v12, v11

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/classifier/GestureClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v11}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v11}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/classifier/Stroke;

    const/4 v5, 0x0

    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "stroke"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_4
    if-ge v11, v13, :cond_5

    aget-object v3, v12, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v3, v14, v9}, Lcom/android/systemui/classifier/StrokeClassifier;->getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F

    move-result v4

    sget-boolean v14, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v14, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/classifier/StrokeClassifier;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v4, v15

    if-ltz v15, :cond_4

    :goto_5
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_2
    add-float/2addr v5, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_5
    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_6

    const-string/jumbo v11, " addTouchEvent"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v11, v5}, Lcom/android/systemui/classifier/HistoryEvaluator;->addStroke(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v11, 0x1

    if-eq v1, v11, :cond_8

    const/4 v11, 0x3

    if-ne v1, v11, :cond_e

    :cond_8
    const/4 v5, 0x0

    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "gesture"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_7
    if-ge v11, v13, :cond_c

    aget-object v2, v12, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v2, v14}, Lcom/android/systemui/classifier/GestureClassifier;->getFalseTouchEvaluation(I)F

    move-result v4

    sget-boolean v14, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v14, :cond_9

    invoke-virtual {v2}, Lcom/android/systemui/classifier/GestureClassifier;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v4, v15

    if-ltz v15, :cond_b

    :goto_8
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_9
    add-float/2addr v5, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_c
    sget-boolean v11, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v11, :cond_d

    const-string/jumbo v11, " addTouchEvent"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v11, v5}, Lcom/android/systemui/classifier/HistoryEvaluator;->addGesture(F)V

    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/systemui/classifier/ClassifierData;->cleanUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;
    .locals 1

    sget-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    :cond_0
    sget-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    return-object v0
.end method

.method private updateConfiguration()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "HIC_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "HIC"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return v0
.end method

.method public isFalseTouch()Z
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/HistoryEvaluator;->getEvaluation()F

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    sget-boolean v3, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "isFalseTouch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "eval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v2
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    :goto_0
    new-instance v3, Lcom/android/systemui/classifier/Point;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float v4, v2, v4

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    return-void
.end method
