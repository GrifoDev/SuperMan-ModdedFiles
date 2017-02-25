.class Lcom/android/server/policy/EdgeWindowManager$MessageHandler;
.super Landroid/os/Handler;
.source "EdgeWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/EdgeWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/EdgeWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/EdgeWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/EdgeWindowManager;Lcom/android/server/policy/EdgeWindowManager$MessageHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;-><init>(Lcom/android/server/policy/EdgeWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    const-class v2, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v3, v2}, Lcom/android/server/policy/EdgeWindowManager;->-set0(Lcom/android/server/policy/EdgeWindowManager;Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/EdgeWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/EdgeWindowManager;->-get0(Lcom/android/server/policy/EdgeWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/EdgeWindowManager;->requestCocktailRotationAnimation(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->wakupCocktailBarFromWindowManager(ZII)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/EdgeWindowManager$MessageHandler;->this$0:Lcom/android/server/policy/EdgeWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/EdgeWindowManager;->-get1(Lcom/android/server/policy/EdgeWindowManager;)Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->updateSysfsGripDisableFromWindowManager(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
