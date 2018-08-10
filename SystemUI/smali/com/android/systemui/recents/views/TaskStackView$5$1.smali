.class Lcom/android/systemui/recents/views/TaskStackView$5$1;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/TaskStackView$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$5$1;->this$1:Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$5$1;->this$1:Lcom/android/systemui/recents/views/TaskStackView$5;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView$5;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackView;->-get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    return-void
.end method
