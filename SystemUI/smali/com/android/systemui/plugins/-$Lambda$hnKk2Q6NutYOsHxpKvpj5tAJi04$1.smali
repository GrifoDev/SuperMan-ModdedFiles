.class final synthetic Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/VersionInfo;

    iget-object v1, p0, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/android/systemui/plugins/VersionInfo$Version;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/plugins/VersionInfo;->lambda$-com_android_systemui_plugins_VersionInfo_2940(Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/android/systemui/plugins/VersionInfo$Version;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04$1;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
