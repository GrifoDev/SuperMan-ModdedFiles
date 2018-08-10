.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartScreenPinningRunnableRunnable"
.end annotation


# instance fields
.field private taskId:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->taskId:I

    return p1
.end method

.method private constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->taskId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "RecentsTransitionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending ScreenPinningRequestEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;->taskId:I

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
