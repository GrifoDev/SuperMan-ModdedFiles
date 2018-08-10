.class Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperKitKatImpl;
.super Ljava/lang/Object;
.source "LeanbackTransitionHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LeanbackTransitionHelperKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelperKitKat;->loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelperKitKat;->loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
