.class Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;
.super Ljava/lang/Object;
.source "KeyguardBackupRestoreManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardBackupRestoreManager$1;

.field final synthetic val$basePath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$sessionTime:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->this$1:Lcom/android/keyguard/KeyguardBackupRestoreManager$1;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$basePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$source:Ljava/lang/String;

    iput p5, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$securityLevel:I

    iput-object p6, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$sessionTime:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$saveKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$basePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$source:Ljava/lang/String;

    iget v4, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$securityLevel:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$sessionTime:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;->val$saveKey:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static/range {v0 .. v6}, Landroid/app/WallpaperManager;->startBackupWallpaper(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
