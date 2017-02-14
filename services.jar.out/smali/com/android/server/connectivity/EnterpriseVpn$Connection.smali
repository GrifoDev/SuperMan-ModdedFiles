.class Lcom/android/server/connectivity/EnterpriseVpn$Connection;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EnterpriseVpn"

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EnterpriseVpn"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method
