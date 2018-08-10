.class public Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.super Landroid/os/Binder;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_BLOCKED_KEY:Ljava/lang/String; = "cover_authentication_blocked"

.field private static final BLACKLIST_ROOT:Ljava/lang/String;

.field public static final BLACKLIST_SEPARATOR:Ljava/lang/String; = ","

.field private static final DBG:Z

.field public static final PUBKEY_BLACKLIST_KEY:Ljava/lang/String; = "cover_pubkey_blacklist"

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CertBlacklister"

.field private static mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

.field private static mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

.field private static mIsBlocked:Z


# direct methods
.method static synthetic -get0()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/saccessory_manager/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cover_pubkey_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->registerObservers(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;
    .locals 2

    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;

    const-string/jumbo v1, "cover_authentication_blocked"

    invoke-direct {v0, v1, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;
    .locals 4

    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    const-string/jumbo v1, "cover_pubkey_blacklist"

    const-string/jumbo v2, "pubkey"

    sget-object v3, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private registerObservers(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    const-string/jumbo v0, "cover_pubkey_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "cover_authentication_blocked"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public isAuthenticationBlocked()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mIsBlocked:Z

    return v0
.end method

.method public isThisKeyBlacklisted(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readFile()V
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->readFile()V

    return-void
.end method

.method public setCertBlacklistListener(Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;)V
    .locals 0

    sput-object p1, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    return-void
.end method
