.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/views/ITaskStackView;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_11226(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$3;->$m$0()V

    return-void
.end method
