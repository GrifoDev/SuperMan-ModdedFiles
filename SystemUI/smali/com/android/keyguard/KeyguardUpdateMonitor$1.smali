.class Lcom/android/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get0(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$MdmCameraDisableTask;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$MdmCameraDisableTask;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$MdmCameraDisableTask;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$MdmCameraDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
