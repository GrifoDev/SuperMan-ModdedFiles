.class public Lcom/android/internal/telephony/SmsHQMAgent;
.super Ljava/lang/Object;
.source "SmsHQMAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHQMAgent$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsHQMAgent"

.field private static mInstance:Lcom/android/internal/telephony/SmsHQMAgent;


# instance fields
.field private mBigdataSmsReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsHQMAgent;->mInstance:Lcom/android/internal/telephony/SmsHQMAgent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mSemHqmManager:Landroid/os/SemHqmManager;

    new-instance v1, Lcom/android/internal/telephony/SmsHQMAgent$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsHQMAgent$1;-><init>(Lcom/android/internal/telephony/SmsHQMAgent;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mBigdataSmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.SMS_BIG_DATA_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mBigdataSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SmsHQMAgent;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmsHQMAgent;->mInstance:Lcom/android/internal/telephony/SmsHQMAgent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsHQMAgent;->mInstance:Lcom/android/internal/telephony/SmsHQMAgent;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsHQMAgent;->mInstance:Lcom/android/internal/telephony/SmsHQMAgent;

    return-object v0
.end method

.method private getPLMN(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x6

    if-gez p1, :cond_0

    const-string/jumbo v2, "SmsHQMAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPLMN : invalid slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_0
    const-string/jumbo v2, "gsm.operator.numeric"

    const-string/jumbo v3, "00101#"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "00101#"

    array-length v2, v1

    if-le v2, p1, :cond_1

    aget-object v0, v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public sendSDACInfoToHQM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
