.class Lcom/android/settings/UCSCryptKeeperTask$1;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, v1, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get4(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-set0(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->-get9()I

    move-result v2

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->-get8()I

    move-result v2

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get3(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v5

    :cond_3
    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap2(Lcom/android/settings/UCSCryptKeeperTask;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-set0(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, v1, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->next()V

    :cond_6
    return v4
.end method
