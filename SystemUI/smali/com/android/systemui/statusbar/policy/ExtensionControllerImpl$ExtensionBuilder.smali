.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_policy_ExtensionControllerImpl$ExtensionBuilder_3061(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;)I
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    instance-of v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    instance-of v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$TunerItem;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-get1(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    return-object v0
.end method

.method public withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-get0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addDefault(Ljava/util/function/Supplier;)V

    return-object p0
.end method

.method public withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:TT;>(",
            "Ljava/lang/Class",
            "<TP;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/systemui/plugins/PluginManager;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withPlugin(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:TT;>(",
            "Ljava/lang/Class",
            "<TP;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withPlugin(Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter",
            "<TT;TP;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addPlugin(Ljava/lang/String;Ljava/lang/Class;Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;)V

    return-object p0
.end method

.method public withTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;->keys()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->addTunerFactory(Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;[Ljava/lang/String;)V

    return-object p0
.end method
