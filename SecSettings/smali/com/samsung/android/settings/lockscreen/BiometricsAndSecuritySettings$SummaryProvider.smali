.class Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "BiometricsAndSecuritySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final MAX_BIOMETRICS_SUMMARY_COUNT:I

.field private final MAX_SUMMARY_COUNT:I

.field biometricsCount:I

.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field summary:Ljava/lang/String;

.field summaryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->MAX_BIOMETRICS_SUMMARY_COUNT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->MAX_SUMMARY_COUNT:I

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_8

    iput v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    iput v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f12037c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->-get0()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f120379

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f120224

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f120e4c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->-wrap1(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f120b09

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f1217f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_6
    iget v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f121835

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    invoke-virtual {v4, p0, v5}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    :cond_9
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    goto :goto_0
.end method
