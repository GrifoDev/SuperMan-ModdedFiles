.class Lcom/android/systemui/tv/pip/PipControlsView$5;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/pip/PipControlsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView$5;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$5;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v0, v0, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->closePip()V

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$5;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v0, v0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$5;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v0, v0, Lcom/android/systemui/tv/pip/PipControlsView;->mListener:Lcom/android/systemui/tv/pip/PipControlsView$Listener;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipControlsView$Listener;->onClosed()V

    :cond_0
    return-void
.end method
