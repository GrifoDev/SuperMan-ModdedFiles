.class final synthetic Lcom/android/systemui/recents/views/TaskStackView$-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackView;->-com_android_systemui_recents_views_TaskStackView_lambda$1(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method
