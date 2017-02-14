.class Lcom/android/server/display/MagnifierSurfaceControl$Border$4;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;->injectAccessibilityMotionEvent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    const-string/jumbo v6, "Magnifier.Border"

    const-string/jumbo v7, "injectAccessibilityMotionEvent"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/high16 v17, -0x80000000

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    new-instance v34, Landroid/app/Instrumentation;

    invoke-direct/range {v34 .. v34}, Landroid/app/Instrumentation;-><init>()V

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v38, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v38 .. v38}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v38

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v38

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v6, 0x0

    aput-object v38, v8, v6

    const/4 v6, 0x1

    new-array v0, v6, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v25, v0

    new-instance v37, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v37 .. v37}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v6, 0x1

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v36, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v36 .. v36}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpX:F

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpY:F

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v6, 0x0

    aput-object v37, v25, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownX:F

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$1:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownY:F

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v6, 0x0

    aput-object v36, v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v27, 0x0

    const/16 v32, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-object/from16 v24, v8

    move/from16 v26, v10

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v33, v17

    invoke-static/range {v18 .. v33}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method
