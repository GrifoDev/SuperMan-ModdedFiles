.class public Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;
.super Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoriesIterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$CategoriesIterGenerator;->this$1:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver$IterGenerator;-><init>(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)V

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
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
