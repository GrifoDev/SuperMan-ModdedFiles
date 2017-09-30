.class public abstract Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/DebugScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CustomDragShadowBuilder"
.end annotation


# instance fields
.field private shadow:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/incallui/util/DebugScreen;


# direct methods
.method public constructor <init>(Lcom/android/incallui/util/DebugScreen;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->this$0:Lcom/android/incallui/util/DebugScreen;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->getDragShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public abstract getDragShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->this$0:Lcom/android/incallui/util/DebugScreen;

    invoke-static {v2}, Lcom/android/incallui/util/DebugScreen;->access$000(Lcom/android/incallui/util/DebugScreen;)Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->this$0:Lcom/android/incallui/util/DebugScreen;

    invoke-static {v0}, Lcom/android/incallui/util/DebugScreen;->access$000(Lcom/android/incallui/util/DebugScreen;)Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/incallui/util/DebugScreen$CustomDragShadowBuilder;->this$0:Lcom/android/incallui/util/DebugScreen;

    invoke-static {v1}, Lcom/android/incallui/util/DebugScreen;->access$000(Lcom/android/incallui/util/DebugScreen;)Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-void

    :cond_1
    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method
