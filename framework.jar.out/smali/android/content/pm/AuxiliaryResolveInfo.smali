.class public final Landroid/content/pm/AuxiliaryResolveInfo;
.super Landroid/content/IntentFilter;
.source "AuxiliaryResolveInfo.java"


# instance fields
.field public final failureIntent:Landroid/content/Intent;

.field public final needsPhaseTwo:Z

.field public final packageName:Ljava/lang/String;

.field public final resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

.field public final splitName:Ljava/lang/String;

.field public final token:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Landroid/content/pm/InstantAppResolveInfo;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    iput-object p6, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    iput p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    return-void
.end method
