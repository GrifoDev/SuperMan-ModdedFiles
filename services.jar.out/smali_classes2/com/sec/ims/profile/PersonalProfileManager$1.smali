.class Lcom/sec/ims/profile/PersonalProfileManager$1;
.super Ljava/lang/Object;
.source "PersonalProfileManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/profile/PersonalProfileManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/profile/PersonalProfileManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/profile/PersonalProfileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/profile/PersonalProfileManager$1;->this$0:Lcom/sec/ims/profile/PersonalProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object v0, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Connected to PersonalProfileService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/ims/profile/IPersonalProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/profile/IPersonalProfileService;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/profile/PersonalProfileManager;->mService:Lcom/sec/ims/profile/IPersonalProfileService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcom/sec/ims/profile/PersonalProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Disconnected to PersonalProfileService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
