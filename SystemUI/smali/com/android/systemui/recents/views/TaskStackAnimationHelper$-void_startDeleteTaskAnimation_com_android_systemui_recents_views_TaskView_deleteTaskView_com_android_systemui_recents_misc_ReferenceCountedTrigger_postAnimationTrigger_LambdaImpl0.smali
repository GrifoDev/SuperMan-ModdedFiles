.class final synthetic Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

.field private synthetic val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;->val$touchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;->val$deleteTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->-com_android_systemui_recents_views_TaskStackAnimationHelper_lambda$1(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method
