.class final Lcom/android/server/print/UserState$UserStateHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserStateHandler"
.end annotation


# static fields
.field public static final MSG_DISPATCH_PRINT_JOB_STATE_CHANGED:I = 0x1

.field public static final MSG_DISPATCH_PRINT_SERVICES_CHANGED:I = 0x2

.field public static final MSG_DISPATCH_PRINT_SERVICES_RECOMMENDATIONS_UPDATED:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobId;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v2, v1, v0}, Lcom/android/server/print/UserState;->-wrap1(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v2}, Lcom/android/server/print/UserState;->-wrap3(Lcom/android/server/print/UserState;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/android/server/print/UserState;->-wrap2(Lcom/android/server/print/UserState;Ljava/util/List;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
