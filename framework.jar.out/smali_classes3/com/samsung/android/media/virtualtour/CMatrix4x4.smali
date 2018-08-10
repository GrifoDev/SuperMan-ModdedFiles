.class public Lcom/samsung/android/media/virtualtour/CMatrix4x4;
.super Ljava/lang/Object;
.source "CMatrix4x4.java"


# instance fields
.field public e0:F

.field public e1:F

.field public e10:F

.field public e11:F

.field public e12:F

.field public e13:F

.field public e14:F

.field public e15:F

.field public e2:F

.field public e3:F

.field public e4:F

.field public e5:F

.field public e6:F

.field public e7:F

.field public e8:F

.field public e9:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->identityMat()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e0:F

    iput p2, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    iput p3, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    iput p4, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    iput p5, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    iput p6, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e5:F

    iput p7, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    iput p8, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    iput p9, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    iput p10, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    iput p11, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e10:F

    iput p12, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    iput p13, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    iput p14, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    move/from16 v0, p15

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    move/from16 v0, p16

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e15:F

    return-void
.end method


# virtual methods
.method public clon()Lcom/samsung/android/media/virtualtour/CMatrix4x4;
    .locals 18

    new-instance v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e0:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e5:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e10:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e15:F

    move/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/samsung/android/media/virtualtour/CMatrix4x4;-><init>(FFFFFFFFFFFFFFFF)V

    return-object v1
.end method

.method public identityMat()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e0:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e5:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e10:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e15:F

    return-void
.end method

.method public multiply(Lcom/samsung/android/media/virtualtour/CMatrix4x4;)V
    .locals 36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e0:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e5:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e10:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e15:F

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e0:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e5:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e10:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e15:F

    move/from16 v25, v0

    mul-float v34, v2, v18

    mul-float v35, v12, v19

    add-float v34, v34, v35

    mul-float v35, v16, v26

    add-float v34, v34, v35

    mul-float v35, v6, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e0:F

    mul-float v34, v2, v28

    mul-float v35, v12, v29

    add-float v34, v34, v35

    mul-float v35, v16, v30

    add-float v34, v34, v35

    mul-float v35, v6, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    mul-float v34, v2, v32

    mul-float v35, v12, v33

    add-float v34, v34, v35

    mul-float v35, v16, v20

    add-float v34, v34, v35

    mul-float v35, v6, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    mul-float v34, v2, v22

    mul-float v35, v12, v23

    add-float v34, v34, v35

    mul-float v35, v16, v24

    add-float v34, v34, v35

    mul-float v35, v6, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    mul-float v34, v3, v18

    mul-float v35, v13, v19

    add-float v34, v34, v35

    mul-float v35, v17, v26

    add-float v34, v34, v35

    mul-float v35, v7, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    mul-float v34, v3, v28

    mul-float v35, v13, v29

    add-float v34, v34, v35

    mul-float v35, v17, v30

    add-float v34, v34, v35

    mul-float v35, v7, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e5:F

    mul-float v34, v3, v32

    mul-float v35, v13, v33

    add-float v34, v34, v35

    mul-float v35, v17, v20

    add-float v34, v34, v35

    mul-float v35, v7, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    mul-float v34, v3, v22

    mul-float v35, v13, v23

    add-float v34, v34, v35

    mul-float v35, v17, v24

    add-float v34, v34, v35

    mul-float v35, v7, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    mul-float v34, v10, v18

    mul-float v35, v14, v19

    add-float v34, v34, v35

    mul-float v35, v4, v26

    add-float v34, v34, v35

    mul-float v35, v8, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    mul-float v34, v10, v28

    mul-float v35, v14, v29

    add-float v34, v34, v35

    mul-float v35, v4, v30

    add-float v34, v34, v35

    mul-float v35, v8, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    mul-float v34, v10, v32

    mul-float v35, v14, v33

    add-float v34, v34, v35

    mul-float v35, v4, v20

    add-float v34, v34, v35

    mul-float v35, v8, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e10:F

    mul-float v34, v10, v22

    mul-float v35, v14, v23

    add-float v34, v34, v35

    mul-float v35, v4, v24

    add-float v34, v34, v35

    mul-float v35, v8, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    mul-float v34, v11, v18

    mul-float v35, v15, v19

    add-float v34, v34, v35

    mul-float v35, v5, v26

    add-float v34, v34, v35

    mul-float v35, v9, v27

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    mul-float v34, v11, v28

    mul-float v35, v15, v29

    add-float v34, v34, v35

    mul-float v35, v5, v30

    add-float v34, v34, v35

    mul-float v35, v9, v31

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    mul-float v34, v11, v32

    mul-float v35, v15, v33

    add-float v34, v34, v35

    mul-float v35, v5, v20

    add-float v34, v34, v35

    mul-float v35, v9, v21

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    mul-float v34, v11, v22

    mul-float v35, v15, v23

    add-float v34, v34, v35

    mul-float v35, v5, v24

    add-float v34, v34, v35

    mul-float v35, v9, v25

    add-float v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e15:F

    return-void
.end method

.method public transpose()V
    .locals 12

    iget v3, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    iget v6, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    iget v9, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    iget v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    iget v7, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    iget v10, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    iget v1, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    iget v4, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    iget v11, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    iget v2, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    iget v5, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    iget v8, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    iput v3, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e4:F

    iput v6, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e8:F

    iput v9, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e12:F

    iput v0, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e1:F

    iput v7, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e9:F

    iput v10, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e13:F

    iput v1, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e2:F

    iput v4, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e6:F

    iput v11, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e14:F

    iput v2, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e3:F

    iput v5, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e7:F

    iput v8, p0, Lcom/samsung/android/media/virtualtour/CMatrix4x4;->e11:F

    return-void
.end method
