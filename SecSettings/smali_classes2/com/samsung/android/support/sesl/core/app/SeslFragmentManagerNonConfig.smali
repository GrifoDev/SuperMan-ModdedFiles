.class public Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "SeslFragmentManagerNonConfig.java"


# instance fields
.field private final mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->mFragments:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getChildNonConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object v0
.end method
