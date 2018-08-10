.class final synthetic Lcom/android/systemui/car/-$Lambda$FzSWPoBmYhequhh86D4WD0hQurY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/car/-$Lambda$FzSWPoBmYhequhh86D4WD0hQurY;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/car/CarSystemUIFactory;->lambda$-com_android_systemui_car_CarSystemUIFactory_1311(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/car/-$Lambda$FzSWPoBmYhequhh86D4WD0hQurY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/car/-$Lambda$FzSWPoBmYhequhh86D4WD0hQurY;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
