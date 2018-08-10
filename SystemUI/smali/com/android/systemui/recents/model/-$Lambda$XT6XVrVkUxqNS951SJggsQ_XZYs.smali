.class final synthetic Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->-com_android_systemui_recents_model_RecentsTaskLoader-mthref-0(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onIdleChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/-$Lambda$XT6XVrVkUxqNS951SJggsQ_XZYs;->$m$0(Z)V

    return-void
.end method
