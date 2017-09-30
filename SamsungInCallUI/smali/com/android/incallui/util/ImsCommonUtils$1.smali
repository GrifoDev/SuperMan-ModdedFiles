.class final Lcom/android/incallui/util/ImsCommonUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/incallui/util/ImsCommonUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/sec/ims/options/CapabilityManager;

    iget-object v1, p0, Lcom/android/incallui/util/ImsCommonUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->access$002(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager;

    return-void
.end method
