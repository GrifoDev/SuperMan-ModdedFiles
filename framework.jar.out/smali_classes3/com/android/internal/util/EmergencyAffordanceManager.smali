.class public Lcom/android/internal/util/EmergencyAffordanceManager;
.super Ljava/lang/Object;
.source "EmergencyAffordanceManager.java"


# static fields
.field private static final EMERGENCY_CALL_NUMBER_SETTING:Ljava/lang/String; = "emergency_affordance_number"

.field public static final ENABLED:Z = true

.field private static final FORCE_EMERGENCY_AFFORDANCE_SETTING:Ljava/lang/String; = "force_emergency_affordance"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private forceShowing()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_emergency_affordance"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10401ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "emergency_affordance_number"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    const-string/jumbo v2, "tel"

    invoke-static {v2, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "emergency_affordance_needed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static performEmergencyCall(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public needsEmergencyAffordance()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->forceShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->isEmergencyAffordanceNeeded()Z

    move-result v0

    return v0
.end method

.method public final performEmergencyCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall(Landroid/content/Context;)V

    return-void
.end method
