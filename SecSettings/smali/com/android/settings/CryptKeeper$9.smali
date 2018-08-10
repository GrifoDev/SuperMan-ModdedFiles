.class Lcom/android/settings/CryptKeeper$9;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field direction_show:Z

.field direction_sound:Z

.field direction_vibration:Z

.field direction_voice:Z

.field owner_info:Ljava/lang/String;

.field password_visible:Z

.field pattern_visible:Z

.field previousfailedcount:I

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    iput-object p2, p0, Lcom/android/settings/CryptKeeper$9;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->-set9(Lcom/android/settings/CryptKeeper;I)I

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getCurrentEncryptionFailCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings/CryptKeeper$9;->previousfailedcount:I

    const-string/jumbo v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper$9;->owner_info:Ljava/lang/String;

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "PatternVisible"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->pattern_visible:Z

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "PasswordVisible"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->password_visible:Z

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "DirectionVibration"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->direction_vibration:Z

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "DirectionSound"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->direction_sound:Z

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "DirectionShow"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->direction_show:Z

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "DirectionVoice"

    invoke-interface {v1, v3}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->direction_voice:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$9;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v2}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_password"

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->password_visible:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get19(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0d009e

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f120975

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set7(Lcom/android/settings/CryptKeeper;I)I

    :goto_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0a0825

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get19(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-wrap1(Lcom/android/settings/CryptKeeper;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/android/settings/CryptKeeper$9$1;

    invoke-direct {v2, p0}, Lcom/android/settings/CryptKeeper$9$1;-><init>(Lcom/android/settings/CryptKeeper$9;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get4(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    iget-object v6, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v6}, Lcom/android/settings/CryptKeeper;->-get18(Lcom/android/settings/CryptKeeper;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0a060e

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap12(Lcom/android/settings/CryptKeeper;)V

    iget v2, p0, Lcom/android/settings/CryptKeeper$9;->previousfailedcount:I

    invoke-static {}, Lcom/android/settings/CryptKeeper;->-get21()I

    move-result v5

    if-lt v2, v5, :cond_2

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v5, "previous failed count is over the max filed attemps count.. wipe stroage!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap21(Lcom/android/settings/CryptKeeper;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x1020002

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x400000

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get12(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get12(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->pattern_visible:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_show:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_voice:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_vibration:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_sound:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap16(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap6(Lcom/android/settings/CryptKeeper;)V

    :cond_5
    return-void

    :cond_6
    move v2, v4

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get19(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0d009c

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap16(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f120974

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set7(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get19(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0d0095

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap16(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f120972

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set7(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0d009a

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f120973

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set7(Lcom/android/settings/CryptKeeper;I)I

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    iget-object v5, p0, Lcom/android/settings/CryptKeeper$9;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-wrap13(Lcom/android/settings/CryptKeeper;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    iget-object v5, p0, Lcom/android/settings/CryptKeeper$9;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set5(Lcom/android/settings/CryptKeeper;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_1
.end method
