.class public Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;->this$1:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ")",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
