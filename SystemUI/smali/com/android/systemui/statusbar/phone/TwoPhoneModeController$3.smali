.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "persist.sys.show_multiuserui"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.sys.show_multiuserui:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-wrap1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Ljava/lang/String;)V

    const v1, 0x7f080710

    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "two_call_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-set0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "two_sms_enabled"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-set1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "two_account"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-set3(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "two_register"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-set2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    const-string/jumbo v2, "StatusBar.TwoPhoneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", msgEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", userCreated:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get4(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", registered:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get3(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get4(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get3(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    :cond_1
    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-wrap2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    :goto_4
    return-void

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto/16 :goto_1

    :cond_4
    move v2, v4

    goto/16 :goto_2

    :cond_5
    move v2, v4

    goto/16 :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-get3(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v1, 0x7f08070e

    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-wrap2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_4

    :cond_8
    const v1, 0x7f08070f

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-wrap2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->-wrap2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_4
.end method
