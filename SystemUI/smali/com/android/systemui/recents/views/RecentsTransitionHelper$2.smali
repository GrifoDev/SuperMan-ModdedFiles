.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;Lcom/android/systemui/recents/views/TaskView;ZIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$destinationStack:I

.field final synthetic val$opts:Landroid/app/ActivityOptions;

.field final synthetic val$screenRatioChangeRequested:Z

.field final synthetic val$stack:Lcom/android/systemui/recents/model/TaskStack;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;

.field final synthetic val$taskView:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$transitionFuture:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$stack:Lcom/android/systemui/recents/model/TaskStack;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p5, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$opts:Landroid/app/ActivityOptions;

    iput-object p6, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$transitionFuture:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    iput p7, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$destinationStack:I

    iput-boolean p8, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$screenRatioChangeRequested:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$stack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$opts:Landroid/app/ActivityOptions;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$transitionFuture:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    iget v6, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$destinationStack:I

    iget-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;->val$screenRatioChangeRequested:Z

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-wrap0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;IZ)V

    return-void
.end method
