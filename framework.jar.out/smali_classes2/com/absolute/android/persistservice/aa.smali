.class Lcom/absolute/android/persistservice/aa;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/y;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/y;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/absolute/android/persistservice/aa;->a:Lcom/absolute/android/persistservice/y;

    .line 655
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 656
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 661
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 663
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 664
    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->a:Lcom/absolute/android/persistservice/y;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ab;)V

    goto :goto_0

    .line 667
    :pswitch_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->a:Lcom/absolute/android/persistservice/y;

    invoke-static {v0}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/y;)V

    goto :goto_0

    .line 670
    :pswitch_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->a:Lcom/absolute/android/persistservice/y;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :pswitch_3
    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->a:Lcom/absolute/android/persistservice/y;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/y;->c(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
