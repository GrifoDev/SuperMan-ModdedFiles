.class final synthetic Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

.field private synthetic val$dismissSize:F

.field private synthetic val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;->val$dismissSize:F

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;->val$dismissSize:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->-com_android_systemui_recents_views_TaskStackAnimationHelper_lambda$2(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V

    return-void
.end method
