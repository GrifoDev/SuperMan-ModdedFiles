.class final Lcom/android/server/MmsServiceBroker$BinderService;
.super Lcom/android/internal/telephony/IMms$Stub;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# static fields
.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method private constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Lcom/android/internal/telephony/IMms$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$BinderService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method

.method private adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v6}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "com.android.phone"

    invoke-virtual {v6, v7, p1, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v6}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v6}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v7

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6, p1, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method


# virtual methods
.method public addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get0()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get2()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public archiveStoredConversation(Ljava/lang/String;JZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public deleteStoredConversation(Ljava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "MmsServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadMessage() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    const-string/jumbo v2, "Download MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "android.service.carrier.CarrierMessagingService"

    const/4 v1, 0x3

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p4

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public getAutoPersisting()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z

    move-result v0

    return v0
.end method

.method public getCarrierConfigValues(I)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "MmsServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCarrierConfigValues() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v2}, Lcom/android/server/MmsServiceBroker;->-wrap2(Lcom/android/server/MmsServiceBroker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get1()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/MmsServiceBroker;->-get3()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "MmsServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessage() by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.SEND_SMS"

    const-string/jumbo v2, "Send MMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "android.service.carrier.CarrierMessagingService"

    const/4 v1, 0x1

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setAutoPersisting(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
