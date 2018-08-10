.class final synthetic Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f2:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f3:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->lambda$-com_android_systemui_recents_RecentsImpl_65038(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final composeSpecs()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;->$m$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
