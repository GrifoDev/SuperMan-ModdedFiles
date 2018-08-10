.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v11

    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar;->-set2(Z)Z

    invoke-static {v11}, Lcom/android/internal/widget/FloatingToolbar;->-set4(Z)Z

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6, v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Z)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get4()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v7

    sub-float v7, v4, v7

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get27(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v7

    sub-float v7, v5, v7

    float-to-int v7, v7

    invoke-static {v6, v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v1, v6

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v6

    sub-float v6, v5, v6

    float-to-int v2, v6

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get10(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v3

    mul-int v6, v1, v1

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get29(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get29(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v8

    mul-int/2addr v7, v8

    if-lt v6, v7, :cond_1

    invoke-static {v9}, Lcom/android/internal/widget/FloatingToolbar;->-set2(Z)Z

    invoke-static {v9}, Lcom/android/internal/widget/FloatingToolbar;->-set3(Z)Z

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Z)Z

    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get10(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v6

    if-eq v3, v6, :cond_2

    const-string/jumbo v6, "floating_toolbar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FloatingToolbar will be start to move, moved deltaX, deltaY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\nmTouchSlop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get29(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get3()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6, v4, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FF)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;II)V

    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get25(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get25(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get25(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v6, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
