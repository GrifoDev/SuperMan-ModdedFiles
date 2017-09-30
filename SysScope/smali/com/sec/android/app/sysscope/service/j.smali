.class Lcom/sec/android/app/sysscope/service/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/SysScopeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/j;->b()V

    return-void
.end method

.method static synthetic b(Lcom/sec/android/app/sysscope/service/j;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/j;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SysScopeService"

    const-string v2, "clearDeadLink"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "SysScopeService"

    const-string v2, "handleMessage"

    invoke-static {v1, v2}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "SysScopeService"

    const-string v1, "current state = ??, next state = SYDSCOPE_STATE_ERROR"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    :goto_0
    return-void

    :pswitch_1
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_NULL, next state = SYSSCOPE_STATE_INIT"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "SysScopeService"

    const-string v1, "handleMessage: exception"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    :try_start_1
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYSSCOPE_STATE_INIT, next state = SYDSCOPE_STATE_RUN"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sysscope/service/k;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sysscope/service/k;-><init>(Lcom/sec/android/app/sysscope/service/j;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a(Lcom/sec/android/app/sysscope/engine/o;)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_RUN, next state = SYDSCOPE_STATE_DONE"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/SysScopeService;->i(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Runnable;

    move-result-object v3

    const-string v4, "SysScope"

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->j(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_4
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_DONE, next state = SYDSCOPE_STATE_NULL"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    const-string v0, "VZW"

    invoke-static {}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SysScopeService"

    const-string v1, "Call stopSelf to kill myself."

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c()Lcom/sec/android/app/sysscope/engine/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/j;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Z)Z

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->k(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->stopSelf(I)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->l(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "SysScopeService"

    const-string v1, "Verizon_Call stopSelf to kill myself."

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c()Lcom/sec/android/app/sysscope/engine/j;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/engine/j;->b(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Z)Z

    goto :goto_1

    :pswitch_5
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_ERROR, next state = SYDSCOPE_STATE_NULL"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
