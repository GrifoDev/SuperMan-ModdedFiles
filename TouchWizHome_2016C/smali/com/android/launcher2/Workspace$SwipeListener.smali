.class Lcom/android/launcher2/Workspace$SwipeListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$SwipeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace$SwipeListener;-><init>(Lcom/android/launcher2/Workspace;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PhoneWindowManagers$KeyPolicy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    iget-object v2, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v2, v2, Lcom/android/launcher2/Workspace;->swipeAction:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/16 v7, 0x14

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x43480000    # 200.0f

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x437a0000    # 250.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v2, v2, Lcom/android/launcher2/Workspace;->swipeAction:[I

    aget v2, v2, v5

    if-eq v2, v7, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.PhoneWindowManagers$KeyPolicy"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "action"

    iget-object v3, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v3, v3, Lcom/android/launcher2/Workspace;->swipeAction:[I

    aget v3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v2, v2, Lcom/android/launcher2/Workspace;->swipeAction:[I

    aget v2, v2, v6

    if-eq v2, v7, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.PhoneWindowManagers$KeyPolicy"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "action"

    iget-object v3, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v3, v3, Lcom/android/launcher2/Workspace;->swipeAction:[I

    aget v3, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$SwipeListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
