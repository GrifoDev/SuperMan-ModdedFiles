.class public Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;

.field public triggered:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->triggered:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->-get1(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener$1;-><init>(Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->triggered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->triggered:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->-get1(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$OnDrawListener;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get0(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/RecentsActivity$SendFocusIntentRunnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
