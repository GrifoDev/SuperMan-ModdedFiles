.class Landroid/content/pm/LauncherApps$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackMessageHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
    }
.end annotation


# static fields
.field private static final MSG_ADDED:I = 0x1

.field private static final MSG_AVAILABLE:I = 0x4

.field private static final MSG_CHANGED:I = 0x3

.field private static final MSG_REMOVED:I = 0x2

.field private static final MSG_SHORTCUT_CHANGED:I = 0x8

.field private static final MSG_SUSPENDED:I = 0x6

.field private static final MSG_UNAVAILABLE:I = 0x5

.field private static final MSG_UNSUSPENDED:I = 0x7


# instance fields
.field private mCallback:Landroid/content/pm/LauncherApps$Callback;


# direct methods
.method static synthetic -get0(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p2, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    iget-boolean v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    iget-boolean v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps$Callback;->onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->mCallback:Landroid/content/pm/LauncherApps$Callback;

    iget-object v2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->shortcuts:Ljava/util/List;

    iget-object v4, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/LauncherApps$Callback;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public postOnPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postOnPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postOnPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postOnPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iput-boolean p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postOnPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postOnPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iput-boolean p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->replacing:Z

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postOnPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageNames:[Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postOnShortcutChanged(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V

    iput-object p1, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->packageName:Ljava/lang/String;

    iput-object p2, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->user:Landroid/os/UserHandle;

    iput-object p3, v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;->shortcuts:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
