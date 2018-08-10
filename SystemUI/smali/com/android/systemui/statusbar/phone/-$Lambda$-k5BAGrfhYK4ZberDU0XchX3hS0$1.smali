.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lambda$-com_android_systemui_statusbar_phone_ConfigurationControllerImpl_1496(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
