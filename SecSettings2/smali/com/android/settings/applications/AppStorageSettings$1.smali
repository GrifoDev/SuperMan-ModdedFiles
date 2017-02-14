.class Lcom/android/settings/applications/AppStorageSettings$1;
.super Landroid/os/Handler;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppStorageSettings;->-wrap1(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object v1, v1, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings$1;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget v2, v2, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
