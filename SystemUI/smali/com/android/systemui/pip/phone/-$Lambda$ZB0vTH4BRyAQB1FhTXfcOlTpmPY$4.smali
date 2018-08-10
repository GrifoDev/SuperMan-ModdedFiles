.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;->-$f1:I

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;->-$f0:Z

    check-cast p1, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->lambda$-com_android_systemui_pip_phone_PipMenuActivityController_16409(IZLcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;->-$f1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
