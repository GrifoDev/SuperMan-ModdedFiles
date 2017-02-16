.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field MeasurementSize:I

.field P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field StateSize:I

.field TAG:Ljava/lang/String;

.field X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field flagInitializeCovariance:Z

.field flagInitializeMeasurementM:Z

.field flagInitializeState:Z

.field flagMeasurementNoise:Z

.field flagProcessNoise:Z

.field flagTransitionMatrix:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "mState"    # I
    .param p2, "mMeasurement"    # I

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "KalmanFilter"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    .line 16
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeCovariance:Z

    .line 18
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    .line 19
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    .line 23
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    .line 24
    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    .line 25
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 28
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 29
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 30
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 31
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 32
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 22
    return-void
.end method


# virtual methods
.method public MeasurementUpdate(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Z
    .locals 22
    .param p1, "z"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error in MeasurementUpdate(), meauserement matrix size is wrong!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v4, 0x0

    return v4

    .line 169
    :cond_1
    new-instance v17, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 170
    .local v17, "K_gain":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 171
    .local v2, "Temp1":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v18, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 172
    .local v18, "Temp2":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v19, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 173
    .local v19, "Temp3":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v20, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 174
    .local v20, "Temp4":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v21, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 175
    .local v21, "Temp5":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v9, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    const/4 v5, 0x1

    invoke-direct {v9, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 176
    .local v9, "X_k_1":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v10, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 178
    .local v10, "P_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    if-eqz v4, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v6, v5, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 185
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, v18

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 186
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, v19

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 187
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v4, -0x1

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, v17

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 190
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v4, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v20

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 191
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v21

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 192
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 195
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 196
    .local v3, "debugMatrix":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v5, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 215
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v14, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v15

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v13, v4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v15, v4, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 218
    const/4 v4, 0x1

    return v4

    .line 179
    .end local v3    # "debugMatrix":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cannot execute MeasurementUpdate(), check initialization "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v4, 0x0

    return v4
.end method

.method public TimePropagation(D)Z
    .locals 12
    .param p1, "delT"    # D

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 135
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v2, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 136
    .local v0, "X_k_1":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v8, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v8, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 137
    .local v8, "P_k_1":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v9, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v9, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 138
    .local v9, "Temp1":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v10, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 140
    .local v10, "Temp2":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-eqz v2, :cond_0

    .line 146
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 147
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v3, -0x1

    move v3, v1

    move v5, v1

    move v6, v1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 150
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v9

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 151
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v10

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 152
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v10, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v8

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 153
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v3, -0x1

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v3, -0x1

    move v3, v1

    move v5, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 159
    return v11

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cannot execute TimePropagation(), check initialization "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v1
.end method

.method public getCurrentState()[D
    .locals 4

    .prologue
    .line 222
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    new-array v1, v2, [D

    .line 224
    .local v1, "mState":[D
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-object v1
.end method

.method public setInitialCovariance([[D)Z
    .locals 7
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 49
    aget-object v2, p1, v4

    array-length v2, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v2, v3, :cond_0

    .line 50
    return v4

    .line 52
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v2, v3, :cond_1

    .line 53
    return v4

    .line 55
    :cond_1
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    .line 56
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v3, p1, v0

    aget-wide v4, v3, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    .line 61
    return v6
.end method

.method public setInitialState([D)Z
    .locals 6
    .param p1, "vector"    # [D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_0

    .line 38
    return v4

    .line 40
    :cond_0
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-wide v2, p1, v0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    .line 45
    return v5
.end method

.method public setMeasurementMatrix([[D)Z
    .locals 7
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 82
    aget-object v2, p1, v4

    array-length v2, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v2, v3, :cond_0

    .line 83
    return v4

    .line 85
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v2, v3, :cond_1

    .line 86
    return v4

    .line 89
    :cond_1
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v0, v2, :cond_3

    .line 90
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v3, p1, v0

    aget-wide v4, v3, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    .line 97
    return v6
.end method

.method public setMeasurementNoise([[D)Z
    .locals 7
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 118
    aget-object v2, p1, v4

    array-length v2, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v2, v3, :cond_0

    .line 119
    return v4

    .line 121
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v2, v3, :cond_1

    .line 122
    return v4

    .line 124
    :cond_1
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v0, v2, :cond_3

    .line 125
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v1, v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v3, p1, v0

    aget-wide v4, v3, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    .line 131
    return v6
.end method

.method public setProcessNoise([[D)Z
    .locals 7
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 101
    aget-object v2, p1, v4

    array-length v2, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v2, v3, :cond_0

    .line 102
    return v4

    .line 104
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v2, v3, :cond_1

    .line 105
    return v4

    .line 107
    :cond_1
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    .line 108
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v3, p1, v0

    aget-wide v4, v3, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    .line 114
    return v6
.end method

.method public setTransitionMatrix([[D)Z
    .locals 7
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 65
    aget-object v2, p1, v4

    array-length v2, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v2, v3, :cond_0

    .line 66
    return v4

    .line 68
    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v2, v3, :cond_1

    .line 69
    return v4

    .line 71
    :cond_1
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    .line 72
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_1
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v3, p1, v0

    aget-wide v4, v3, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    .line 78
    return v6
.end method
