.class final Lcom/android/server/pm/InstantAppResolver$1;
.super Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/EphemeralResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field final synthetic val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestObj:Landroid/content/pm/InstantAppRequest;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object p3, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iput-object p5, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iput-object p6, p0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onPhaseTwoResolved(Ljava/util/List;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/InstantAppResolver;->-wrap0(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v15

    if-eqz v15, :cond_0

    iget-object v2, v15, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v2, :cond_0

    iget-object v2, v15, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v15, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    iget-object v2, v15, Landroid/content/pm/AuxiliaryResolveInfo;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v11

    iget-object v4, v15, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    :goto_0
    const-string/jumbo v2, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v3, v3, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v5, v5, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v6, v6, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget-object v7, v7, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$requestObj:Landroid/content/pm/InstantAppRequest;

    iget v8, v8, Landroid/content/pm/InstantAppRequest;->userId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v14

    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$instantAppInstaller:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$token:Ljava/lang/String;

    if-eqz v9, :cond_2

    const/4 v2, 0x0

    :goto_1
    const/16 v5, 0x384

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1, v3, v2}, Lcom/android/server/pm/InstantAppResolver;->-wrap1(IJLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/InstantAppResolver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
