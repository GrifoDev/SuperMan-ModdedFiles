.class Lcom/android/systemui/stackdivider/DividerSnapView$4;
.super Ljava/lang/Object;
.source "DividerSnapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerSnapView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerSnapView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$4;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$4;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get3(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView$4;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get3(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a77

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/systemui/stackdivider/DividerSnapView$4$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$4$1;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView$4;)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView$4;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get4(Lcom/android/systemui/stackdivider/DividerSnapView;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    invoke-direct {v2, v3, v3}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method
