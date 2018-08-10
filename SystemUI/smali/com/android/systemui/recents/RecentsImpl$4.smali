.class Lcom/android/systemui/recents/RecentsImpl$4;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;

.field triggered:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$4;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl$4;->triggered:Z

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsImpl$4;->triggered:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsImpl$4;->triggered:Z

    :cond_0
    return-void
.end method
