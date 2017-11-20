.class public Lcom/android/contacts/common/vcard/NotificationImportExportListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;


# instance fields
.field private final a:Landroid/app/NotificationManager;

.field private final b:Landroid/app/Activity;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a:Landroid/app/NotificationManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->c:Landroid/os/Handler;

    return-void
.end method

.method static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "invalidscheme"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "invalidauthority"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "job_id"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "display_name"

    invoke-virtual {v0, v4, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v4, Landroid/support/v4/app/ac$d;

    invoke-direct {v4, p0}, Landroid/support/v4/app/ac$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/support/v4/app/ac$d;->a(Z)Landroid/support/v4/app/ac$d;

    move-result-object v5

    const/4 v0, -0x1

    if-ne p6, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, p6, p7, v0}, Landroid/support/v4/app/ac$d;->a(IIZ)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/ac$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/ac$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ac$d;->d(I)Landroid/support/v4/app/ac$d;

    move-result-object v5

    if-ne p1, v1, :cond_2

    const v0, 0x1080081

    :goto_1
    invoke-virtual {v5, v0}, Landroid/support/v4/app/ac$d;->a(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ac$d;

    if-lez p6, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v2, p7

    int-to-double v6, p6

    div-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v4/app/ac$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    :cond_0
    invoke-virtual {v4}, Landroid/support/v4/app/ac$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const v0, 0x1080088

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/app/ac$d;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ac$d;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->b(Z)Landroid/support/v4/app/ac$d;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->d(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ac$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ac$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ac$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 4

    new-instance v0, Landroid/support/v4/app/ac$d;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ac$d;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->b(Z)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->d(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    const v1, 0x1080082

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ac$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/ac$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {p0, v1, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ac$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p3, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/app/ac$d;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ac$d;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->b(Z)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->d(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    const v1, 0x7f09068e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ac$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ac$d;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v1, 0x7f0905a8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/contacts/common/vcard/CancelRequest;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p1, Lcom/android/contacts/common/vcard/CancelRequest;->a:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v1, 0x7f09058a

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/contacts/common/vcard/CancelRequest;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/android/contacts/common/vcard/ExportRequest;)V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v3, 0x7f09068b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    iget-object v1, p1, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v1, 0x7f090535

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->c:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const/4 v1, 0x2

    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v3, 0x7f09068f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v1, 0x7f0905a8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/contacts/common/vcard/ImportRequest;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/android/contacts/common/vcard/ImportRequest;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v2, 0x7f090690

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v5, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->c:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v2, 0x7f090692

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v2, 0x7f090691

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v1, 0x7f0905aa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/contacts/common/vcard/ImportRequest;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/c/e;II)V
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/android/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v3, 0x7f09061e

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-virtual {p3}, Lcom/android/c/e;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    const v2, 0x7f0905a9

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/android/c/e;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->d:Ljava/lang/String;

    move v4, p2

    move v6, p5

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->a:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    invoke-virtual {v1, v2, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->b:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2
.end method
