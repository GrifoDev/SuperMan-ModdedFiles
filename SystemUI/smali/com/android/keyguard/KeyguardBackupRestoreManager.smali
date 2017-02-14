.class public Lcom/android/keyguard/KeyguardBackupRestoreManager;
.super Ljava/lang/Object;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardBackupRestoreManager$1;,
        Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;
    }
.end annotation


# instance fields
.field private mBackupLockThread:Ljava/lang/Thread;

.field private mBackupThread:Ljava/lang/Thread;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupLockThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupLockThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;ILcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Landroid/content/Context;Ljava/lang/String;ILcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private responseToKies(Landroid/content/Context;Ljava/lang/String;ILcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "responseToKies( action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", requiredSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "RESULT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {p4}, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "SOURCE"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p7, :cond_0

    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    const-string/jumbo v2, "sendBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
