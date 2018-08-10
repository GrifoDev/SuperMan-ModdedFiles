.class Lcom/android/systemui/util/ShortcutManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "ShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recieve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " via BroadcastReceiver, update Shortcuts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : Intent.EXTRA_REPLACING false,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/systemui/util/ShortcutManager;->-get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/systemui/util/ShortcutManager;->-get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4, v1}, Lcom/android/systemui/util/ShortcutManager;->-wrap3(Lcom/android/systemui/util/ShortcutManager;I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_0

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/systemui/util/ShortcutManager;->-get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/systemui/util/ShortcutManager;->-get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "ShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", starting update of shortcut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget-object v5, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v5}, Lcom/android/systemui/util/ShortcutManager;->-get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v4, v1, v5}, Lcom/android/systemui/util/ShortcutManager;->-wrap6(Lcom/android/systemui/util/ShortcutManager;ILandroid/content/ComponentName;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "reason"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "ShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", with state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", updating shortcuts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$3;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
