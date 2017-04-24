.class Lcom/android/server/policy/SamsungPhoneWindowManager$27;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040889

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104088a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set7(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->setShowForAllUsers()V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$27;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method
