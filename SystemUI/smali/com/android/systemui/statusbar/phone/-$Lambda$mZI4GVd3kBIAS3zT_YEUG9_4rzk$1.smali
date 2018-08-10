.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$-com_android_systemui_statusbar_phone_KeyguardBottomAreaView_17360(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterfaceFromPlugin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$1;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
