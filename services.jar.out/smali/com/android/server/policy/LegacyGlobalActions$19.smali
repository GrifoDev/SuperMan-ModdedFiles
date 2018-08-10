.class Lcom/android/server/policy/LegacyGlobalActions$19;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItemView(Lcom/android/server/policy/LegacyGlobalActions$Action;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$19$1;
    }
.end annotation


# instance fields
.field final longPressHandler:Landroid/os/Handler;

.field mLongPressed:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;

.field final synthetic val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$newItemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$newItemView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->longPressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$19$1;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$newItemView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$isPort:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions$19$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions$19;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x0

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get76()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get46(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    return v2

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-set6(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->mLongPressed:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1, p1, p2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap12(Lcom/android/server/policy/LegacyGlobalActions;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get27(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get27(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get27(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->longPressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1, p1, p2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap12(Lcom/android/server/policy/LegacyGlobalActions;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get28(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$newItemView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions$19;->val$isPort:Z

    invoke-static {v1, v3, v4, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap20(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
