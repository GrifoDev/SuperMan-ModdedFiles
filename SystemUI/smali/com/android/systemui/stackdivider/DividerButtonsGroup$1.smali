.class Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DividerButtonsGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerButtonsGroup;->createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

.field final synthetic val$buttonType:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->val$buttonType:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->-get1(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->val$buttonType:I

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->-wrap0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V

    const/4 v0, 0x1

    return v0
.end method
