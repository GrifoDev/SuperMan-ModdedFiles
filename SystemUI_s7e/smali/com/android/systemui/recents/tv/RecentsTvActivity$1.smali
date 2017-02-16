.class Lcom/android/systemui/recents/tv/RecentsTvActivity$1;
.super Ljava/lang/Object;
.source "RecentsTvActivity.java"

# interfaces
.implements Lcom/android/systemui/tv/pip/PipManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/tv/RecentsTvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveToFullscreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->dismissRecentsToLaunchTargetTaskOrHome(Z)Z

    return-void
.end method

.method public onPipActivityClosed()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-wrap0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    return-void
.end method

.method public onPipEntered()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-wrap0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 0

    return-void
.end method

.method public onShowPipMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$1;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->-wrap0(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V

    return-void
.end method
