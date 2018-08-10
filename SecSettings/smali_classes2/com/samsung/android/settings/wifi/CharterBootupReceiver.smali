.class public Lcom/samsung/android/settings/wifi/CharterBootupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CharterBootupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/CharterBootupReceiver$CHA_RESULT;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/CharterBootupReceiver;)Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CharterBootupReceiver;->mResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private callContentProviderAsync(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Lcom/samsung/android/settings/wifi/CharterBootupReceiver$1;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterBootupReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/CharterBootupReceiver$1;-><init>(Lcom/samsung/android/settings/wifi/CharterBootupReceiver;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getSalesCode()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CharterBootupReceiver"

    const-string/jumbo v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "CharterBootupReceiver"

    const-string/jumbo v1, "onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/CharterBootupReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "CHA"

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/CharterBootupReceiver;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CharterBootupReceiver"

    const-string/jumbo v1, "Calling Provider to Start Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/CharterBootupReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CharterBootupReceiver;->mResult:Landroid/content/BroadcastReceiver$PendingResult;

    const-string/jumbo v0, "content://com.spectrum.cm.ServiceProvider/start_service"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/CharterBootupReceiver;->callContentProviderAsync(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
