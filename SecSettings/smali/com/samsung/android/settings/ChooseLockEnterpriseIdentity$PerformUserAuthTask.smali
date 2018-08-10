.class Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
.super Landroid/os/AsyncTask;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformUserAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v9, "PerformUserAuthTask:performUserAuthentication "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get13(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0

    const-string/jumbo v8, "ChooseLockEnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mUserId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v10}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get13(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    if-nez v8, :cond_7

    new-instance v8, Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-direct {v8}, Lcom/samsung/android/knox/container/AuthenticationConfig;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v8, v5}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    const-string/jumbo v9, "com.sec.android.service.singlesignon"

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get13(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v8

    if-nez v8, :cond_9

    sget-object v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v9, "2"

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v8, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "PASSWORD_MIN_CHARACTERS_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get5(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MAX_CHARACTERS_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get4(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_LETTERS_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get6(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_UPPERCASE_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_LOWERCASE_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get7(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_SYMBOLS_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get10(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_NUMERIC_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get9(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_NONLETTER_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get8(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_HISTORY_LENGTH_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_COMPLEX_CHARACTERS_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_PATTERN_RESTRICTIONS_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "PASSWORD_MAX_NUMERIC_SEQUENCE_LENGTH_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MAX_CHARACTER_SEQUENCE_LENGTH_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "PASSWORD_MIN_CHARACTER_CHANGE_LENGTH_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string/jumbo v8, "PASSWORD_FORBIDDEN_STRINGS_KEY"

    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v8, "PASSWORD_MAX_CHARCTER_OCCURENCES_KEY"

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get12(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get14(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get13(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v9

    if-eq v8, v9, :cond_4

    const-string/jumbo v8, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v9, "ADC creation without using MDM api"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "adc_creation_without_mdm"

    invoke-virtual {v5, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v8, v5}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->performUserAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v7

    const/4 v6, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_PASSWORD:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    :cond_5
    return-object v6

    :cond_6
    :try_start_1
    const-string/jumbo v8, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v9, "ekm is null"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "ChooseLockEnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SecurityException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v8}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v8}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    const-string/jumbo v9, "com.sec.android.service.singlesignon"

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorPkgName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    sget-object v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->OPERATION_MODE:Ljava/lang/String;

    const-string/jumbo v9, "4"

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_OLD_PASSWORD:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v9}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get3(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const/4 v1, -0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V

    :goto_1
    iput-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/AuthenticationConfig;->setAuthenticatorConfig(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->authConfig:Lcom/samsung/android/knox/container/AuthenticationConfig;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->username:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->password:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-wrap1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
