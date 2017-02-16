.class Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowDividerPanelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;)V

    return-void
.end method


# virtual methods
.method public blinkMultiWindowDividerButtons()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerPanel;->-get3(Lcom/android/systemui/stackdivider/DividerPanel;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerPanel;->-get3(Lcom/android/systemui/stackdivider/DividerPanel;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerPanel;->-get3(Lcom/android/systemui/stackdivider/DividerPanel;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerPanel;->-get3(Lcom/android/systemui/stackdivider/DividerPanel;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerPanel;->-get4(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerPanel;->-get1(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    return-void
.end method
