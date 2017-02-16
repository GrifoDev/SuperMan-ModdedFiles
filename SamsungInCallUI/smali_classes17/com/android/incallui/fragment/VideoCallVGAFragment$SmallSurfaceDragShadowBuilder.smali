.class public abstract Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "VideoCallVGAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VideoCallVGAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SmallSurfaceDragShadowBuilder"
.end annotation


# instance fields
.field private shadow:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VideoCallVGAFragment;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;

    .line 1107
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1108
    invoke-virtual {p0, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->getDragShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    .line 1109
    return-void
.end method


# virtual methods
.method public abstract getDragShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1127
    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "touch"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    .line 1113
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1114
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1115
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 1116
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1118
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 1119
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1120
    return-void
.end method
