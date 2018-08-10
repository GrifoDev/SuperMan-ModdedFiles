.class Lcom/android/internal/widget/DecorCaptionView$3;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$3;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$3;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/DecorCaptionView;->-wrap3(Lcom/android/internal/widget/DecorCaptionView;Landroid/view/View;Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$3;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->-wrap2(Lcom/android/internal/widget/DecorCaptionView;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
