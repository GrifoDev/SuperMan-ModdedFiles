.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$bounds:Landroid/graphics/Rect;

.field final synthetic val$destinationStack:I

.field final synthetic val$isFreeformDragging:Z

.field final synthetic val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IZLandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput p4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$destinationStack:I

    iput-boolean p5, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$isFreeformDragging:Z

    iput-object p6, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$bounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$destinationStack:I

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$isFreeformDragging:Z

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;->val$bounds:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-wrap0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IZLandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
