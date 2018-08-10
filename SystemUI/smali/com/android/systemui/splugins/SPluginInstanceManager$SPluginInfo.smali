.class Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;
.super Ljava/lang/Object;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SPluginInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field mPackage:Ljava/lang/String;

.field mPlugin:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPluginContext:Landroid/content/Context;

.field private final mVersion:Lcom/android/systemui/splugins/SVersionInfo;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Lcom/android/systemui/splugins/SVersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mVersion:Lcom/android/systemui/splugins/SVersionInfo;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/splugins/SVersionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/splugins/SVersionInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mClass:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPluginContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mVersion:Lcom/android/systemui/splugins/SVersionInfo;

    return-void
.end method
