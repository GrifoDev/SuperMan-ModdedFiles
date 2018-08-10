.class final synthetic Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    iget-boolean v2, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;->-$f0:Z

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/ShortcutService;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$-com_android_server_pm_ShortcutUser_20370(ZLcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;->-$f0:Z

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$4;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
