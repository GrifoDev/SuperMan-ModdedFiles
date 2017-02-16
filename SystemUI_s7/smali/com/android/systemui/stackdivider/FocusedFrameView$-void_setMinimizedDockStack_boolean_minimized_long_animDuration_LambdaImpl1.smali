.class final synthetic Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;
.super Ljava/lang/Object;
.source "FocusedFrameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/FocusedFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$minimized:Z

.field private synthetic val$this:Lcom/android/systemui/stackdivider/FocusedFrameView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/FocusedFrameView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;->val$this:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;->val$minimized:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;->val$this:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView$-void_setMinimizedDockStack_boolean_minimized_long_animDuration_LambdaImpl1;->val$minimized:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->-com_android_systemui_stackdivider_FocusedFrameView_lambda$6(Z)V

    return-void
.end method
