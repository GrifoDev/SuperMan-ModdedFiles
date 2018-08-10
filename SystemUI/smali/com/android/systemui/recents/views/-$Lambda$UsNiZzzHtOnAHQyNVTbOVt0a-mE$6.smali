.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f3:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/recents/views/ITaskStackView;

    iget v3, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f0:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f5:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_8165(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/ITaskStackView;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final composeSpecs()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$6;->$m$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
