.class Lcom/android/systemui/recents/RecentsActivity$3$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$3;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$3$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$3$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$3;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->-get1(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$3$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$3;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/view/ViewTreeObserver$OnDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method
