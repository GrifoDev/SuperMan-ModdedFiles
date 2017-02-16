.class public Lcom/whitepages/nameid/NameIDHelper;
.super Ljava/lang/Object;
.source "NameIDHelper.java"


# static fields
.field public static final NAME_ID_CNAM_KEY:Ljava/lang/String; = "NAME_ID_CNAM_KEY"

.field public static final NAME_ID_CNAM_NOT_AVAILABLE_VALUE:Ljava/lang/String; = "cnam_not_available"

.field public static final NAME_ID_COMMUNICATION_TYPE_INCOMING_CALL:Ljava/lang/String; = "incall"

.field public static final NAME_ID_COMMUNICATION_TYPE_INCOMING_TEXT:Ljava/lang/String; = "intext"

.field public static final NAME_ID_COMMUNICATION_TYPE_OUTGOING_CALL:Ljava/lang/String; = "outcall"

.field public static final NAME_ID_COMMUNICATION_TYPE_OUTGOING_TEXT:Ljava/lang/String; = "outtext"

.field public static final NAME_ID_COMUNICATION_TYPE_KEY:Ljava/lang/String; = "NAME_ID_COMUNICATION_TYPE_KEY"

.field public static final NAME_ID_CONTACT_EXISTS_KEY:Ljava/lang/String; = "NAME_ID_CONTACT_EXISTS_KEY"

.field public static final NAME_ID_CONTACT_ID_KEY:Ljava/lang/String; = "NAME_ID_CONTACT_ID_KEY"

.field public static final NAME_ID_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile"

.field public static final NAME_ID_LOOKUP_SERVICE_ACTION:Ljava/lang/String; = "com.whitepages.nameid.LOOKUP_SERVICE"

.field public static final NAME_ID_LOOKUP_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.LookupService"

.field public static final NAME_ID_LOOKUP_SERVICE_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.LookupService"

.field public static final NAME_ID_PACKAGE_KEY:Ljava/lang/String; = "com.whitepages.nameid.NAME_ID_PACKAGE"

.field public static final NAME_ID_PHONE_KEY:Ljava/lang/String; = "NAME_ID_PHONE_KEY"

.field public static final NAME_ID_RESULT_CONTACT_NEW:I = 0x2

.field public static final NAME_ID_RESULT_CONTACT_OK:I = 0x1

.field public static final NAME_ID_RESULT_RECEIVER_KEY:Ljava/lang/String; = "NAME_ID_RESULT_RECEIVER_KEY"

.field public static final NAME_ID_RESULT_USE_PHONE:I = 0x3

.field private static final TRY_RECONNECT_AFTER_MILLIS:J = 0xea60L

.field private static final TRY_RECONNECT_BETWEEN_RETRIES_MILLIS:J = 0x3a98L

.field private static final TRY_RECONNECT_FOR_MILLIS:J = 0x927c0L

.field public static final mEnableWhitePagesConfig:Ljava/lang/String; = "CscFeature_Contact_SupportWhitePages"

.field private static s_connection:Landroid/content/ServiceConnection;

.field private static s_context:Landroid/content/Context;

.field private static s_handler:Landroid/os/Handler;

.field private static s_isBound:Z

.field private static s_service:Lcom/whitepages/nameid/ILookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sput-object v1, Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    .line 60
    sput-object v1, Lcom/whitepages/nameid/NameIDHelper;->s_connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000()Lcom/whitepages/nameid/ILookupService;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/whitepages/nameid/ILookupService;)Lcom/whitepages/nameid/ILookupService;
    .locals 0
    .param p0, "x0"    # Lcom/whitepages/nameid/ILookupService;

    .prologue
    .line 23
    sput-object p0, Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    return p0
.end method

.method static synthetic access$202(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "x0"    # Landroid/content/ServiceConnection;

    .prologue
    .line 23
    sput-object p0, Lcom/whitepages/nameid/NameIDHelper;->s_connection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$300(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/whitepages/nameid/NameIDHelper;->tryReconnect(J)V

    return-void
.end method

.method static synthetic access$400(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/whitepages/nameid/NameIDHelper;->tryReconnectUntil(J)V

    return-void
.end method

.method private static adjustOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sCnapName"    # Ljava/lang/String;

    .prologue
    .line 143
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 144
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 148
    :goto_0
    return-object p0

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    goto :goto_0
.end method

.method public static beautifyCnapName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sCnapName"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v1, "NameIDHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cnapName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; is bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_0
    return-object p0

    .line 132
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    if-eqz v1, :cond_1

    .line 133
    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;

    invoke-interface {v1, p0}, Lcom/whitepages/nameid/ILookupService;->beautifyCnapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->adjustOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/whitepages/nameid/NameIDHelper;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v1, "NameIDHelper"

    const-string v2, "Error calling beautifying cnam"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createLookupIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sPhone"    # Ljava/lang/String;
    .param p2, "sCnapName"    # Ljava/lang/String;
    .param p3, "contactId"    # J
    .param p5, "shouldHaveCnam"    # Z
    .param p6, "rr"    # Landroid/os/ResultReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    const-string v1, "NAME_ID_PHONE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    if-nez p5, :cond_0

    .line 172
    const-string p2, "cnam_not_available"

    .line 173
    :cond_0
    const-string v1, "NAME_ID_CNAM_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "NAME_ID_CONTACT_ID_KEY"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    const-string v2, "NAME_ID_COMUNICATION_TYPE_KEY"

    if-eqz p5, :cond_1

    const-string v1, "incall"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "NAME_ID_RESULT_RECEIVER_KEY"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    return-object v0

    .line 175
    :cond_1
    const-string v1, "outcall"

    goto :goto_0
.end method

.method public static createLookupIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZLandroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sPhone"    # Ljava/lang/String;
    .param p2, "sCnapName"    # Ljava/lang/String;
    .param p3, "contactId"    # J
    .param p5, "contactExists"    # Z
    .param p6, "shouldHaveCnam"    # Z
    .param p7, "rr"    # Landroid/os/ResultReceiver;

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    const-string v1, "NAME_ID_PHONE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    if-nez p6, :cond_0

    .line 189
    const-string p2, "cnam_not_available"

    .line 190
    :cond_0
    const-string v1, "NAME_ID_CNAM_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "NAME_ID_CONTACT_ID_KEY"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    const-string v1, "NAME_ID_CONTACT_EXISTS_KEY"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    const-string v2, "NAME_ID_COMUNICATION_TYPE_KEY"

    if-eqz p6, :cond_1

    const-string v1, "incall"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "NAME_ID_RESULT_RECEIVER_KEY"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    return-object v0

    .line 193
    :cond_1
    const-string v1, "outcall"

    goto :goto_0
.end method

.method private static getActivePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.whitepages.nameid.NAME_ID_PACKAGE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v0, "com.whitepages.nameid.tmobile"

    .line 252
    :cond_0
    return-object v0
.end method

.method private static getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 256
    const-string v0, "%s/com.whitepages.nameid.service.LookupService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-class v3, Lcom/whitepages/nameid/NameIDHelper;

    monitor-enter v3

    :try_start_0
    const-string v2, "NameIDHelper"

    const-string v4, "NameIDHelper static init called"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_connection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 66
    :cond_1
    :try_start_1
    sput-object p0, Lcom/whitepages/nameid/NameIDHelper;->s_context:Landroid/content/Context;

    .line 67
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_handler:Landroid/os/Handler;

    .line 68
    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/whitepages/nameid/NameIDHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Lcom/whitepages/nameid/NameIDHelper$1;

    invoke-direct {v2}, Lcom/whitepages/nameid/NameIDHelper$1;-><init>()V

    sput-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_connection:Landroid/content/ServiceConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 94
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_3
    const-string v2, "NameIDHelper"

    const-string v4, "Failed to bind to lookup service -- Name ID may be uninstalled"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isBound()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    return v0
.end method

.method public static isNameIDContact(J)Z
    .locals 4
    .param p0, "contactId"    # J

    .prologue
    .line 108
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    :try_start_0
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;

    invoke-interface {v1, p0, p1}, Lcom/whitepages/nameid/ILookupService;->isNameIDContact(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NameIDHelper"

    const-string v2, "Error calling isNameIDContact"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNameIDContact(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 118
    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v1, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/whitepages/nameid/ILookupService;->isNameIDContactByUriString(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NameIDHelper"

    const-string v2, "Error calling isNameIDContact"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNameIDInstalledAndEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 295
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 296
    const-string v5, "NameIDHelper"

    const-string v6, "PackageManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 299
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 300
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 301
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 303
    const-string v5, "NameIDHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got package info. enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NameIDHelper"

    const-string v6, "error trying to detect package -- we are probably not installed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 199
    const-string v3, "NameIDHelper"

    const-string v4, "startActivity called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/contact"

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    if-ne v3, v4, :cond_0

    sget-boolean v3, Lcom/whitepages/nameid/NameIDHelper;->s_isBound:Z

    if-nez v3, :cond_1

    .line 202
    :cond_0
    const-string v3, "NameIDHelper"

    const-string v4, "calling default startactivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NameIDHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    move-object v1, p1

    .line 213
    .local v1, "originalIntent":Landroid/content/Intent;
    new-instance v2, Lcom/whitepages/nameid/NameIDHelper$2;

    invoke-direct {v2, p1, p2, v1, p0}, Lcom/whitepages/nameid/NameIDHelper$2;-><init>(Landroid/content/Intent;Landroid/net/Uri;Landroid/content/Intent;Landroid/content/Context;)V

    .line 243
    .local v2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Intent;>;"
    const-string v3, "NameIDHelper"

    const-string v4, "about to execute task"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "givenString"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 161
    .end local p0    # "givenString":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 154
    .restart local p0    # "givenString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "arr":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 157
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 158
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v0, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static tryReconnect(J)V
    .locals 2
    .param p0, "delayMillis"    # J

    .prologue
    .line 261
    sget-object v0, Lcom/whitepages/nameid/NameIDHelper;->s_handler:Landroid/os/Handler;

    new-instance v1, Lcom/whitepages/nameid/NameIDHelper$3;

    invoke-direct {v1}, Lcom/whitepages/nameid/NameIDHelper$3;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    return-void
.end method

.method private static tryReconnectUntil(J)V
    .locals 6
    .param p0, "untilMillis"    # J

    .prologue
    .line 272
    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "NameIDHelper"

    const-string v3, "connected during retry cycle!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 278
    .local v0, "nowMillis":J
    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    .line 279
    const-string v2, "NameIDHelper"

    const-string v3, "Giving up on retries"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_1
    const-string v2, "NameIDHelper"

    const-string v3, "trying to reconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/whitepages/nameid/NameIDHelper;->init(Landroid/content/Context;)V

    .line 285
    sget-object v2, Lcom/whitepages/nameid/NameIDHelper;->s_handler:Landroid/os/Handler;

    new-instance v3, Lcom/whitepages/nameid/NameIDHelper$4;

    invoke-direct {v3, p0, p1}, Lcom/whitepages/nameid/NameIDHelper$4;-><init>(J)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
