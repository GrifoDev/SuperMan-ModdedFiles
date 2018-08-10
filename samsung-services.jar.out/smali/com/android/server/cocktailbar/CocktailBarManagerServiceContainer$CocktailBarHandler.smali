.class final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
.super Landroid/os/Handler;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage: entry what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-wrap0(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-wrap1(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-wrap5(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-wrap2(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
