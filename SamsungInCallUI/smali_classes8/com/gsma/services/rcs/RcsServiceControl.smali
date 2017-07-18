.class public Lcom/gsma/services/rcs/RcsServiceControl;
.super Ljava/lang/Object;
.source "RcsServiceControl.java"


# static fields
.field public static final RCS_STACK_PACKAGENAME:Ljava/lang/String; = "com.sec.imsservice"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/gsma/services/rcs/RcsServiceControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    sput-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/RcsServiceControl;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->sInstance:Lcom/gsma/services/rcs/RcsServiceControl;

    goto :goto_0
.end method


# virtual methods
.method public isActivated()Z
    .locals 2

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const-string v1, "ServiceActivated"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isActivationModeChangeable()Z
    .locals 2

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const-string v1, "ModeChangeable"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    const-string v1, "ServiceAvailable"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isServiceStarted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsGenericException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v0

    return v0
.end method

.method public setActivationMode(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsPermissionDeniedException;
        }
    .end annotation

    sget-object v4, Lcom/gsma/services/rcs/RcsServiceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "value"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ServiceActivated"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
