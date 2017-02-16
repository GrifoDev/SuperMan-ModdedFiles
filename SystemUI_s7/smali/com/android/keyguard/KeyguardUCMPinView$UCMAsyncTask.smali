.class Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCMAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private opCode:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    return-void
.end method

.method private getUCMStatus()V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap8(Lcom/android/keyguard/KeyguardUCMPinView;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-set2(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string/jumbo v2, "KeyguardUCMPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetStatus thread result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->getUCMStatus()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get3(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->setStateAndRefreshUIIfNeeded(IIZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap10(Lcom/android/keyguard/KeyguardUCMPinView;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap9(Lcom/android/keyguard/KeyguardUCMPinView;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap9(Lcom/android/keyguard/KeyguardUCMPinView;Z)V

    goto :goto_0
.end method
