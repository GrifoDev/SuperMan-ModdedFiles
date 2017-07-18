.class Lcom/android/incallui/InVideoCallMenu$1;
.super Ljava/lang/Object;
.source "InVideoCallMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InVideoCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const v5, 0x7f090201

    const v4, 0x7f0901df

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f090213

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_outGoingImagePreset()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$200(Lcom/android/incallui/InVideoCallMenu;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$300(Lcom/android/incallui/InVideoCallMenu;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f0902ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_OutgoingImageImage()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0, v3}, Lcom/android/incallui/InVideoCallMenu;->access$402(Lcom/android/incallui/InVideoCallMenu;Z)Z

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->requestPickImageToGallery()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f090202

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallUtils;->captureImage(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$100(Lcom/android/incallui/InVideoCallMenu;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$200(Lcom/android/incallui/InVideoCallMenu;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$000(Lcom/android/incallui/InVideoCallMenu;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v1, v1, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f090203

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_OutgoingImageVideo()V

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$1;->this$0:Lcom/android/incallui/InVideoCallMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/InVideoCallMenu;->access$402(Lcom/android/incallui/InVideoCallMenu;Z)Z

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->selectVideoFromMyFiles()V

    goto/16 :goto_0
.end method
