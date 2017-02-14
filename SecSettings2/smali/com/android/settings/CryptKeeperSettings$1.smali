.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "level"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v10, "plugged"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v10, "invalid_charger"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v10, "status"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v10, "PAP"

    invoke-static {}, Lcom/android/settings/CryptKeeperSettings;->-get6()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    :goto_0
    and-int/lit8 v10, v6, 0x7

    if-eqz v10, :cond_6

    if-nez v2, :cond_6

    const/4 v10, 0x2

    if-eq v1, v10, :cond_0

    const/4 v10, 0x5

    if-ne v1, v10, :cond_5

    :cond_0
    const/4 v7, 0x1

    :goto_1
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->-get1(Lcom/android/settings/CryptKeeperSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v9

    const/4 v10, 0x1

    if-gt v10, v9, :cond_1

    const/4 v10, 0x3

    if-ge v10, v9, :cond_7

    :cond_1
    const/4 v8, 0x1

    :goto_2
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->-get2(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v4, :cond_8

    if-eqz v7, :cond_8

    move v10, v8

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->-get5(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v8, :cond_9

    const/16 v10, 0x8

    :goto_4
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->-get3(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->-get4(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v7, :cond_a

    const/16 v10, 0x8

    :goto_5
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->-get0(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v4, :cond_b

    const/16 v10, 0x8

    :goto_6
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v5

    if-eqz v5, :cond_2

    iget v10, v5, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const-string/jumbo v10, "CryptKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isUcsOdeEnabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/16 v10, 0x50

    if-lt v3, v10, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_6
.end method
