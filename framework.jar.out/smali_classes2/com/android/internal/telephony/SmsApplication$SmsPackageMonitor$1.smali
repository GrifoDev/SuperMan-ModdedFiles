.class Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;
.super Ljava/lang/Object;
.source "SmsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$packageManager:Landroid/content/pm/PackageManager;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$1:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$packageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$componentName:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "SmsApplication"

    const-string/jumbo v1, "onPackageChanged: run"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$packageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$componentName:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsApplication;->-wrap0(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    const-string/jumbo v0, "SmsApplication"

    const-string/jumbo v1, "onPackageChanged: end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
