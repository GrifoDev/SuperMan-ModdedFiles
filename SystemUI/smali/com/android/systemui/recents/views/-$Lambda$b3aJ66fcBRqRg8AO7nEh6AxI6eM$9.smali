.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->lambda$-com_android_systemui_recents_views_RecentsView_31280(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final composeSpecs()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/-$Lambda$b3aJ66fcBRqRg8AO7nEh6AxI6eM$9;->$m$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
