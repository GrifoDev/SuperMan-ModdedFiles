.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getUiAlpha()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$9;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    return v2
.end method
