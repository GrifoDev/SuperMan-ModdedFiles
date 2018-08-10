.class Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalAutoBrightness"
.end annotation


# instance fields
.field private final BASIS_LUX:F

.field private final SIZE_DEFAULT_LIST:I

.field private mOffsetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field private mOp0LuxChangedByUser:Z

.field private mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->loadPoint()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->savePoint()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->BASIS_LUX:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->SIZE_DEFAULT_LIST:I

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->init()V

    return-void
.end method

.method private addSubOffsetPointsIfNeededLocked(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllSubOffsetPointsLocked()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->checkReversePointsByUsingAutoBrightnessTableValue(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->printOffsetList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    const-string/jumbo v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PAB] 4-[CHECK POINT] : Too Many Sub Points. size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private addToListAfterBoundaryCheckLocked(FIF)I
    .locals 12

    const/4 v11, 0x1

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    cmpg-float v5, p1, v10

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_0

    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-remove op : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_2

    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-remove 0lux offset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v7}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v9, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    :cond_2
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v1

    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v5, p1, v9

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput-boolean v11, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-change : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v7}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :cond_3
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v5, v5, p1

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput p3, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-change : ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {v3, v5, p1, p3, v11}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mHighBoundary:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-eqz v5, :cond_5

    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLowBoundary:F

    iget v6, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    iget v5, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-eqz v5, :cond_6

    const-string/jumbo v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_6
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[PAB] 1-add : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private checkReversePointsByUsingAutoBrightnessTableValue(I)I
    .locals 26

    const/4 v9, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/4 v12, 0x0

    :goto_0
    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    aget v22, v10, v12

    const/16 v23, 0x2710

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v13

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_2

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    cmpl-float v22, v23, v22

    if-nez v22, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    aget v23, v10, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aget v24, v10, v12

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F

    move-result v24

    const/16 v25, 0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, p1

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    const-string/jumbo v22, "AutomaticBrightnessController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[PAB] Index ERROR : addedIndex = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " size = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    move/from16 v22, v0

    add-float v7, v23, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move v8, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v22

    add-int/lit8 v12, v22, -0x1

    :goto_3
    if-ltz v12, :cond_f

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    move/from16 v16, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v17, v16, v15

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gez v22, :cond_a

    const/16 v22, 0x0

    cmpl-float v22, v14, v22

    if-nez v22, :cond_7

    const/16 v19, 0x0

    :goto_4
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    :cond_6
    :goto_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_3

    :cond_7
    const/16 v19, 0x2

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    sub-float v23, v7, v16

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string/jumbo v23, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[PAB] 4-negative-change : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const-string/jumbo v22, "AutomaticBrightnessController"

    const-string/jumbo v23, "[PAB] 4-2-negative-ERROR."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    cmpl-float v22, v17, v8

    if-ltz v22, :cond_6

    const/16 v22, 0x0

    cmpl-float v22, v14, v22

    if-nez v22, :cond_c

    const/16 v19, 0x0

    :goto_7
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    sub-float v23, v8, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_c
    const/16 v19, 0x2

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    sub-float v23, v8, v16

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string/jumbo v23, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[PAB] 4-reverse-change : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    const-string/jumbo v22, "AutomaticBrightnessController"

    const-string/jumbo v23, "[PAB] 4-2-reverse-ERROR."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v12

    :goto_9
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_19

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    move/from16 v16, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v17, v16, v15

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v22, v17, v7

    if-gez v22, :cond_14

    const v22, 0x461c4000    # 10000.0f

    cmpl-float v22, v14, v22

    if-nez v22, :cond_11

    const/16 v19, 0x0

    :goto_a
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    sub-float v23, v7, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_b
    add-int/lit8 v9, v9, 0x1

    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :cond_11
    const/16 v19, 0x2

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    sub-float v23, v7, v16

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string/jumbo v23, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[PAB] 4-change : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    const-string/jumbo v22, "AutomaticBrightnessController"

    const-string/jumbo v23, "[PAB] 4-2ERROR."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_14
    move/from16 v7, v17

    const v22, 0x461c4000    # 10000.0f

    cmpl-float v22, v14, v22

    if-nez v22, :cond_16

    const/16 v19, 0x0

    :goto_d
    new-instance v20, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_c

    :cond_16
    const/16 v19, 0x2

    goto :goto_d

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    move-object/from16 v0, v22

    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const-string/jumbo v23, "AutomaticBrightnessController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[PAB] 4-change : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_18
    const-string/jumbo v22, "AutomaticBrightnessController"

    const-string/jumbo v23, "[PAB] 4-2ERROR."

    invoke-static/range {v22 .. v23}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_19
    return v9
.end method

.method private getIndex(Ljava/util/ArrayList;F)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int v2, v2

    float-to-int v4, p2

    if-lt v2, v4, :cond_2

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit v3

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getSlope(FFFF)F
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpl-float v1, p1, p3

    if-eqz v1, :cond_2

    cmpl-float v1, p2, p4

    if-eqz v1, :cond_2

    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    const p1, 0x3f7fbe77    # 0.999f

    :cond_0
    cmpl-float v1, p3, v2

    if-nez v1, :cond_1

    const p3, 0x3f7fbe77    # 0.999f

    :cond_1
    sub-float v1, p4, p2

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float v0, v1, v2

    :cond_2
    return v0
.end method

.method private getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\n[PAB] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private init()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[PAB] init : size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadPoint()V
    .locals 12

    const/4 v11, -0x2

    const/4 v10, 0x0

    const-string/jumbo v8, "AutomaticBrightnessController"

    const-string/jumbo v9, "[PAB] Load PAC point"

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v8}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pac_offset_list"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "pac_0lux_changed"

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-lez v8, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-eqz v4, :cond_3

    const-string/jumbo v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    const/4 v1, 0x0

    :goto_1
    array-length v8, v3

    if-ge v1, v8, :cond_3

    aget-object v8, v3, v1

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/4 v11, 0x2

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;-><init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V

    iget v8, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v9, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v9, v8, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget v8, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iget-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v9}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v9, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v9, v8, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v8, "AutomaticBrightnessController"

    const-string/jumbo v9, "[PAB] Failed to load PAC point"

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private printOffsetList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[PAB] Offset List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshFixedOffsetPointsLocked(I)V
    .locals 8

    const/4 v3, 0x2

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    const-string/jumbo v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PAB] 3-[CHECK POINT] ERROR. index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_a

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_6

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_5

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_0

    :cond_5
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    :cond_7
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    goto :goto_1

    :cond_8
    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iput v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput v3, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PAB] 3-[CHECK POINT] Fixed points are missing. size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    goto/16 :goto_0
.end method

.method private removeAllReverseUserOffsetPointsLocked(I)I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->resetPersonalAutoBrightness()V

    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-[CHECK POINT] ERROR. index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v6, v7

    if-lez p1, :cond_4

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v2, v6, v7

    cmpl-float v6, v2, v4

    if-lez v6, :cond_1

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v6, v10, :cond_2

    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v6, :cond_3

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    sub-float v6, v4, v6

    iput v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-le v1, p1, :cond_9

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v2, v6, v7

    cmpg-float v6, v2, v4

    if-gez v6, :cond_5

    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-ne v6, v10, :cond_6

    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    iget v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_7

    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    goto :goto_3

    :cond_7
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-ERROR.  i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", i.offset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[PAB] 2-remove : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    return v0
.end method

.method private removeAllSubOffsetPointsLocked()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private savePoint()V
    .locals 7

    const/4 v6, -0x2

    const-string/jumbo v4, "AutomaticBrightnessController"

    const-string/jumbo v5, "[PAB] Save PAC point"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffsetType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "pac_offset_list"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v5, "pac_0lux_changed"

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addPoint(FI)V
    .locals 6

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[PAB] Do not add Point : lux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    int-to-float v3, p2

    sub-float v1, v3, v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllSubOffsetPointsLocked()V

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addToListAfterBoundaryCheckLocked(FIF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->removeAllReverseUserOffsetPointsLocked(I)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->refreshFixedOffsetPointsLocked(I)V

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addSubOffsetPointsIfNeededLocked(I)V

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->printOffsetList(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    move-result-object v3

    float-to-int v4, p1

    invoke-interface {v3, p2, v4}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->onPabPointAdded(II)V

    return-void

    :cond_3
    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    const/16 p2, 0xff

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getStringForOffsetList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "[PAB] Personal Auto Brightness:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PAB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PAB] mOp0LuxChangedByUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOffset(F)F
    .locals 12

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    cmpg-float v6, p1, v9

    if-gtz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return v6

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_1

    monitor-exit v7

    return v9

    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float p1, v6

    :cond_2
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v6, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v0

    if-gtz v0, :cond_3

    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[PAB] getOffset: index error. index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " lux="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return v6

    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v6, v6, p1

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v1, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v7

    return v1

    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v6, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v4, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v3, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v2, v6, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mLux:F

    cmpl-float v6, v3, v2

    if-eqz v6, :cond_6

    cmpl-float v6, v5, v4

    if-nez v6, :cond_7

    :cond_6
    move v1, v5

    goto :goto_0

    :cond_7
    cmpl-float v6, v2, v9

    if-nez v6, :cond_8

    const v2, 0x3f7fbe77    # 0.999f

    :cond_8
    cmpl-float v6, p1, v9

    if-nez v6, :cond_9

    const p1, 0x3f7fbe77    # 0.999f

    :cond_9
    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getSlope(FFFF)F

    move-result v6

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    mul-float/2addr v6, v8

    add-float v1, v6, v4

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getPersonalScreenAutoBrightness(F)F
    .locals 8

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v7, v7, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-float/2addr v5, v7

    monitor-exit v6

    return v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getIndex(Ljava/util/ArrayList;F)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget v5, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget v7, v3, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    add-float v4, v5, v7

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->getOffset(F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    add-float v0, v2, v1

    cmpl-float v5, v4, v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public resetPersonalAutoBrightness()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0LuxChangedByUser:Z

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOffset:F

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOffsetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatePacOffset()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOp0Lux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->mOpBeforeHbmLux:Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v2

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;->mOrgCd:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
