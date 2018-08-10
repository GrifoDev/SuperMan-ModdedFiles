.class Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_pip_tv_PipManager$PinnedStackListener_6971(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->-get3(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_tv_PipManager$PinnedStackListener_7207()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->-get5(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->-get5(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipManager;->-get2(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipManager;->-set1(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->-get4(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 0

    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->-get4(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
