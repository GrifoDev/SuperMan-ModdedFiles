.class Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;
.super Landroid/os/Handler;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailHost;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap12(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap4(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap5(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap6(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap10(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap1(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap14(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap13(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap2(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap11(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    goto :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap7(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap3(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap8(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap0(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->-wrap9(Lcom/samsung/android/cocktailbar/CocktailHost;IILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x9 -> :sswitch_c
        0xa -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_e
        0xe -> :sswitch_2
        0x64 -> :sswitch_8
        0x65 -> :sswitch_b
        0x66 -> :sswitch_d
    .end sparse-switch
.end method
