.class public Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsApplicationData"
.end annotation


# instance fields
.field private mApplicationName:Ljava/lang/String;

.field private mMmsReceiverClass:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field private mProviderChangedReceiverClass:Ljava/lang/String;

.field private mRespondViaMessageClass:Ljava/lang/String;

.field private mSendToClass:Ljava/lang/String;

.field private mSimFullReceiverClass:Ljava/lang/String;

.field private mSmsAppChangedReceiverClass:Ljava/lang/String;

.field private mSmsReceiverClass:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    return-void
.end method


# virtual methods
.method public getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    return-object v4

    :catch_0
    move-exception v1

    return-object v4

    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSmsReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mMmsReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mRespondViaMessageClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSendToClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSmsAppChangedClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mProviderChangedReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSimFullReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
