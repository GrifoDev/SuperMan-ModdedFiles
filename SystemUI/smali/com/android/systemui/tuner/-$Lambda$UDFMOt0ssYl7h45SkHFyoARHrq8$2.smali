.class final synthetic Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/PluginFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/preference/PreferenceScreen;

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/tuner/PluginFragment;->lambda$-com_android_systemui_tuner_PluginFragment_3913(Landroid/util/ArrayMap;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
