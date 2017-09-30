.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->b(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;->a:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->b(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
