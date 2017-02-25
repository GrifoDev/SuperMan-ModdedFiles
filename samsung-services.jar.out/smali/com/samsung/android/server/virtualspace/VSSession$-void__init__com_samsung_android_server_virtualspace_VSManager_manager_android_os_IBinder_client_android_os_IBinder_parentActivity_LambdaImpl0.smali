.class final synthetic Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;
.super Ljava/lang/Object;
.source "VSSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/samsung/android/server/virtualspace/VSSession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;->val$this:Lcom/samsung/android/server/virtualspace/VSSession;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession$-void__init__com_samsung_android_server_virtualspace_VSManager_manager_android_os_IBinder_client_android_os_IBinder_parentActivity_LambdaImpl0;->val$this:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSSession;->-com_samsung_android_server_virtualspace_VSSession_lambda$1()V

    return-void
.end method
