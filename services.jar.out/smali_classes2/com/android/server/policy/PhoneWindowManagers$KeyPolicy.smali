.class public Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;
.super Ljava/lang/Object;
.source "PhoneWindowManagers$KeyPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->regReceiver()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->getTorchStatus()Z

    move-result v0

    return v0
.end method

.method private getTorchStatus()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "torch_light"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public regReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PhoneWindowManagers$KeyPolicy"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy$1;-><init>(Lcom/android/server/policy/PhoneWindowManagers$KeyPolicy;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
