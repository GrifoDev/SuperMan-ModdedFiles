.class Lcom/absolute/android/persistservice/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/h;

    iget-object v4, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v4, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/h;

    iget-object v4, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v4, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/h;

    iget-object v4, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v4, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/absolute/android/persistservice/g;

    iget-object v4, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v4, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/g;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/absolute/android/persistservice/f;

    iget-object v4, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v4, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/AppInfoProperties;

    goto :goto_0

    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/absolute/android/persistservice/e;

    iget-object v4, p0, Lcom/absolute/android/persistservice/j;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v4, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
