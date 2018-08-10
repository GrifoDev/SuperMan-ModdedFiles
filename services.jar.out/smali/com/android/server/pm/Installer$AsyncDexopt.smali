.class Lcom/android/server/pm/Installer$AsyncDexopt;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Lcom/android/server/pm/Installer$AsyncCmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDexopt"
.end annotation


# static fields
.field public static final MSG_HASHCODE:I = 0x1

.field public static final MSG_RESULT:I = 0x0

.field public static final MSG_TASK_SIZE:I = 0x2


# instance fields
.field private pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Landroid/content/pm/PackageParser$Package;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    return-void
.end method


# virtual methods
.method public processResult(I)V
    .locals 4

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_0

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    goto :goto_0
.end method
