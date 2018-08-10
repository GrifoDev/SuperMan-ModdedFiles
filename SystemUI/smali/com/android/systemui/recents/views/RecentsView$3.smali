.class Lcom/android/systemui/recents/views/RecentsView$3;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

.field final synthetic val$taskRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$3;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$taskRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get4(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$event:Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v1, v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$taskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
