.class final synthetic Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndCancelledEvent_event_LambdaImpl0;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndCancelledEvent_event_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndCancelledEvent_event_LambdaImpl0;->val$this:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$-void_onBusEvent_com_android_systemui_recents_events_ui_dragndrop_DragEndCancelledEvent_event_LambdaImpl0;->val$this:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->-com_android_systemui_recents_views_TaskView_lambda$2()V

    return-void
.end method
