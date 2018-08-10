.class Lcom/android/systemui/recents/desktop/RecentsWindow$1;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/RecentsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_desktop_RecentsWindow$1_13521()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_desktop_RecentsWindow$1_13723()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setVisible(Z)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/-$Lambda$HlCRr-kXl_EmkjzJQsF-KrY8kIA$4;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
