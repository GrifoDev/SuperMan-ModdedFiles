.class Lcom/android/incallui/fragment/VideoCallVGAFragment$1;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;
.source "VideoCallVGAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VideoCallVGAFragment;->processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;-><init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getDragShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;->this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
