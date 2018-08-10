.class Lcom/android/systemui/recents/desktop/RecentsWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentsWindow.java"


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

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$2;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    :cond_0
    return-void
.end method
