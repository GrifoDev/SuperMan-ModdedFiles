.class Lcom/android/incallui/service/HeadUpNotificationService$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HeadUpNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/HeadUpNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/HeadUpNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/HeadUpNotificationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService$2;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 171
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 173
    .local v0, "distanceX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 174
    .local v1, "distanceY":I
    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    if-lt v0, v1, :cond_0

    .line 177
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/service/HeadUpNotificationService$2;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mMinFlingVelocity:I
    invoke-static {v4}, Lcom/android/incallui/service/HeadUpNotificationService;->access$900(Lcom/android/incallui/service/HeadUpNotificationService;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/incallui/service/HeadUpNotificationService$2;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v2}, Lcom/android/incallui/service/HeadUpNotificationService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "PDVO"

    const-string v5, "Dismiss"

    invoke-static {v2, v4, v5}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/android/incallui/service/HeadUpNotificationService$2;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    # invokes: Lcom/android/incallui/service/HeadUpNotificationService;->animateForSlideOut(Z)V
    invoke-static {v4, v2}, Lcom/android/incallui/service/HeadUpNotificationService;->access$700(Lcom/android/incallui/service/HeadUpNotificationService;Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
