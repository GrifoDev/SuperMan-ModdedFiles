.class Lcom/android/settings/CryptKeeper$9;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->setupUi()V
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


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

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
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->-wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->-set5(Lcom/android/settings/CryptKeeper;I)I

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getCurrentEncryptionFailCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings/CryptKeeper$9;->previousfailedcount:I

    const-string/jumbo v4, "OwnerInfo"

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/CryptKeeper$9;->owner_info:Ljava/lang/String;

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "PatternVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper$9;->pattern_visible:Z

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "PasswordVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper$9;->password_visible:Z

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "DirectionVibration"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper$9;->direction_vibration:Z

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "DirectionSound"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_3
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper$9;->direction_sound:Z

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "DirectionShow"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper$9;->direction_show:Z

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "DirectionVoice"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_5
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->direction_voice:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_6
    return-object v6

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v3

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_5

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

    goto :goto_6
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

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get12(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f04008e

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0b064b

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set3(Lcom/android/settings/CryptKeeper;I)I

    :goto_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f1101f7

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get11(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f1101f8

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap8(Lcom/android/settings/CryptKeeper;)V

    iget v2, p0, Lcom/android/settings/CryptKeeper$9;->previousfailedcount:I

    invoke-static {}, Lcom/android/settings/CryptKeeper;->-get14()I

    move-result v5

    if-lt v2, v5, :cond_0

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v5, "previous failed count is over the max filed attemps count.. wipe stroage!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap16(Lcom/android/settings/CryptKeeper;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x1020002

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x400000

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get8(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get8(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper$9;->pattern_visible:Z

    if-eqz v2, :cond_8

    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_show:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_voice:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_vibration:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper$9;->direction_sound:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get3(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get2(Lcom/android/settings/CryptKeeper;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap11(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-wrap3(Lcom/android/settings/CryptKeeper;)V

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get12(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f04008c

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap11(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0b064c

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set3(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get12(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f040085

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v4}, Lcom/android/settings/CryptKeeper;->-wrap11(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0b064d

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set3(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f04008a

    invoke-virtual {v2, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const v5, 0x7f0b064a

    invoke-static {v2, v5}, Lcom/android/settings/CryptKeeper;->-set3(Lcom/android/settings/CryptKeeper;I)I

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto/16 :goto_2
.end method
