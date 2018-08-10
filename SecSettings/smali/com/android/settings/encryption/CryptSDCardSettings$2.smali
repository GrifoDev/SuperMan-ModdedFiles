.class Lcom/android/settings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "BixbyManger is null, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Failed to get stateId, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby Request stateId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "StartEncryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot encrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap0(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already encrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    :goto_0
    return-void

    :cond_6
    const-string/jumbo v2, "StartDecryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot decrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap0(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already decrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "There isn\'t stateId matched with request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    goto/16 :goto_0
.end method
