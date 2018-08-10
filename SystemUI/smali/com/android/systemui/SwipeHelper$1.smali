.class Lcom/android/systemui/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get6(Lcom/android/systemui/SwipeHelper;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v4, "1118"

    invoke-static {v3, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3, v6}, Lcom/android/systemui/SwipeHelper;->-set0(Lcom/android/systemui/SwipeHelper;Z)Z

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v4}, Lcom/android/systemui/SwipeHelper;->-get7(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v4}, Lcom/android/systemui/SwipeHelper;->-get7(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v4}, Lcom/android/systemui/SwipeHelper;->-get7(Lcom/android/systemui/SwipeHelper;)[I

    move-result-object v4

    aget v4, v4, v6

    sub-int v2, v3, v4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v4}, Lcom/android/systemui/SwipeHelper;->-get1(Lcom/android/systemui/SwipeHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v3}, Lcom/android/systemui/SwipeHelper;->-get5(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    invoke-static {v4}, Lcom/android/systemui/SwipeHelper;->-get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v1, v2, v0}, Lcom/android/systemui/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    :cond_1
    return-void
.end method
