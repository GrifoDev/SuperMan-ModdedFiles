.class Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 4

    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEncryptionStatusChanged: operation, volId = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string/jumbo v1, "free"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CryptKeeperSDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status free: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ejecting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get7(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "busy"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "status busy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1, p4}, Lcom/android/settings/encryption/CryptSDCardSettings;->-set0(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get5(Lcom/android/settings/encryption/CryptSDCardSettings;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1, p5}, Lcom/android/settings/encryption/CryptSDCardSettings;->-set1(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    :cond_5
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "Mount"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "status mount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get7(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "CryptKeeperSDSettings"

    const-string/jumbo v2, "ignore status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
