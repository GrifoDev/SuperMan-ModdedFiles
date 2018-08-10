.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast p1, Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->lambda$-com_android_systemui_pip_phone_PipMediaController_9794(Ljava/util/List;Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$M-ZooI5stUmj1n2x6aQGdCZpBH4$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
