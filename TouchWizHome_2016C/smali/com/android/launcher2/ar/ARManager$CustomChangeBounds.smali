.class Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;
.super Landroid/transition/ChangeBounds;
.source "ARManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ar/ARManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomChangeBounds"
.end annotation


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CELL_X:Ljava/lang/String; = "launcher:cell:x"

.field private static final PROPNAME_CELL_Y:Ljava/lang/String; = "launcher:cell:y"

.field private static final PROPNAME_OFFSET_X:Ljava/lang/String; = "launcher:offset:x"

.field private static final PROPNAME_OFFSET_Y:Ljava/lang/String; = "launcher:offset:y"


# instance fields
.field private mPrevOrientation:I

.field private mPrevValuesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/ar/ARManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/ar/ARManager;Landroid/util/ArrayMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/transition/TransitionValues;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    invoke-direct {p0}, Landroid/transition/ChangeBounds;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->mPrevValuesMap:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->mPrevValuesMap:Landroid/util/ArrayMap;

    iput p3, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->mPrevOrientation:I

    return-void
.end method

.method private getOffsetEnd(II)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getRequestedOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    add-int v0, p1, p2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sub-int v0, p1, p2

    goto :goto_0
.end method

.method private getOffsetStart(II)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getRequestedOrientation()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    sub-int v0, p1, p2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int v0, p1, p2

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureEndValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 11

    const/4 v3, 0x0

    iget-object v8, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v8, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->mPrevValuesMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->mPrevValuesMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/transition/TransitionValues;

    iget-object v4, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_1
    iget-object v8, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f10008a

    if-ne v8, v9, :cond_2

    if-eqz v3, :cond_2

    iget-object v8, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:bounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    # getter for: Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/android/launcher2/ar/ARManager;->access$500(Lcom/android/launcher2/ar/ARManager;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    # getter for: Lcom/android/launcher2/ar/ARManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/android/launcher2/ar/ARManager;->access$500(Lcom/android/launcher2/ar/ARManager;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v1, :cond_4

    sub-int v8, v1, v7

    div-int/lit8 v6, v8, 0x2

    :goto_2
    if-eqz v5, :cond_2

    iget v8, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->mPrevOrientation:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->mPrevOrientation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    :cond_1
    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_3
    return-void

    :cond_3
    # getter for: Lcom/android/launcher2/ar/ARManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->access$400()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomChangeBounds captureStartValues : different view - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureStartValues(Landroid/transition/TransitionValues;)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    sub-int v8, v7, v1

    div-int/lit8 v6, v8, 0x2

    goto :goto_2

    :cond_5
    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v6

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 38
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v33, v0

    # invokes: Lcom/android/launcher2/ar/ARManager;->isHiddenView(Landroid/view/View;)Z
    invoke-static/range {v32 .. v33}, Lcom/android/launcher2/ar/ARManager;->access$100(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z

    move-result v32

    if-nez v32, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v33, v0

    # invokes: Lcom/android/launcher2/ar/ARManager;->isChildOfAppWidgetHostView(Landroid/view/View;)Z
    invoke-static/range {v32 .. v33}, Lcom/android/launcher2/ar/ARManager;->access$200(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z

    move-result v32

    if-eqz v32, :cond_4

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "android:changeBounds:bounds"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "android:changeBounds:bounds"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move/from16 v32, v0

    if-nez v32, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/launcher2/CellLayoutMenu;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    :cond_5
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:offset:x"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:offset:x"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v22

    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:offset:y"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:offset:y"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v23

    :cond_7
    const/16 v16, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    if-eqz v32, :cond_9

    const/16 v27, 0x190

    const/16 v28, 0x64

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    new-instance v18, Landroid/graphics/Point;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-object/from16 v0, v18

    iget v13, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Point;->y:I

    sub-int v16, v22, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v32

    const/16 v33, 0x190

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_8

    const/16 v16, 0x0

    :cond_8
    sub-int v31, v23, v14

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v32

    const/16 v33, 0x64

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    const/16 v31, 0x0

    :cond_9
    if-eqz v26, :cond_a

    if-eqz v15, :cond_a

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    add-int v24, v32, v16

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    add-int v25, v32, v31

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v24

    move/from16 v0, v32

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v24

    move/from16 v0, v32

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v32, v32, v25

    move/from16 v0, v32

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    add-int v32, v32, v25

    move/from16 v0, v32

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/launcher2/MenuAppIconView;

    move/from16 v32, v0

    if-eqz v32, :cond_f

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:cell:x"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:cell:x"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v20

    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:cell:y"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "launcher:cell:y"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v21

    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v0, v21

    if-eq v0, v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v32

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    div-int/lit8 v36, v36, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->getOffsetStart(II)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v32 .. v36}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v29

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->POSITION_PROPERTY:Landroid/util/Property;
    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->access$600()Landroid/util/Property;

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v32

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    div-int/lit8 v34, v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->getOffsetEnd(II)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v32 .. v36}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v30

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->POSITION_PROPERTY:Landroid/util/Property;
    invoke-static {}, Lcom/android/launcher2/ar/ARManager;->access$600()Landroid/util/Property;

    move-result-object v33

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    sget-object v33, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    fill-array-data v34, :array_0

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v32, v0

    sget-object v33, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    fill-array-data v34, :array_1

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v32, 0x8c

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static/range {v32 .. v32}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v32, 0x8c

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v32, 0x8c

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static/range {v32 .. v32}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v32, 0x8c

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static/range {v32 .. v32}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v32, 0x8c

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v32, 0x8c

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static/range {v32 .. v32}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_1

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_e
    invoke-super/range {p0 .. p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v4

    if-eqz v4, :cond_d

    const-wide/16 v32, 0x118

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static/range {v32 .. v32}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_f
    invoke-super/range {p0 .. p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v4

    if-eqz v4, :cond_d

    const-wide/16 v32, 0x118

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ar/ARManager$CustomChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    move-object/from16 v32, v0

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static/range {v32 .. v32}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
