.class Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->startEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-set0(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)Z

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    return-void
.end method
