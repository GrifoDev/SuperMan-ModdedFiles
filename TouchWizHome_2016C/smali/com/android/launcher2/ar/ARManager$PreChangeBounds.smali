.class Lcom/android/launcher2/ar/ARManager$PreChangeBounds;
.super Landroid/transition/ChangeBounds;
.source "ARManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ar/ARManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreChangeBounds"
.end annotation


# static fields
.field private static final PROPNAME_CELL_X:Ljava/lang/String; = "launcher:cell:x"

.field private static final PROPNAME_CELL_Y:Ljava/lang/String; = "launcher:cell:y"

.field private static final PROPNAME_OFFSET_X:Ljava/lang/String; = "launcher:offset:x"

.field private static final PROPNAME_OFFSET_Y:Ljava/lang/String; = "launcher:offset:y"


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ar/ARManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/ar/ARManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ar/ARManager$PreChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    invoke-direct {p0}, Landroid/transition/ChangeBounds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/ar/ARManager;Lcom/android/launcher2/ar/ARManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/ar/ARManager$PreChangeBounds;-><init>(Lcom/android/launcher2/ar/ARManager;)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureStartValues(Landroid/transition/TransitionValues;)V

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "launcher:cell:x"

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "launcher:cell:y"

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v3, :cond_1

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {v3, v4, v2, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "launcher:offset:x"

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "launcher:offset:y"

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/ar/ARManager$PreChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    # getter for: Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/launcher2/ar/ARManager;->access$000(Lcom/android/launcher2/ar/ARManager;)Landroid/util/ArrayMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ar/ARManager$PreChangeBounds;->this$0:Lcom/android/launcher2/ar/ARManager;

    # getter for: Lcom/android/launcher2/ar/ARManager;->mPrevLayoutValues:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/launcher2/ar/ARManager;->access$000(Lcom/android/launcher2/ar/ARManager;)Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v5, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
