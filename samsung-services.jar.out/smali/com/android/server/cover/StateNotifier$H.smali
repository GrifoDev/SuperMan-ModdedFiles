.class final Lcom/android/server/cover/StateNotifier$H;
.super Landroid/os/Handler;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_NOTIFY_CONTEXT_LOGING_STATE:I = 0x64

.field static final MSG_NOTIFY_COVER_ATTACH_STATE:I = 0x1

.field static final MSG_NOTIFY_COVER_SWITCH_STATE:I


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/cover/StateNotifier;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$H;->this$0:Lcom/android/server/cover/StateNotifier;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier$H;->this$0:Lcom/android/server/cover/StateNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    invoke-static {v3, v0, v1}, Lcom/android/server/cover/StateNotifier;->-wrap3(Lcom/android/server/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$H;->this$0:Lcom/android/server/cover/StateNotifier;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_2
    invoke-static {v0, v1}, Lcom/android/server/cover/StateNotifier;->-wrap2(Lcom/android/server/cover/StateNotifier;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$H;->this$0:Lcom/android/server/cover/StateNotifier;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_2

    :goto_3
    invoke-static {v0, v1}, Lcom/android/server/cover/StateNotifier;->-wrap1(Lcom/android/server/cover/StateNotifier;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
