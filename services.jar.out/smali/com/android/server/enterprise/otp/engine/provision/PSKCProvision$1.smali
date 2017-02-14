.class Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;
.super Ljava/lang/Thread;
.source "PSKCProvision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->doProvisionInThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

.field final synthetic val$callerPackage:Ljava/lang/String;

.field final synthetic val$configData:Landroid/os/Bundle;

.field final synthetic val$containerId:I

.field final synthetic val$pskcBuffer:Ljava/lang/String;

.field final synthetic val$tokenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    iput-object p2, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$pskcBuffer:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$configData:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$callerPackage:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$containerId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "PSKCProvision::doProvisionInThread New thread started"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get2(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get0(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$pskcBuffer:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->parsePskc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_0

    const-string/jumbo v5, "PSKCProvision::doProvisionInThread - Multiple Keypackages are present in PSKC, only first one will be used."

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    invoke-static {v5, v1, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-wrap0(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v3, 0x4ff

    const-string/jumbo v5, "PSKCProvision::doProvisionInThread - dbHandler.storeOtpTokenData bundle creation failed"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get1(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeOtpTokenData(Landroid/os/Bundle;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PSKCProvision::doProvisionInThread - DBHandler.storeOtpTokenData() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$configData:Landroid/os/Bundle;

    const-string/jumbo v6, "NUM_TRANSACTIONS"

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$configData:Landroid/os/Bundle;

    const-string/jumbo v6, "TOKEN_EXPIRY"

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get1(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$configData:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setOtpTokenPolicies(Landroid/os/Bundle;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PSKCProvision::doProvisionInThread - DBHandler.setOtpTokenPolicies() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_4
    if-nez v3, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    invoke-static {v5, v1, v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-wrap1(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    const/16 v3, 0x4ff

    const-string/jumbo v5, "PSKCProvision::doProvisionInThread - TlcHandler.createToken() bundle creation failed"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :cond_6
    if-nez v3, :cond_7

    invoke-static {v0, v9}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->checkSecureStorageData(Landroid/os/Bundle;Z)I

    move-result v3

    :cond_7
    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->createToken(Landroid/os/Bundle;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PSKCProvision::doProvisionInThread - TlcHandler.createToken() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_8
    if-nez v3, :cond_9

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get1(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    const/16 v7, 0x301

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PSKCProvision::doProvisionInThread - Token Activated. [ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_9
    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get1(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    const-string/jumbo v5, "PSKCProvision::doProvisionInThread - Token Creation Failed"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get0(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "OTP Token creation failed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get1(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getVendorTokenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get0(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$callerPackage:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$containerId:I

    invoke-static {v5, v4, v6, v7, v3}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_a
    const-string/jumbo v5, "PSKCProvision::doProvisionInThread - Invalid PSKC"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v3, 0x401

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->this$0:Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->-get0(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "OTP Token created successfully"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PSKCProvision::doProvisionInThread - Token Created Successfully. [ tokenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->val$tokenId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
