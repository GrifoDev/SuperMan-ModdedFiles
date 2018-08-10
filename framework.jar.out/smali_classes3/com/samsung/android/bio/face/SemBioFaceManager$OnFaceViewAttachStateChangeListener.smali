.class Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFaceViewAttachStateChangeListener"
.end annotation


# static fields
.field static final VIEW_TYPE_AUTH:I = 0x1

.field static final VIEW_TYPE_ENROLL:I = 0x2


# instance fields
.field mAttr:Landroid/os/Bundle;

.field mData:[B

.field mFaceView:Landroid/view/View;

.field mFlag:I

.field mSessionId:J

.field mType:I

.field mUserId:I

.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    iput p4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    iput p5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    iput-wide p6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mSessionId:J

    iput-object p8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    iput-object p9, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "OnFaceViewAttachStateChangeListener : onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get5(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "SemBioFaceManager"

    const-string/jumbo v1, "OnFaceViewAttachStateChangeListener : onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public runCommand()V
    .locals 18

    const/4 v1, 0x2

    :try_start_0
    new-array v0, v1, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnFaceViewAttachStateChangeListener : runCommand : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v17, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v17, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get8(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get11(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x1

    aget v5, v17, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v10}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get10(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v12}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get2(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get9(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get8(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get11(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x1

    aget v5, v17, v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mSessionId:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mUserId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v11}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get10(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFlag:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v13}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get2(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mAttr:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mData:[B

    invoke-interface/range {v1 .. v15}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    const-string/jumbo v1, "SemBioFaceManager"

    const-string/jumbo v2, "Remote exception to call enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get4(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-get1(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
