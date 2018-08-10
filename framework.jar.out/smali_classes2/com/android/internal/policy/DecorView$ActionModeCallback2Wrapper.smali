.class Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get2(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get3(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->isDiscardTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 12

    const/16 v11, 0x63

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v5, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get0(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_7

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_a

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-ne p1, v5, :cond_8

    const/4 v3, 0x1

    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get2(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    if-ne p1, v5, :cond_9

    const/4 v1, 0x1

    :goto_2
    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " was not the current primary action mode! Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-eq v5, v10, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-ne v5, v11, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " was not the current floating action mode! Expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v7}, Lcom/android/internal/policy/DecorView;->-get2(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    if-eqz v3, :cond_e

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get4(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v6}, Lcom/android/internal/policy/DecorView;->-get6(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get5(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-wrap1(Lcom/android/internal/policy/DecorView;)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get5(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v6}, Lcom/android/internal/policy/DecorView;->-get5(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/DecorView;->-set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;

    invoke-direct {v6, p0, v4}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    iput-object v9, v5, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get7(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get7(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get7(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->requestFitSystemWindows()V

    return-void

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-nez v5, :cond_c

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-eq v5, v10, :cond_b

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-ne v5, v11, :cond_d

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_e
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-wrap0(Lcom/android/internal/policy/DecorView;)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->-get3(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/FloatingToolbar;

    invoke-static {v8}, Lcom/android/internal/widget/FloatingToolbar;->setMovingStarted(Z)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v5, v9}, Lcom/android/internal/policy/DecorView;->-set1(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestFitSystemWindows()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
