.class final Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->permissionRequest(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils$1;->val$pInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils$1;->val$pInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;->onPermissionDenied()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils$1;->val$pInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/PermissionInterface;->onPermissionGranted()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method
