.class final Lcom/android/incallui/util/ImsCommonUtils$1;
.super Landroid/os/AsyncTask;
.source "ImsCommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/ImsCommonUtils;->connectCapabilityManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/incallui/util/ImsCommonUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 382
    new-instance v0, Lcom/sec/ims/options/CapabilityManager;

    iget-object v1, p0, Lcom/android/incallui/util/ImsCommonUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->access$002(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager;

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method
