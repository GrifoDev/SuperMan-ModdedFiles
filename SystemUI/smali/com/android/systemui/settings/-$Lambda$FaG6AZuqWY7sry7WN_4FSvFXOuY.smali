.class final synthetic Lcom/android/systemui/settings/-$Lambda$FaG6AZuqWY7sry7WN_4FSvFXOuY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/-$Lambda$FaG6AZuqWY7sry7WN_4FSvFXOuY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/settings/CurrentUserTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;->-com_android_systemui_settings_CurrentUserTracker-mthref-0(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/-$Lambda$FaG6AZuqWY7sry7WN_4FSvFXOuY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/-$Lambda$FaG6AZuqWY7sry7WN_4FSvFXOuY;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
