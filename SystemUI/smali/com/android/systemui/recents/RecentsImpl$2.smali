.class Lcom/android/systemui/recents/RecentsImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v1, "ACTION_LOCALE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearLabelCache()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImpl;->-get1(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/desktop/RecentsWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImpl;->-get1(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/desktop/RecentsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    new-instance v1, Lcom/android/systemui/recents/desktop/RecentsWindow;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/desktop/RecentsWindow;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->-set0(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/desktop/RecentsWindow;)Lcom/android/systemui/recents/desktop/RecentsWindow;

    :cond_1
    return-void
.end method
