.class public Lcom/android/incallui/operator/chn/SReminderDialog;
.super Landroid/app/Activity;
.source "SReminderDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactId:J

.field private mNumber:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/incallui/operator/chn/SReminderDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/chn/SReminderDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isReminderTagEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.app.sreminder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object v1, Lcom/android/incallui/operator/chn/SReminderDialog;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 52
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mNumber:Ljava/lang/String;

    .line 53
    const-string v1, "personId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mContactId:J

    .line 56
    :cond_0
    const-string v1, "sem_statusbar"

    invoke-virtual {p0, v1}, Lcom/android/incallui/operator/chn/SReminderDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 57
    iget-object v1, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 61
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->removeRejectCallNotification()V

    .line 63
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->isReminderTagEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->openDownloadPage()V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->finish()V

    .line 69
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->sendReminderInfos()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    return-void
.end method

.method protected openDownloadPage()V
    .locals 7

    .prologue
    .line 98
    const-string v3, "http://www.samsungassistant.com/landing/index.html"

    .line 99
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/operator/chn/SReminderDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/incallui/operator/chn/SReminderDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openDownloadPage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendReminderInfos()V
    .locals 6

    .prologue
    .line 78
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.sreminder"

    const-string v3, "com.samsung.android.app.sreminder.cardproviders.mycard.activity.MyCardReminderActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "com.samsung.android.app.sreminder.intent.action.CREATE_REMINDER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    iget-wide v2, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mContactId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "EXTRA_CONTACT_ID"

    iget-wide v4, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mContactId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 84
    :cond_0
    const-string v2, "EXTRA_PHONE_NUMBER"

    iget-object v3, p0, Lcom/android/incallui/operator/chn/SReminderDialog;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/incallui/operator/chn/SReminderDialog;->startActivity(Landroid/content/Intent;)V

    .line 95
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SReminderDialog;->openDownloadPage()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/incallui/operator/chn/SReminderDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReminderInfos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
