.class Lcom/android/incallui/agif/AgifImageManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifImageManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v2}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/incallui/agif/AgifImageManager;->access$202(Lcom/android/incallui/agif/AgifImageManager;F)F

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/incallui/agif/AgifImageManager;->access$402(Lcom/android/incallui/agif/AgifImageManager;F)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AgifImageManager"

    const-string v2, "onTouch IllegalArgumentException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v4}, Lcom/android/incallui/agif/AgifImageManager;->access$400(Lcom/android/incallui/agif/AgifImageManager;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lez v3, :cond_1

    int-to-float v3, v3

    const/high16 v4, 0x44480000    # 800.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    :cond_1
    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v4}, Lcom/android/incallui/agif/AgifImageManager;->access$400(Lcom/android/incallui/agif/AgifImageManager;)F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v0}, Lcom/android/incallui/agif/AgifImageManager;->access$500(Lcom/android/incallui/agif/AgifImageManager;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v3}, Lcom/android/incallui/agif/AgifImageManager;->access$200(Lcom/android/incallui/agif/AgifImageManager;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$2;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$600(Lcom/android/incallui/agif/AgifImageManager;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
