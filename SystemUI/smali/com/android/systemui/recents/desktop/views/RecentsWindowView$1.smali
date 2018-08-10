.class Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;
.super Ljava/lang/Object;
.source "RecentsWindowView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
