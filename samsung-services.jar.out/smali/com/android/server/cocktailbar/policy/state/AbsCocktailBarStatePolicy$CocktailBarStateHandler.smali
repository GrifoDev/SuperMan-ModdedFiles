.class final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
.super Landroid/os/Handler;
.source "AbsCocktailBarStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarStateHandler"
.end annotation


# static fields
.field private static final MSG_COCKTAIL_NOTIFY_STATE_TO_BINDER:I = 0x33

.field private static final MSG_COCKTAIL_UPDATE_ACTIVATE:I = 0x31

.field private static final MSG_COCKTAIL_UPDATE_COCKTAIL_BAR_WINDOW_TYPE:I = 0x6

.field private static final MSG_COCKTAIL_UPDATE_POSITION:I = 0x4

.field private static final MSG_COCKTAIL_UPDATE_VISIBILITY:I = 0x1

.field private static final MSG_THREAD_EXPIRED:I = 0x65


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: entry what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdatePosition(I)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    goto :goto_0

    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateActivate(Z)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput-boolean v0, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :cond_1
    invoke-virtual {v2, v3, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateCocktailBarWindowType(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-static {v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->-wrap0(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_3
        0x31 -> :sswitch_2
        0x33 -> :sswitch_4
        0x65 -> :sswitch_5
    .end sparse-switch
.end method
