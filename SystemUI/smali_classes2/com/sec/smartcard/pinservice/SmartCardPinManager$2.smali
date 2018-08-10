.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;
.super Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# virtual methods
.method public onUserCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onUserEnteredPin([C)V
    .locals 2

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-static {v0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onUserPinError(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
