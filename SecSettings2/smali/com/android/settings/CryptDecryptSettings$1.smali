.class Lcom/android/settings/CryptDecryptSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptDecryptSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptDecryptSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "level"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v8, "plugged"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v8, "invalid_charger"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v8, "status"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v8, 0x50

    if-lt v3, v8, :cond_2

    const/4 v4, 0x1

    :goto_0
    and-int/lit8 v8, v6, 0x7

    if-eqz v8, :cond_4

    if-nez v2, :cond_4

    const/4 v8, 0x2

    if-eq v1, v8, :cond_0

    const/4 v8, 0x5

    if-ne v1, v8, :cond_3

    :cond_0
    const/4 v7, 0x1

    :goto_1
    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v8, v5, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v8, v10, :cond_1

    const-string/jumbo v8, "CryptDecrypt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isUcsOdeEnabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method
