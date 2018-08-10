.class final synthetic Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v2, p0, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_9595(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;->$m$0()V

    return-void
.end method
