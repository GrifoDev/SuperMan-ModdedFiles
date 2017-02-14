.class Lcom/android/server/audio/AudioService$EffectPolicy;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EffectPolicy"
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final EFFECTYPE_IDX:I = 0x1

.field private static final PACKAGE_IDX:I = 0x0

.field private static final PACKAGE_PROJECTION:[Ljava/lang/String;

.field private static final PACKAGE_TABLE:Ljava/lang/String; = "policy_item/audio"

.field private static final PACKAGE_URI:Landroid/net/Uri;

.field private static final PATH:Ljava/lang/String; = "/data/snd/effect_policy.conf"

.field private static final POLICY_VERSION_IDX:I = 0x1

.field private static final VERION_URI:Landroid/net/Uri;

.field private static final VERSION_PROJECTION:[Ljava/lang/String;

.field private static final VERSION_TABLE:Ljava/lang/String; = "policy_list"

.field private static final allEffectType:[Ljava/lang/String;


# instance fields
.field private effectType:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->VERION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->VERSION_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->allEffectType:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->VERION_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "policyName"

    aput-object v1, v0, v2

    const-string/jumbo v1, "policyVersion"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->VERSION_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item/audio"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "item"

    aput-object v1, v0, v2

    const-string/jumbo v1, "category"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->PACKAGE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "corefx_white"

    aput-object v1, v0, v2

    const-string/jumbo v1, "corefx_black"

    aput-object v1, v0, v3

    const-string/jumbo v1, "global_white"

    aput-object v1, v0, v4

    const-string/jumbo v1, "myspace_black"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "inapp_eng_white"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "inapp_white"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "extra1"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "extra2"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/audio/AudioService$EffectPolicy;->allEffectType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$EffectPolicy;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$EffectPolicy;->effectType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEffectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$EffectPolicy;->effectType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$EffectPolicy;->packageName:Ljava/lang/String;

    return-object v0
.end method
